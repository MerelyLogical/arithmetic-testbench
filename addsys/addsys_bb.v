
module addsys (
	clk_clk,
	reset_reset_n,
	my_adder_conduit_out_o,
	my_adder_conduit_in_a,
	my_adder_conduit_in_b);	

	input		clk_clk;
	input		reset_reset_n;
	output	[7:0]	my_adder_conduit_out_o;
	input	[7:0]	my_adder_conduit_in_a;
	input	[7:0]	my_adder_conduit_in_b;
endmodule
