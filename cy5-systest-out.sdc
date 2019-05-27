## Generated SDC file "cy5-systest-out.sdc"

## Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, the Altera Quartus Prime License Agreement,
## the Altera MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Altera and sold by Altera or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 16.0.0 Build 211 04/27/2016 SJ Standard Edition"

## DATE    "Mon May 27 21:06:53 2019"

##
## DEVICE  "5CSXFC6D6F31C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {altera_reserved_tck} -period 33.333 -waveform { 0.000 16.666 } [get_ports {altera_reserved_tck}]
create_clock -name {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk} -period 2.500 -waveform { 1.875 3.125 } [get_registers {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk}]
create_clock -name {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} -period 2.500 -waveform { 0.000 1.250 } [get_registers {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}]
create_clock -name {hps_memory_mem_dqs[0]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {hps_memory_mem_dqs[0]}] -add
create_clock -name {hps_memory_mem_dqs[1]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {hps_memory_mem_dqs[1]}] -add
create_clock -name {hps_memory_mem_dqs[2]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {hps_memory_mem_dqs[2]}] -add
create_clock -name {hps_memory_mem_dqs[3]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {hps_memory_mem_dqs[3]}] -add
create_clock -name {hps_memory_mem_dqs[4]_IN} -period 2.500 -waveform { 0.000 1.250 } [get_ports {hps_memory_mem_dqs[4]}] -add
create_clock -name {fpga_clk_50} -period 20.000 -waveform { 0.000 10.000 } [get_ports {fpga_clk_50}]
create_clock -name {clk_dut} -period 2.000 -waveform { 0.000 1.000 } [get_nets {soc_inst|pll_dut|altera_pll_i|cyclonev_pll|divclk[0]}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock} -source [get_registers {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_registers {soc_inst|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[*].ubidir_dq_dqs|altdq_dqs2_inst|dqs_enable_ctrl~DQSENABLEOUT_DFF}] 
create_generated_clock -name {hps_memory_mem_ck} -source [get_registers {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {hps_memory_mem_ck}] 
create_generated_clock -name {hps_memory_mem_ck_n} -source [get_registers {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} -invert [get_ports {hps_memory_mem_ck_n}] 
create_generated_clock -name {hps_memory_mem_dqs[0]_OUT} -source [get_registers {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {hps_memory_mem_dqs[0]}] -add
create_generated_clock -name {hps_memory_mem_dqs[1]_OUT} -source [get_registers {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {hps_memory_mem_dqs[1]}] -add
create_generated_clock -name {hps_memory_mem_dqs[2]_OUT} -source [get_registers {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {hps_memory_mem_dqs[2]}] -add
create_generated_clock -name {hps_memory_mem_dqs[3]_OUT} -source [get_registers {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {hps_memory_mem_dqs[3]}] -add
create_generated_clock -name {hps_memory_mem_dqs[4]_OUT} -source [get_registers {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {hps_memory_mem_dqs[4]}] -add
create_generated_clock -name {hps_memory_mem_dqs_n[0]_OUT} -source [get_registers {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {hps_memory_mem_dqs_n[0]}] 
create_generated_clock -name {hps_memory_mem_dqs_n[1]_OUT} -source [get_registers {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {hps_memory_mem_dqs_n[1]}] 
create_generated_clock -name {hps_memory_mem_dqs_n[2]_OUT} -source [get_registers {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {hps_memory_mem_dqs_n[2]}] 
create_generated_clock -name {hps_memory_mem_dqs_n[3]_OUT} -source [get_registers {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {hps_memory_mem_dqs_n[3]}] 
create_generated_clock -name {hps_memory_mem_dqs_n[4]_OUT} -source [get_registers {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {hps_memory_mem_dqs_n[4]}] 
create_generated_clock -name {soc_inst|pll_dut|altera_pll_i|cyclonev_pll|fpll_0|fpll|vcoph[0]} -source [get_pins {soc_inst|pll_dut|altera_pll_i|cyclonev_pll|fpll_0|fpll|refclkin}] -duty_cycle 50/1 -multiply_by 20 -divide_by 2 -master_clock {fpga_clk_50} [get_pins {soc_inst|pll_dut|altera_pll_i|cyclonev_pll|fpll_0|fpll|vcoph[0]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[4]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[4]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[4]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[4]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs_n[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_OUT}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[4]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[3]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[1]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[2]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -rise_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_dqs[0]_IN}] -fall_to [get_clocks {altera_reserved_tck}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck_n}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {hps_memory_mem_ck}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.000  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_ck_n}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {hps_memory_mem_ck}]  0.226  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060  
set_clock_uncertainty -rise_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060  
set_clock_uncertainty -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.260  
set_clock_uncertainty -fall_from [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.260  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -rise_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -rise_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -setup 0.310  
set_clock_uncertainty -fall_from [get_clocks {altera_reserved_tck}] -fall_to [get_clocks {altera_reserved_tck}] -hold 0.270  
set_clock_uncertainty -rise_from [get_clocks {clk_dut}] -rise_to [get_clocks {clk_dut}]  0.060  
set_clock_uncertainty -rise_from [get_clocks {clk_dut}] -fall_to [get_clocks {clk_dut}]  0.060  
set_clock_uncertainty -fall_from [get_clocks {clk_dut}] -rise_to [get_clocks {clk_dut}]  0.060  
set_clock_uncertainty -fall_from [get_clocks {clk_dut}] -fall_to [get_clocks {clk_dut}]  0.060  
set_clock_uncertainty -rise_from [get_clocks {fpga_clk_50}] -rise_to [get_clocks {fpga_clk_50}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {fpga_clk_50}] -rise_to [get_clocks {fpga_clk_50}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {fpga_clk_50}] -fall_to [get_clocks {fpga_clk_50}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {fpga_clk_50}] -fall_to [get_clocks {fpga_clk_50}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {fpga_clk_50}] -rise_to [get_clocks {fpga_clk_50}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {fpga_clk_50}] -rise_to [get_clocks {fpga_clk_50}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {fpga_clk_50}] -fall_to [get_clocks {fpga_clk_50}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {fpga_clk_50}] -fall_to [get_clocks {fpga_clk_50}] -hold 0.060  


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.133 [get_ports {hps_memory_mem_dq[0]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[0]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.133 [get_ports {hps_memory_mem_dq[1]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[1]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.133 [get_ports {hps_memory_mem_dq[2]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[2]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.133 [get_ports {hps_memory_mem_dq[3]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[3]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.133 [get_ports {hps_memory_mem_dq[4]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[4]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.133 [get_ports {hps_memory_mem_dq[5]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[5]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.133 [get_ports {hps_memory_mem_dq[6]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[6]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  0.133 [get_ports {hps_memory_mem_dq[7]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[7]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.133 [get_ports {hps_memory_mem_dq[8]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[8]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.133 [get_ports {hps_memory_mem_dq[9]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[9]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.133 [get_ports {hps_memory_mem_dq[10]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[10]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.133 [get_ports {hps_memory_mem_dq[11]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[11]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.133 [get_ports {hps_memory_mem_dq[12]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[12]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.133 [get_ports {hps_memory_mem_dq[13]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[13]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.133 [get_ports {hps_memory_mem_dq[14]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[14]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  0.133 [get_ports {hps_memory_mem_dq[15]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[15]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.133 [get_ports {hps_memory_mem_dq[16]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[16]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.133 [get_ports {hps_memory_mem_dq[17]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[17]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.133 [get_ports {hps_memory_mem_dq[18]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[18]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.133 [get_ports {hps_memory_mem_dq[19]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[19]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.133 [get_ports {hps_memory_mem_dq[20]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[20]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.133 [get_ports {hps_memory_mem_dq[21]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[21]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.133 [get_ports {hps_memory_mem_dq[22]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[22]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  0.133 [get_ports {hps_memory_mem_dq[23]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[23]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.133 [get_ports {hps_memory_mem_dq[24]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[24]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.133 [get_ports {hps_memory_mem_dq[25]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[25]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.133 [get_ports {hps_memory_mem_dq[26]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[26]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.133 [get_ports {hps_memory_mem_dq[27]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[27]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.133 [get_ports {hps_memory_mem_dq[28]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[28]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.133 [get_ports {hps_memory_mem_dq[29]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[29]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.133 [get_ports {hps_memory_mem_dq[30]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[30]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  0.133 [get_ports {hps_memory_mem_dq[31]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[31]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.133 [get_ports {hps_memory_mem_dq[32]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[32]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.133 [get_ports {hps_memory_mem_dq[33]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[33]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.133 [get_ports {hps_memory_mem_dq[34]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[34]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.133 [get_ports {hps_memory_mem_dq[35]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[35]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.133 [get_ports {hps_memory_mem_dq[36]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[36]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.133 [get_ports {hps_memory_mem_dq[37]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[37]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.133 [get_ports {hps_memory_mem_dq[38]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[38]}]
set_input_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  0.133 [get_ports {hps_memory_mem_dq[39]}]
set_input_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_IN}]  -0.265 [get_ports {hps_memory_mem_dq[39]}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_a[0]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_a[0]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_a[1]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_a[1]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_a[2]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_a[2]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_a[3]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_a[3]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_a[4]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_a[4]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_a[5]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_a[5]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_a[6]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_a[6]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_a[7]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_a[7]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_a[8]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_a[8]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_a[9]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_a[9]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_a[10]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_a[10]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_a[11]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_a[11]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_a[12]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_a[12]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_a[13]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_a[13]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_a[14]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_a[14]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_ba[0]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_ba[0]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_ba[1]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_ba[1]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_ba[2]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_ba[2]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_cas_n}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_cas_n}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_cke}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_cke}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_cs_n}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_cs_n}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dm[0]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dm[0]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dm[0]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dm[0]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dm[1]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dm[1]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dm[1]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dm[1]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dm[2]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dm[2]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dm[2]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dm[2]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dm[3]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dm[3]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dm[3]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dm[3]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dm[4]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dm[4]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dm[4]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dm[4]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[0]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[0]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[0]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[0]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[1]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[1]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[1]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[1]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[2]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[2]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[2]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[2]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[3]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[3]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[3]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[3]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[4]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[4]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[4]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[4]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[5]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[5]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[5]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[5]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[6]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[6]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[6]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[6]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[7]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[7]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[7]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[0]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[7]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[8]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[8]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[8]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[8]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[9]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[9]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[9]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[9]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[10]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[10]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[10]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[10]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[11]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[11]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[11]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[11]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[12]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[12]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[12]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[12]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[13]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[13]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[13]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[13]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[14]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[14]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[14]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[14]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[15]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[15]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[15]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[1]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[15]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[16]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[16]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[16]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[16]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[17]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[17]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[17]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[17]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[18]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[18]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[18]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[18]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[19]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[19]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[19]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[19]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[20]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[20]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[20]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[20]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[21]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[21]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[21]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[21]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[22]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[22]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[22]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[22]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[23]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[23]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[23]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[2]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[23]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[24]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[24]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[24]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[24]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[25]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[25]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[25]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[25]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[26]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[26]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[26]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[26]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[27]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[27]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[27]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[27]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[28]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[28]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[28]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[28]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[29]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[29]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[29]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[29]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[30]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[30]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[30]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[30]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[31]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[31]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[31]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[3]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[31]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[32]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[32]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[32]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[32]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[33]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[33]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[33]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[33]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[34]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[34]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[34]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[34]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[35]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[35]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[35]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[35]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[36]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[36]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[36]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[36]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[37]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[37]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[37]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[37]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[38]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[38]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[38]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[38]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[39]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs_n[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[39]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  0.321 [get_ports {hps_memory_mem_dq[39]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_dqs[4]_OUT}]  -0.302 [get_ports {hps_memory_mem_dq[39]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.598 [get_ports {hps_memory_mem_dqs[0]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  0.903 [get_ports {hps_memory_mem_dqs[0]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.598 [get_ports {hps_memory_mem_dqs[1]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  0.903 [get_ports {hps_memory_mem_dqs[1]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.598 [get_ports {hps_memory_mem_dqs[2]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  0.903 [get_ports {hps_memory_mem_dqs[2]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.598 [get_ports {hps_memory_mem_dqs[3]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  0.903 [get_ports {hps_memory_mem_dqs[3]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.598 [get_ports {hps_memory_mem_dqs[4]}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  0.903 [get_ports {hps_memory_mem_dqs[4]}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_odt}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_odt}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_ras_n}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_ras_n}]
set_output_delay -add_delay -max -clock [get_clocks {hps_memory_mem_ck}]  1.590 [get_ports {hps_memory_mem_we_n}]
set_output_delay -add_delay -min -clock [get_clocks {hps_memory_mem_ck}]  1.010 [get_ports {hps_memory_mem_we_n}]


#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -asynchronous -group [get_clocks {altera_reserved_tck}] 
set_clock_groups -physically_exclusive -group [get_clocks {hps_memory_mem_dqs[0]_IN}] -group [get_clocks {hps_memory_mem_dqs[0]_OUT hps_memory_mem_dqs_n[0]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {hps_memory_mem_dqs[1]_IN}] -group [get_clocks {hps_memory_mem_dqs[1]_OUT hps_memory_mem_dqs_n[1]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {hps_memory_mem_dqs[2]_IN}] -group [get_clocks {hps_memory_mem_dqs[2]_OUT hps_memory_mem_dqs_n[2]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {hps_memory_mem_dqs[3]_IN}] -group [get_clocks {hps_memory_mem_dqs[3]_OUT hps_memory_mem_dqs_n[3]_OUT}] 
set_clock_groups -physically_exclusive -group [get_clocks {hps_memory_mem_dqs[4]_IN}] -group [get_clocks {hps_memory_mem_dqs[4]_OUT hps_memory_mem_dqs_n[4]_OUT}] 


#**************************************************************
# Set False Path
#**************************************************************

set_false_path  -fall_from  [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  -to  [get_clocks {hps_memory_mem_ck}]
set_false_path  -from  [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  -to  [get_clocks {*_IN}]
set_false_path  -from  [get_clocks *]  -to  [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]
set_false_path  -from  [get_clocks {fpga_clk_50}]  -to  [get_clocks {clk_dut}]
set_false_path  -from  [get_clocks {clk_dut}]  -to  [get_clocks {fpga_clk_50}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|jupdate}] -to [get_registers {*|alt_jtag_atlantic:*|jupdate1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rdata[*]}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read}] -to [get_registers {*|alt_jtag_atlantic:*|read1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|read_req}] 
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|rvalid}] -to [get_registers {*|alt_jtag_atlantic*|td_shift[*]}]
set_false_path -from [get_registers {*|t_dav}] -to [get_registers {*|alt_jtag_atlantic:*|tck_t_dav}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|user_saw_rvalid}] -to [get_registers {*|alt_jtag_atlantic:*|rvalid0*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|wdata[*]}] -to [get_registers *]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write}] -to [get_registers {*|alt_jtag_atlantic:*|write1*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_ena*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_stalled}] -to [get_registers {*|alt_jtag_atlantic:*|t_pause*}]
set_false_path -from [get_registers {*|alt_jtag_atlantic:*|write_valid}] 
set_false_path -to [get_keepers {*altera_std_synchronizer:*|din_s1}]
set_false_path -to [get_pins -nocase -compatibility_mode {*|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain*|clrn}]
set_false_path -fall_from [get_clocks {soc_system:soc_inst|soc_system_hps_0:hps_0|soc_system_hps_0_hps_io:hps_io|soc_system_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -to [get_ports {{hps_memory_mem_a[0]} {hps_memory_mem_a[10]} {hps_memory_mem_a[11]} {hps_memory_mem_a[12]} {hps_memory_mem_a[13]} {hps_memory_mem_a[14]} {hps_memory_mem_a[1]} {hps_memory_mem_a[2]} {hps_memory_mem_a[3]} {hps_memory_mem_a[4]} {hps_memory_mem_a[5]} {hps_memory_mem_a[6]} {hps_memory_mem_a[7]} {hps_memory_mem_a[8]} {hps_memory_mem_a[9]} {hps_memory_mem_ba[0]} {hps_memory_mem_ba[1]} {hps_memory_mem_ba[2]} hps_memory_mem_cas_n hps_memory_mem_cke hps_memory_mem_cs_n hps_memory_mem_odt hps_memory_mem_ras_n hps_memory_mem_we_n}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*ddio_out*}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_DFF}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_DFF}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*vfifo~INC_WR_PTR_DFF}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|vfifo~QVLD_IN_DFF}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_OUT_RDATA_VALID_DFF}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|vfifo~QVLD_IN_DFF}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~RD_LATENCY_DFF*}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*ddio_out*}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*altdq_dqs2_inst|*output_path_gen[*].ddio_out*}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*altdq_dqs2_inst|extra_output_pad_gen[*].ddio_out*}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*phase_align_os~DFF*}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|*read_fifo~OUTPUT_DFF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -to [get_ports {hps_memory_mem_dqs_n[0]}]
set_false_path -to [get_ports {hps_memory_mem_dqs_n[1]}]
set_false_path -to [get_ports {hps_memory_mem_dqs_n[2]}]
set_false_path -to [get_ports {hps_memory_mem_dqs_n[3]}]
set_false_path -to [get_ports {hps_memory_mem_dqs_n[4]}]
set_false_path -to [get_ports {hps_memory_mem_ck}]
set_false_path -to [get_ports {hps_memory_mem_ck_n}]
set_false_path -to [get_ports {hps_memory_mem_reset_n}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {hps_memory_mem_dqs[0]_OUT}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {hps_memory_mem_dqs[1]_OUT}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {hps_memory_mem_dqs[2]_OUT}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {hps_memory_mem_dqs[3]_OUT}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {hps_memory_mem_dqs[4]_OUT}]
set_false_path -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|dqs_enable_ctrl~*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|dqs_delay_chain~POSTAMBLE_DFF}]
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3768}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3769}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3770}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3771}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3773}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3774}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3775}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3776}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3778}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3779}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3780}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3781}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3783}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3784}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3785}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3786}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3790}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3792}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3793}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3795}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3796}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3797}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3798}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3799}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3800}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3802}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3803}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3805}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3806}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3808}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3809}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3811}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3812}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3813}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3815}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3816}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3817}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3818}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3820}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3821}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3822}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3823}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3830}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3831}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3832}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3834}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3835}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_3837}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_4494}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_4495}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_4496}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_4497}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_4498}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_4499}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_4500}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_4501}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_4502}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_4503}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_4504}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_4505}] 
set_false_path -from [get_registers {*fpga_interfaces|f2sdram~FF_4506}] 
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_1054}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_1055}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_1056}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_1057}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_1118}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_1119}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_1120}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_1121}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_3405}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_3408}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_3409}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_3410}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_3414}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_3417}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_3418}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_3419}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_798}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_799}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_800}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_801}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_862}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_863}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_864}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_865}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_926}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_927}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_928}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_929}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_990}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_991}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_992}]
set_false_path -to [get_registers {*fpga_interfaces|f2sdram~FF_993}]
set_false_path -from [get_registers {*altera_jtag_src_crosser:*|sink_data_buffer*}] -to [get_registers {*altera_jtag_src_crosser:*|src_data*}]


