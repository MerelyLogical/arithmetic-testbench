module my_adder #(
	parameter WIDTH = 32
)(
	input clk,
	input reset,
	
	// Avalon slave
	input            [3:0] slave_address,
	input                  slave_read,
	input                  slave_write,
	input      [WIDTH-1:0] slave_writedata,
	output reg [WIDTH-1:0] slave_readdata
);

	// internal vars
	reg  [WIDTH-1:0] a;
	reg  [WIDTH-1:0] b;
	wire [WIDTH-1:0] o;
	
	// Avalon slave logic
	localparam A_ADDR = 4'h0;
	localparam B_ADDR = 4'h4;
	localparam O_ADDR = 4'h8;
	
	always @(posedge clk) begin
		case (slave_address)
			A_ADDR:
				if (~slave_read && slave_write)
					a <= slave_writedata;
			B_ADDR:
				if (~slave_read && slave_write)
					b <= slave_writedata;
			O_ADDR:
				if (slave_read && ~slave_write)
					slave_readdata <= o;
		endcase
	end

	// adder logic
	assign o = a + b;

endmodule