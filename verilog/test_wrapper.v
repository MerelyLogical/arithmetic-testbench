module test_wrapper #(
	parameter WIDTH = 32
)(
	input clk,
	input reset,
	
	input clk_tb,
	input reset_tb,
	
	input clk_dut,
	input reset_dut,
	
	// Avalon slave
	input            [3:0] slave_address,
	input                  slave_read,
	input                  slave_write,
	input      [WIDTH-1:0] slave_writedata,
	output reg [WIDTH-1:0] slave_readdata,
	
	// DUT conduit
	output [WIDTH-1:0] dut_a,
	output [WIDTH-1:0] dut_b,
	input  [WIDTH-1:0] dut_s
);

	// Avalon slave logic
	reg  [WIDTH-1:0] i_hpc_a;
	reg  [WIDTH-1:0] i_hpc_b;
	wire [WIDTH-1:0] o_hpc_o;
	localparam A_ADDR = 4'h0;
	localparam B_ADDR = 4'h4;
	localparam O_ADDR = 4'h8;
	
	// *_hpc_* are in clk_tb
	// avalon slave is in clk
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
	wire [31:0] dut_out;
	wire [31:0] mnt_events;
	wire [23:0] data_ctr;
	wire [ 7:0] event_ctr;
	assign dut_a = drive_a;
	assign dut_b = drive_b;
	assign o_hpc_o = {data_ctr, event_ctr};
	assign dut_out = dut_s;

	// LFSR randomiser
	randomiser #(
		.WIDTH      ( WIDTH      )
	) u_randomiser (
	  .clk         ( clk_tb     ),
	  .reset       ( reset_tb   ),
	  .enable      ( i_hpc_a[0] ),
	  
	  .i_initial   ( 32'hFFFF   ),
	  .o           ( rand_a     )
	);

	// provides signal to drive DUT
	driver #(
		.WIDTH      ( WIDTH      )
	) u_driver (
		.clk        ( clk_tb     ),
		.reset      ( reset_tb   ),
		.clk_dut    ( clk_dut    ),
		
		.i_rand_a   ( rand_a     ),
		.i_rand_b   ( rand_a     ),
		.o_drive_a  ( drive_a    ),
		.o_drive_b  ( drive_b    )
	);

	// find errors and other interesting events
	monitor #(
		.WIDTH      ( WIDTH      )
	) u_monitor (
		.clk        ( clk_tb     ),
		.reset      ( reset_tb   ),
		
		.i_dut_ia   ( drive_a    ),
		.i_dut_ib   ( drive_b    ),
		.i_dut_os   ( dut_out    ),
		.o_event    ( mnt_events )
	);

	// counts events
	scoreboard #(
		.WIDTH      ( WIDTH      )
	) u_scoreboard (
		.clk        ( clk_tb     ),
		.reset      ( reset_tb   ),

		.i_event    ( mnt_events ),
		.o_event_ctr( event_ctr  ),
		.o_data_ctr ( data_ctr   )
	);

endmodule
