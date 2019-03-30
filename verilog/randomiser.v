module randomiser #(
	// placeholder. doesn't support other widths.
	parameter WIDTH = 32
)(
	input clk,
	input reset,
	input enable,
	
	input  [31:0] i_initial,
	output [31:0] o
);

	reg [31:0] r;
	always @(posedge clk or posedge reset) begin
		if (reset)
			r <= i_initial;
		else if (enable) begin
				// 32 bit Galois LFSR has taps at 32, 30, 26, 25.
				r[31] <= r[0];
				r[29] <= r[30] ^ r[0];
				r[25] <= r[26] ^ r[0];
				r[24] <= r[25] ^ r[0];
				// the rest are simply shifts
				r[30]    <= r[31];
				r[28:26] <= r[29:27];
				r[23: 0] <= r[24:1];
			end
	end
	assign o = r;

endmodule