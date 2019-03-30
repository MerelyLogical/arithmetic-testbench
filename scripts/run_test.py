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
		'Read 4 bytes from register at addr'
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
		'Read 1 bytes from register at addr'
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
		'i1': 4*0x00,
		'i2': 4*0x04,
		'o1': 4*0x08,
		'o2': 4*0x0C,
		'o3': 4*0x10,
	}

	def reset(self):
		self.write(self.regs['i1'], 0x00000001)
		wrap.write(self.regs['i1'], 0x00000000)

	def enable(self):
		self.write(self.regs['i2'], 0x00000001)

	def disable(self):
		self.write(self.regs['i2'], 0x00000000)
		
class pll(module):

	regs = {
		'mode'  : 4*0x0,
		'status': 4*0x1,
		'start' : 4*0x2,
		'm'     : 4*0x4,
		'c'     : 4*0x5
	}
	
	def set(self, clk, freq):
		'Set clock output clk to closest possible frequency to freq (MHz). Returns the actual frequency set'
		self.write(self.regs['mode'], 1)													# Polling mode	
		self.write(self.regs['m'], 0x2020)													# Set high_count(m) = low_count(m) = 32
		c_count = int(round(float(1600)/freq))												# Set c_count to 1600/freq
		if c_count % 2 == 0:																# Divide into high_count(c) and low_count(c). high_count = low_count => even division
			high_count = c_count/2
			low_count = c_count/2
			division = 0
		else:																				# high_count != low_count => high_count = low_count + 1, odd division
			high_count = c_count/2 + 1
			low_count = c_count/2
			division = 1
		self.write(self.regs['c'], (clk << 18) + (division << 17) + (high_count << 8) + low_count)
		self.write(self.regs['start'], 1)													# Start reconfiguration
		while self.read(self.regs['status']) != 0:											# Wait until done
			pass
		return float(1600)/c_count

# -----main--------------------------------------------------------------------

ax = axi()
# 10 0000
wrap = wrapper(ax, 0x00000000)
# 11 0000
pll_conf = pll(ax, 0x00010000)
# a = int(input('Input a: '))
# b = int(input('Input b: '))

# enable
wrap.reset()
wrap.enable()

for i in range(10):
	wrap.reset()
	
	o = pll_conf.set(0, 50 + 10*i)
	print('PLL Configured to {:.2f}MHz'.format(o))

	o = wrap.read(wrap.regs['o1'])
	print('data_ctr        = {}'.format(o))
	
	o = wrap.read(wrap.regs['o2'])
	print('event_ctr       = {}'.format(o))
	
	o = wrap.read(wrap.regs['o3'])
	print('rand_a          = {}'.format(o))

	time.sleep(1)

#disable
wrap.disable()
