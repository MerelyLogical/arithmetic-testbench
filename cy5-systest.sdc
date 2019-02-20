# Net name and period of input clock
set input_clk "fpga_clk_50"
set input_clk_pin $input_clk
set input_clk_period 20

# Net and pin (origin of net) of PLL-derived clock
set variable_clk "clk_tb, clk_dut"
set variable_clk_pin "soc_inst|pll_tb|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk, soc_inst|pll_dut|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk"
# soc_system:soc_inst|soc_system_pll_tb:pll_tb|altera_pll:altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk

create_clock -period $input_clk_period -name $input_clk [get_ports $input_clk_pin]

derive_pll_clocks

create_clock -add -period [get_clock_info -period [get_clocks $variable_clk_pin]] -name $variable_clk [get_net_info -name [get_pin_info -net $variable_clk_pin]]
remove_clock $variable_clk_pin

set_false_path -from [get_clocks $input_clk] -to [get_clocks $variable_clk]
set_false_path -from [get_clocks $variable_clk] -to [get_clocks $input_clk]
