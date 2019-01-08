#!/usr/bin/env python

import mmap
import struct

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
	
	def __init__(self, addr = 0xFF210000, size = 0x8):
		self.addr = addr
		self.size = size
		self.mem = open('/dev/mem', 'r+b')
		self.map = mmap.mmap(self.mem.fileno(), self.size, offset = self.add)
		
	def __del__(self):
		self.map.close()
		self.mem.close()
		
	def read(self, addr):
		'Read 1 bytes from register at addr'
		self.map.seek(addr)
		return struct.unpack('<L', self.map.read(1))[0]
		
	def write(self, addr, data):
		'Write data as 4 bytes to register at addr'
		self.map.seek(addr)
		self.map.write(struct.pack('<L', data))

class adder(module.module):

	regs = {
		'a_in': 8*0,
		'b_in': 8*1,
		'o_out': 8*2
	}
	def read_out(self):
		print (self.read(self.regs['o_out']))

