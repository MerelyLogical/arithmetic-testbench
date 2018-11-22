module my_adder #(
	parameter WIDTH = 8
)(
	input	     clk,
	input      reset,
	input      [7:0] a,
	input      [7:0] b,
	output reg [7:0] o
);

	
	always @(posedge clk)
		if (reset)
			o <= 8'hff;
		else
			o <= a + b;

endmodule