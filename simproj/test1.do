add wave -position end  sim:/test_wrapper/clk
add wave -position end  sim:/test_wrapper/clk_dut
add wave -position end -radix hex sim:/test_wrapper/slave_address
add wave -position end  sim:/test_wrapper/slave_read
add wave -position end  sim:/test_wrapper/slave_write
add wave -position end -radix hex sim:/test_wrapper/slave_writedata
add wave -position end -radix hex sim:/test_wrapper/slave_readdata
add wave -position end -radix hex sim:/test_wrapper/dut_a
add wave -position end -radix hex sim:/test_wrapper/dut_b
add wave -position end -radix hex sim:/test_wrapper/dut_s

force sim:/test_wrapper/clk 1 0, 0 {50 ns} -r 100
force sim:/test_wrapper/clk_dut 1 0, 0 {25 ns} -r 50
force sim:/test_wrapper/slave_address 4'b0000 0
force sim:/test_wrapper/slave_write 1'b1 0
force sim:/test_wrapper/slave_read 1'b0 0
force sim:/test_wrapper/slave_writedata 4'b0011 0
force sim:/test_wrapper/dut_s 32'b0 0
run 100ns
force sim:/test_wrapper/slave_writedata 4'b0010 0
run 200ns