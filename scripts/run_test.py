#!/usr/bin/env python

import mmap
import struct
import time

# Generic AXI module class. Intended to be inherited by specific module classes
# James Davis, 2016

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
		
# AXI interface class
# James Davis, 2016

class axi:
	# actual offset is ff20 0000, but lowest address curerntly used it 10 0000.
	def __init__(self, addr = 0xFF300000, size = 0x10100):
		self.addr = addr
		self.size = size
		self.mem = open('/dev/mem', 'r+b')
		self.map = mmap.mmap(self.mem.fileno(), self.size, offset = self.addr)
		
	def __del__(self):
		self.map.close()
		self.mem.close()
		
	def read(self, addr):
		'Read 4 bytes from register at addr'
		# print ('read  addr: ' + hex(addr))
		self.map.seek(addr)
		return struct.unpack('<L', self.map.read(4))[0]
		
	def write(self, addr, data):
		'Write data as 4 bytes to register at addr'
		# print('write addr: ' + hex(addr) + ' data: ' + hex(data))
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

# -----main--------------------------------------------------------------------

ax = axi()
wrap = wrapper(ax, 0x00000000)
pll_conf = pll(ax, 0x00010000)

wrap.enable()
wrap.reset()
print('Running version   {}'.format(wrap.version()))
# fqs = [800, 533, 400, 320, 267, 229, 200, 178, 145, 123, 100, 76.2, 50.0]
fqs = range(100, 450, 50)
for fq in fqs:
	pll_fq = pll_conf.set(0, fq)
	print('PLL Configured to {:.2f}MHz'.format(pll_fq))
	
	wrap.reset()
	time.sleep(1)
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
#disable
wrap.disable()
