
module addsys (
	clk_clk,
	reset_reset_n,
	my_adder_conduit_a,
	my_adder_conduit_o,
	my_adder_conduit_b);	

	input		clk_clk;
	input		reset_reset_n;
	input	[7:0]	my_adder_conduit_a;
	output	[7:0]	my_adder_conduit_o;
	input	[7:0]	my_adder_conduit_b;
endmodule
