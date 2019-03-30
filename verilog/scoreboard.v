module scoreboard #(
	parameter WIDTH = 32
)(
	input clk,
	input reset,

	input             i_event,
	output reg [31:0] o_event_ctr,
	output reg [31:0] o_data_ctr
);

	always @(posedge clk or posedge reset)
		if (reset) begin
			o_event_ctr <= 31'b0;
			o_data_ctr  <= 31'b0;
		end
		else begin
			o_data_ctr <= o_data_ctr + 1'b1;
			if (i_event)
				o_event_ctr <= o_event_ctr + 1'b1;
		end

endmodule
