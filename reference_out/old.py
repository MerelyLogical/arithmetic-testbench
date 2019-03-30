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
	
	def __init__(self, addr = 0xFF300000, size = 0x50):
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

class adder(module):

	regs = {
		'a_in':  0x00,
		'b_in':  0x10,
		'o_out': 0x20,
	}
	
	def write_a(self, value):
		self.write(self.regs['a_in'], value)
	
	def write_b(self, value):
		self.write(self.regs['b_in'], value)

	def read_out(self):
		return (self.read(self.regs['o_out']))

# -----main--------------------------------------------------------------------

ax = axi()
ad = adder(ax, 0x00000000)
a = int(input('Input a: '))
b = int(input('Input b: '))

t1 = time.clock()
for x in range(1000):
	ad.write_a(a)
	ad.write_b(b)
	o = ad.read_out()
t2 = time.clock()
t1 = t2 - t1

print('FPGA: in {}s: a + b = {}'.format(t1, o))

t1 = time.clock()
for x in range(1000):
	o = a + b
t2 = time.clock()
t1 = t2 - t1

print('HPS: in {}s: a + b = {}'.format(t1, o))
