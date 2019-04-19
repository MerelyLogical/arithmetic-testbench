module sub_mon #(
	parameter WIDTH = 32
)(
	input clk,
	// input reset,

	input      [WIDTH-1:0] i_a,
	input      [WIDTH-1:0] i_b,
	output reg [WIDTH-1:0] o_mon_o
);

	// adder logic
	always @(posedge clk)
		// introduce 25% error rate
		if (i_a[0] && i_b[0])
			o_mon_o <= i_a;
		else
			o_mon_o <= i_a + i_b;

endmodule
