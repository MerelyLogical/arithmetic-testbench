# Net name and period of input clock
set input_clk "fpga_clk_50"
set input_clk_pin $input_clk
set input_clk_period 20

# Net and pin (origin of net) of PLL-derived clock
# set clk_tb "clk_tb"
# set clk_tb_pin "soc_inst|pll_tb|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk"
set clk_dut "clk_dut"
# set clk_vcoph "clk_vcoph"
set clk_dist0 "clk_dist0"
set clk_dist1 "clk_dist1"

set clk_dut_pin "soc_inst|pll_dut|altera_pll_i|cyclonev_pll|counter[0].output_counter|divclk"
# set clk_vcoph_pin "soc_inst|pll_dut|altera_pll_i|cyclonev_pll|fpll_0|fpll|vcoph[0]|"
# set clk_dist0_pin "soc_inst|test_wrapper|u_testbench|u_monitor|dist_ctr_delayed[0]"
# set clk_dist1_pin "soc_inst|test_wrapper|u_testbench|u_monitor|dist_ctr_delayed[1]"

create_clock -period $input_clk_period -name $input_clk [get_ports $input_clk_pin]

derive_pll_clocks

create_clock -add -period [get_clock_info -period [get_clocks $clk_dut_pin]] -name $clk_dut [get_net_info -name [get_pin_info -net $clk_dut_pin]]
# create_clock -add -period [get_clock_info -period [get_clocks $clk_vcoph_pin]] -name $clk_vcoph [get_net_info -name [get_pin_info -net $clk_vcoph_pin]]
# create_clock -add -period [get_clock_info -period [get_clocks $clk_dist0_pin]] -name $clk_dist0 [get_net_info -name [get_pin_info -net $clk_dist0_pin]]
# create_clock -add -period [get_clock_info -period [get_clocks $clk_dist1_pin]] -name $clk_dist1 [get_net_info -name [get_pin_info -net $clk_dist1_pin]]

remove_clock $clk_dut_pin
# remove_clock $clk_vcoph_pin
# remove_clock $clk_dist0_pin
# remove_clock $clk_dist1_pin

set_false_path -from [get_clocks $input_clk] -to [get_clocks $clk_dut]
set_false_path -from [get_clocks $clk_dut] -to [get_clocks $input_clk]
# set_false_path -from [get_clocks $input_clk] -to [get_clocks $clk_vcoph]
# set_false_path -from [get_clocks $clk_vcoph] -to [get_clocks $input_clk]
# set_false_path -from [get_clocks $input_clk] -to [get_clocks $clk_dist0]
# set_false_path -from [get_clocks $clk_dist0] -to [get_clocks $input_clk]
# set_false_path -from [get_clocks $input_clk] -to [get_clocks $clk_dist1]
# set_false_path -from [get_clocks $clk_dist1] -to [get_clocks $input_clk]
