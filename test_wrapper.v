module test_wrapper #(
	parameter WIDTH = 32
)(
	input clk,
	input reset,
	
	input clk_tb,
	input reset_tb,
	
	// Avalon slave
	input            [3:0] slave_address,
	input                  slave_read,
	input                  slave_write,
	input      [WIDTH-1:0] slave_writedata,
	output reg [WIDTH-1:0] slave_readdata
);

	// Avalon slave logic
	reg  [WIDTH-1:0] i_hpc_a;
	reg  [WIDTH-1:0] i_hpc_b;
	wire [WIDTH-1:0] o_hpc_o;
	localparam A_ADDR = 4'h0;
	localparam B_ADDR = 4'h4;
	localparam O_ADDR = 4'h8;
	
	always @(posedge clk) begin
		case (slave_address)
			A_ADDR:
				if (~slave_read && slave_write)
					i_hpc_a <= slave_writedata;
			B_ADDR:
				if (~slave_read && slave_write)
					i_hpc_b <= slave_writedata;
			O_ADDR:
				if (slave_read && ~slave_write)
					slave_readdata <= o_hpc_o;
		endcase
	end
	
	// wrapper wires
	wire [31:0] rand_a;
	wire [31:0] drive_a;
	wire [31:0] drive_b;
	
	assign o_hpc_o = drive_a;
	
	// LFSR randomiser
	randomiser #(
		.WIDTH    ( WIDTH      )
	) u_randomiser (
	  .clk       ( clk_tb     ),
	  .reset     ( reset_tb   ),
	  .enable    ( i_hpc_a[0] ),
	  
	  .i_initial ( 32'hFFFF   ),
	  .o         ( rand_a     )
	);

	// driver
	driver #(
		.WIDTH    ( WIDTH      )
	) u_driver (
		.clk      ( clk_tb     ),
		.reset    ( reset_tb   ),
		
		.i_rand_a ( rand_a     ),
		.i_rand_b ( rand_a     ),
		.o_drive_a( drive_a    ),
		.o_drive_b( drive_b    )
	);

endmodule