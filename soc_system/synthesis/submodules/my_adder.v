module my_adder #(
	parameter WIDTH = 8
)(
	input  wire [7:0] a,
	input  wire [7:0] b,
	output wire [7:0] o
);

	assign o = a + b;

endmodule