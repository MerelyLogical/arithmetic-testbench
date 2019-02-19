module sub_mon #(
	parameter WIDTH = 32
)(
	input clk,
	input reset,

	input  [WIDTH-1:0] i_a,
	input  [WIDTH-1:0] i_b,
	input  [WIDTH-1:0] i_dut_o,
	output reg o_event
);

	reg [WIDTH-1:0] tmp_o;
	
	// adder logic
	always @(posedge clk)
		tmp_o <= i_a + i_b;

	// checking logic
	always @(posedge clk)
		if (i_dut_o == tmp_o)
			o_event <= 1'b1;
		else
			o_event <= 1'b0;

endmodule
