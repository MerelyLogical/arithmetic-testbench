#!/usr/bin/env python

# Class module and class axi provided by James Davis
# PLL class provided James and modified by Zifan

import mmap
import struct
import time

DEBUG = True

class module:

	def __init__(self, axi, addr):
		self.axi = axi
		self.addr = addr
		
	def read(self, addr):
		'Read 8 bytes from register at addr'
		return self.axi.read(self.addr + addr)
		
	def write(self, addr, data):
		'Write data as 4 bytes to register at addr'
		self.axi.write(self.addr + addr, data)

class axi:
	# actual offset is ff20 0000, but lowest address curerntly used it 10 0000.
	def __init__(self, addr = 0xFF300000, size = 0x10100):
		self.addr = addr
		self.size = size
		if not DEBUG:
			self.mem = open('/dev/mem', 'r+b')
			self.map = mmap.mmap(self.mem.fileno(), self.size, offset = self.addr)
		
	def __del__(self):
		if not DEBUG:
			self.map.close()
			self.mem.close()
		
	def read(self, addr):
		'Read 4 bytes from register at addr'
		if DEBUG:
			print ('read  addr: ' + hex(addr))
			return 0x1337
		else:
			self.map.seek(addr)
			return struct.unpack('<L', self.map.read(4))[0]

	def write(self, addr, data):
		'Write data as 4 bytes to register at addr'
		if DEBUG:
			print('write addr: ' + hex(addr) + ' data: ' + hex(data))
		else:
			self.map.seek(addr)
			self.map.write(struct.pack('<L', data))

class wrapper(module):

	regs = {
		'ctrl':      4*0x00,
		'sysver':    4*0x04,
		
		'fselect':   4*0x10,
		'fmanual_a': 4*0x14,
		'fmanual_b': 4*0x18,
		'fbitset_a': 4*0x1C,
		'fbitset_b': 4*0x20,
		'fbitclr_a': 4*0x24,
		'fbitclr_b': 4*0x28,
		'dutdelay':  4*0x2C,
		
		'data':      4*0x30,
		'error':     4*0x34,
		'maxacc':    4*0x38,
		'minacc':    4*0x3C
	}

	def reset(self):
		tmp = self.read(self.regs['ctrl'])
		self.write(self.regs['ctrl'], tmp | 0b0001)
		self.write(self.regs['ctrl'], tmp & 0b1110)

	def cleanreset(self):
		self.reset()
		self.disable()
		self.unfreeze()
		self.write(self.regs['fselect'], 0x00000000)
		self.write(self.regs['fmanual_a'], 0x00000000)
		self.write(self.regs['fmanual_b'], 0x00000000)
		self.write(self.regs['fbitset_a'], 0x00000000)
		self.write(self.regs['fbitset_b'], 0x00000000)
		self.write(self.regs['fbitclr_a'], 0x00000000)
		self.write(self.regs['fbitclr_b'], 0x00000000)
		self.reset()

	def enable(self):
		tmp = self.read(self.regs['ctrl'])
		self.write(self.regs['ctrl'], tmp | 0b0010)

	def disable(self):
		tmp = self.read(self.regs['ctrl'])
		self.write(self.regs['ctrl'], tmp & 0b1101)

	def freeze(self):
		tmp = self.read(self.regs['ctrl'])
		self.write(self.regs['ctrl'], tmp | 0b0100)

	def unfreeze(self):
		tmp = self.read(self.regs['ctrl'])
		self.write(self.regs['ctrl'], tmp & 0b1011)

	def version(self):
		return self.read(self.regs['sysver'])
		
class pll(module):

	regs = {
		'mode'  : 4*0x0,
		'status': 4*0x1,
		'start' : 4*0x2,
		'n'     : 4*0x3,
		'm'     : 4*0x4,
		'c'     : 4*0x5
	}
	
	def set(self, clk, freq):
		'Set clock output clk to closest possible frequency to freq (MHz). Returns the actual frequency set'
		self.write(self.regs['mode'], 1)                                                # Polling mode
		n_count = 2
		if n_count % 2 == 0:
			high_count = n_count/2
			low_count = n_count/2
			odd_division = 0
		else:
			high_count = n_count/2 + 1
			low_count = n_count/2
			odd_division = 1
		self.write(self.regs['n'], (odd_division << 17) + (high_count << 8) + low_count)
		stepsize = 50/n_count                                                           # 50 is the frequency of the reference input
		m_count = int(round(freq/float(stepsize)))
		if m_count % 2 == 0:
			high_count = m_count/2
			low_count = m_count/2
			odd_division = 0
		else:
			high_count = m_count/2 + 1
			low_count = m_count/2
			odd_division = 1
		self.write(self.regs['m'], (odd_division << 17) + (high_count << 8) + low_count)
		self.write(self.regs['c'], (clk << 18) + 0x10000)                               # disable c by setting c[16]
		self.write(self.regs['start'], 1)                                               # Start reconfiguration
		while self.read(self.regs['status']) != 0:                                      # Wait until done
			pass
		return m_count*stepsize

