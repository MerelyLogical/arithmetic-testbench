module my_adder #(
	parameter WIDTH = 32
)(
	input clk,
	input reset,

	input  [WIDTH-1:0] i_a,
	input  [WIDTH-1:0] i_b,
	output reg [WIDTH-1:0] o_s
);

	// adder logic
	always @(posedge clk)
		o_s <= i_a + i_b;

endmodule