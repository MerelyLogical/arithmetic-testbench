# add wave -position end sim:/testbench/clk_tb
add wave -position end sim:/testbench/clk_dut
add wave -position end sim:/testbench/reset
add wave -position end sim:/testbench/enable
add wave -position end sim:/testbench/freeze
add wave -position end -radix unsigned sim:/testbench/o_data_ctr
add wave -position end -radix unsigned sim:/testbench/o_event_ctr
add wave -position end -radix hex sim:/testbench/o_drive_a
add wave -position end -radix hex sim:/testbench/o_drive_b
add wave -position end -radix hex sim:/testbench/i_dut_out
add wave -position end -radix hex sim:/testbench/rand_a
add wave -position end -radix hex sim:/testbench/rand_b
add wave -position end -radix hex sim:/testbench/drive_delayed_a
add wave -position end -radix hex sim:/testbench/drive_delayed_b
add wave -position end -radix hex sim:/testbench/mnt_event

restart -force

force sim:/testbench/clk_dut 1 0, 0 {25 ns} -r 50ns
force sim:/testbench/reset 1'b0 0
force sim:/testbench/enable 1'b0 0
force sim:/testbench/freeze 1'b0 0
run 25ns
force sim:/testbench/reset 1'b1 0
run 50ns
force sim:/testbench/reset 1'b0 0
force sim:/testbench/enable 1'b1 0
run 25ns
run 5000ns
