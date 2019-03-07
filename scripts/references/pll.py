#!/usr/bin/python

# PLL controller for Altera Cyclone V
# James Davis, 2016

import module

class pll(module.module):

	regs = {
		'mode': 4*0x0,
		'status': 4*0x1,
		'start': 4*0x2,
		'm': 4*0x4,
		'c': 4*0x5
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
	