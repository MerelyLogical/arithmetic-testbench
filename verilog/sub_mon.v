module sub_mon #(
	parameter WIDTH = 32
)(
	input clk,
	// input reset,

	input      [WIDTH-1:0] i_a,
	input      [WIDTH-1:0] i_b,
	input      [WIDTH-1:0] i_dut_o,
	output reg [WIDTH-1:0] o_mon_o,
	output reg [WIDTH-1:0] o_dtm_o
);

	// adder logic
	always @(posedge clk)
		// introduce 25% error rate
		if (i_a[0] && i_b[0])
			o_mon_o <= i_b;
		else
			o_mon_o <= i_a + i_b;
	always @(posedge clk)
		o_dtm_o <= i_dut_o;
	
endmodule
