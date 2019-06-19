module sub_mon #(
	parameter WIDTH = 32
)(
	input clk,
	input enable,
	input reset,

	input      [WIDTH-1:0] i_a,
	input      [WIDTH-1:0] i_b,
	input      [WIDTH-1:0] i_dut_o,
	output reg [WIDTH-1:0] o_mon_o,
	output reg [WIDTH-1:0] o_dtm_o
);

	// adder logic
	always @(posedge clk)
		if (enable) begin
			o_mon_o <= i_a;
			o_dtm_o <= i_dut_o;
		end
		
endmodule
