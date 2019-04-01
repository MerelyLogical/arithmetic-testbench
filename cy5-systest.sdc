# Net name and period of input clock
set input_clk "fpga_clk_50"
set input_clk_pin $input_clk
set input_clk_period 20

# Net and pin (origin of net) of PLL-derived clock
set clk_tb "clk_tb"
set clk_tb_pin "soc_inst|pll_tb|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk"
set clk_dut "clk_dut"
set clk_dut_pin "soc_inst|pll_dut|altera_pll_i|cyclonev_pll|counter[0].output_counter|divclk"
# soc_inst|test_wrapper_0|u_monitor|half_clk

create_clock -period $input_clk_period -name $input_clk [get_ports $input_clk_pin]

derive_pll_clocks
# create_clock -add -period [get_clock_info -period [get_clocks $clk_tb_pin]] -name $clk_tb [get_net_info -name [get_pin_info -net $clk_tb_pin]]
create_clock -add -period [get_clock_info -period [get_clocks $clk_dut_pin]] -name $clk_dut [get_net_info -name [get_pin_info -net $clk_dut_pin]]

remove_clock $clk_tb_pin
remove_clock $clk_dut_pin

set_false_path -from [get_clocks $input_clk] -to [get_clocks $clk_tb]
set_false_path -from [get_clocks $clk_tb] -to [get_clocks $input_clk]
set_false_path -from [get_clocks $input_clk] -to [get_clocks $clk_dut]
set_false_path -from [get_clocks $clk_dut] -to [get_clocks $input_clk]