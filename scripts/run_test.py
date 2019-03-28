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
	
	def __init__(self, addr = 0xFF200000, size = 0x50):
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
		'a_in':  0x00,
		'b_in':  0x04,
		'o_out': 0x08,
	}
	
	def write_a(self, value):
		self.write(self.regs['a_in'], value)
	
	def write_b(self, value):
		self.write(self.regs['b_in'], value)

	def read_out(self):
		return (self.read(self.regs['o_out']))

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
wrap = adder(ax, 0x00100000)
pll_conf = pll(ax, 0x00110000)
# a = int(input('Input a: '))
# b = int(input('Input b: '))

# wrap.write_a(a)
# wrap.write_b(b)
for i in range(15):
	o = wrap.read_out()
	time.sleep(5)
	print('Out: {}.'.format(o))
