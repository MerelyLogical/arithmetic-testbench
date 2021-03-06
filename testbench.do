# add wave -position end sim:/testbench/clk_tb
add wave -position end sim:/testbench/clk_dut
add wave -position end sim:/testbench/reset
add wave -position end sim:/testbench/enable
add wave -position end sim:/testbench/freeze
add wave -position end sim:/testbench/i_fselect
add wave -position end -radix hex sim:/testbench/i_fmanual_a
add wave -position end -radix hex sim:/testbench/i_fmanual_b
add wave -position end -radix hex sim:/testbench/i_fbitset_a
add wave -position end -radix hex sim:/testbench/i_fbitset_b
add wave -position end -radix hex sim:/testbench/i_fbitclr_a
add wave -position end -radix hex sim:/testbench/i_fbitclr_b
add wave -position end -radix hex sim:/testbench/o_maxacc
add wave -position end -radix hex sim:/testbench/o_minacc

add wave -position end -radix unsigned sim:/testbench/o_data_ctr
add wave -position end -radix unsigned sim:/testbench/o_error_ctr
add wave -position end -radix hex sim:/testbench/o_dut_a
add wave -position end -radix hex sim:/testbench/o_dut_b
add wave -position end -radix hex sim:/testbench/i_dut_out
add wave -position end -radix hex sim:/testbench/rand_a
add wave -position end -radix hex sim:/testbench/rand_b
add wave -position end -radix hex sim:/testbench/drive_mon_a
add wave -position end -radix hex sim:/testbench/drive_mon_b
add wave -position end -radix hex sim:/testbench/mnt_diff

add wave -position end  sim:/testbench/u_monitor/dist_ctr
add wave -position end -radix hex sim:/testbench/u_monitor/sub_diff
add wave -position end -radix hex sim:/testbench/u_monitor/a
add wave -position end -radix hex sim:/testbench/u_monitor/b
add wave -position end -radix hex sim:/testbench/u_monitor/o_dut
add wave -position end -radix hex sim:/testbench/u_monitor/o_mon

restart -force

force sim:/testbench/clk_dut 1 0, 0 {1 ns} -r 2ns
force sim:/testbench/reset 1'b0 0
force sim:/testbench/enable 1'b0 0
force sim:/testbench/freeze 1'b0 0
force sim:/testbench/i_fselect 1'b0 0
force sim:/testbench/i_fmanual_a 32'h0 0
force sim:/testbench/i_fmanual_b 32'h0 0
force sim:/testbench/i_fbitset_a 32'h0 0
force sim:/testbench/i_fbitset_b 32'h0 0
force sim:/testbench/i_fbitclr_a 32'h0 0
force sim:/testbench/i_fbitclr_b 32'h0 0

run 1ns
force sim:/testbench/reset 1'b1 0
run 2ns
force sim:/testbench/reset 1'b0 0
force sim:/testbench/enable 1'b1 0
run 1ns
run 20ns

run 20ns
#force sim:/testbench/i_fbitset_a 32'h1 0
#force sim:/testbench/i_fbitset_b 32'h1 0
run 60ns