def printerr(msg):
	if msg == 'num':
		print('ERROR: Incorrect number of arguments.')
	elif msg == 'arg':
		print('ERROR: Invalid arguemnts.')
	elif msg == 'int':
		print('ERROR: Invalid number format.')
	elif msg == 'cmd':
		print('ERROR: Unknown command.')
	elif msg == 'mod':
		print('ERROR: Incorrect operating mode.')

def run_test(duration):
		wrap.enable()
		wrap.reset()
		time.sleep(duration/1000)
		wrap.freeze()

		data_ctr = wrap.read(wrap.regs['data'])
		print('data  counter     {}'.format(data_ctr))

		error_ctr = wrap.read(wrap.regs['error'])
		print('error counter     {}'.format(error_ctr))
		
		dutdelay = wrap.read(wrap.regs['dutdelay'])
		print('dut delay         {}'.format(dutdelay))
		if data_ctr != 0:
			print('error rate        {:.6f}'.format(error_ctr / float(data_ctr)))

		print('')
	
		wrap.unfreeze()
		wrap.disable()


# -----main--------------------------------------------------------------------

ax = axi()
wrap = wrapper(ax, 0x00000000)
pll_conf = pll(ax, 0x00010000)
current_mode = 'auto'

while True:
	cmdstr = raw_input(current_mode+'> ')
	cmd = cmdstr.split()
	verb = cmd[0]

	if verb == 'exit':
		break

	# detecting invalid commands
	if verb in ['reset', 'version']:
		if len(cmd) != 1:
			printerr('num')
			continue
	elif verb in ['freq', 'mode', 'run', 'dofile']:
		if len(cmd) != 2:
			printerr('num')
			continue
	elif verb in ['manual', 'bitset', 'bitclr']:
		if len(cmd) != 3:
			printerr('num')
			continue
		elif cmd[1] not in ['a', 'b']:
			printerr('arg')
			continue
		try:
			val = int(cmd[2], 16)
		except ValueError:
			printerr('int')
			continue
	else:
		printerr('cmd')
		continue

	if verb == 'reset':
		wrap.cleanreset()
		current_mode = 'auto'
		print('Reset complete')
	elif verb == 'version':
		print('Running version   {}'.format(wrap.version()))
	elif verb == 'freq':
		try:
			mhz = int(cmd[1])
			pll_fq = pll_conf.set(0, mhz)
			print('PLL Configured to {:.2f}MHz'.format(pll_fq))
		except ValueError:
			printerr('int')
	elif verb == 'mode':
		if cmd[1] == 'm':
			wrap.write(wrap.regs['fselect'], 1)
			current_mode = 'manual'
		elif cmd[1] == 'a':
			wrap.write(wrap.regs['fselect'], 0)
			current_mode = 'auto'
		else:
			printerr('arg')
	elif verb == 'manual':
		if current_mode == 'manual':
			if cmd[1] == 'a':
				val = int(cmd[2], 16)
				wrap.write(wrap.regs['fmanual_a'], val)
			elif cmd[1] == 'b':
				val = int(cmd[2], 16)
				wrap.write(wrap.regs['fmanual_b'], val)
			else:
				printerr('arg')
		else:
			printerr('mod')
	elif verb == 'bitset':
		if current_mode == 'auto':
			if cmd[1] == 'a':
				val = int(cmd[2], 16)
				wrap.write(wrap.regs['fbitset_a'], val)
			elif cmd[1] == 'b':
				val = int(cmd[2], 16)
				wrap.write(wrap.regs['fbitset_b'], val)
			else:
				printerr('arg')
		else:
			printerr('mod')
	elif verb == 'bitclr':
		if current_mode == 'auto':
			if cmd[1] == 'a':
				val = int(cmd[2], 16)
				wrap.write(wrap.regs['fbitclr_a'], val)
			elif cmd[1] == 'b':
				val = int(cmd[2], 16)
				wrap.write(wrap.regs['fbitclr_b'], val)
			else:
				printerr('arg')
		else:
			printerr('mod')
	elif verb == 'run':
		try:
			duration = int(cmd[1])
			run_test(duration)
		except ValueError:
			printerr('int')
	else:
		printerr('cmd')
