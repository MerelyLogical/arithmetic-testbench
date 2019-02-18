module monitor #(
	// placeholder. doesn't support other widths.
	parameter WIDTH = 32
)(
	input clk,
	input reset,

	input  [WIDTH-1:0] i_dut_ia,
	input  [WIDTH-1:0] i_dut_ib,
	input  [WIDTH-1:0] i_dut_os,
	output [WIDTH-1:0] o_event
);

	reg [31:0] r;
	reg [31:0] k;
	
	always @(posedge clk or negedge reset)
		if (~reset)
			k <= 32'b0;
		else
			k <= i_dut_ia + i_dut_ib;
	
	always @(posedge clk or negedge reset)
		if (~reset)
			r <= 32'b0;
		else
			if(i_dut_os == k)
				r <= 32'b1;
			else
				r <= 32'b0;
	
	assign o_event = r;

endmodule