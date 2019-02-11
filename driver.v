module driver #(
	// placeholder. doesn't support other widths.
	parameter WIDTH = 32
)(
	input clk,
	input reset,

	input  [31:0] i_rand_a,
	input  [31:0] i_rand_b,
	output [31:0] o_drive_a,
	output [31:0] o_drive_b
);

	// simple pass through
	assign o_drive_a = i_rand_a;
	assign o_drive_b = i_rand_b;

endmodule