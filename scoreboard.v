module scoreboard #(
	parameter WIDTH = 32
)(
	input clk,
	input reset,

	input            i_event,
	output reg [7:0] o_event_ctr
);

	always @(posedge clk or negedge reset)
		if (~reset)
			o_event_ctr <= 8'b0;
		else if (i_event)
			o_event_ctr <= o_event_ctr + 1'b1;
			
endmodule