#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -setup -end -from  [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  -to  [get_clocks *] 2
set_multicycle_path -hold -end -from  [get_clocks {soc_inst|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  -to  [get_clocks *] 2
set_multicycle_path -setup -end -to [get_registers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*clock_gen[*].umem_ck_pad|*}] 4
set_multicycle_path -hold -end -to [get_registers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*clock_gen[*].umem_ck_pad|*}] 4
set_multicycle_path -setup -end -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_FULL_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_FULL_DFF}] 1
set_multicycle_path -setup -end -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|*read_fifo~READ_ADDRESS_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|*read_fifo~READ_ADDRESS_DFF}] 1


#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_ports {hps_memory_mem_dq[0]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[1]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[2]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[3]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[4]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[5]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[6]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[7]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[8]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[9]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[10]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[11]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[12]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[13]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[14]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[15]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[16]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[17]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[18]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[19]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[20]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[21]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[22]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[23]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[24]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[25]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[26]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[27]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[28]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[29]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[30]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[31]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[32]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[33]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[34]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[35]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[36]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[37]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[38]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {hps_memory_mem_dq[39]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000


#**************************************************************
# Set Minimum Delay
#**************************************************************

set_min_delay -from [get_ports {hps_memory_mem_dq[0]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[1]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[2]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[3]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[4]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[5]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[6]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[7]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[8]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[9]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[10]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[11]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[12]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[13]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[14]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[15]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[16]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[17]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[18]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[19]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[20]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[21]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[22]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[23]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[24]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[25]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[26]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[27]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[28]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[29]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[30]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[31]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[32]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[33]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[34]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[35]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[36]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[37]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[38]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250
set_min_delay -from [get_ports {hps_memory_mem_dq[39]}] -to [get_keepers {{*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:soc_inst|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.250


#**************************************************************
# Set Input Transition
#**************************************************************

