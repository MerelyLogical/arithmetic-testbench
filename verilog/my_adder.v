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
	reg[WIDTH-1:0] delay_s;
	
	always @(posedge clk) begin
		delay_s <= i_a + i_b;
		o_s <= delay_s;
	end
endmodule