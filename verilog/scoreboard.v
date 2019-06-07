module scoreboard #(
	// unused parameter
	parameter WIDTH = 32
)(
	input clk,
	input reset,

	input  i_freeze,
	input  i_diff,
	
	output [31:0] o_data_ctr,
	output [31:0] o_error_ctr,
	output [31:0] o_maxerr,
	output [31:0] o_minerr
	
);

	// ---------------------------------------
	// counters
	reg [31:0] data_ctr;
	reg [31:0] error_ctr;

	always @(posedge clk)
		if (reset) begin
			error_ctr <= {32{1'b0}};
			data_ctr  <= {32{1'b0}};
		end
		else if (!i_freeze) begin
			data_ctr <= data_ctr + 1'b1;
			// report an error if i_diff is not all 0
			if (|i_diff)
				error_ctr <= error_ctr + 1'b1;
		end
	
	assign o_data_ctr = data_ctr;
	assign o_error_ctr = error_ctr;
		
	// ---------------------------------------
	// accuracy measurements
	
	reg [31:0] maxdiff;
	reg [31:0] mindiff;
	always @(posedge clk)
		if (reset) begin
			maxdiff <= {WIDTH{1'b0}};
			mindiff <= {WIDTH{1'b1}};
		end
		
		
		
endmodule
