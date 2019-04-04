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
	input            [4:0] slave_address,
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
	reg  [WIDTH-1:0] i_hpc_i1;
	reg  [WIDTH-1:0] i_hpc_i2;
	wire [WIDTH-1:0] o_hpc_o1;
	wire [WIDTH-1:0] o_hpc_o2;
	wire [WIDTH-1:0] o_hpc_o3;
	
	localparam I1_ADDR = 5'h00;
	localparam I2_ADDR = 5'h04;
	localparam O1_ADDR = 5'h08;
	localparam O2_ADDR = 5'h0C;
	localparam O3_ADDR = 5'h10;
	
	// *_hpc_* are in clk_tb
	// avalon slave is in clk
	always @(posedge clk) begin
		case (slave_address)
			I1_ADDR:
				if (~slave_read && slave_write)
					i_hpc_i1 <= slave_writedata;
			I2_ADDR:
				if (~slave_read && slave_write)
					i_hpc_i2 <= slave_writedata;
			O1_ADDR:
				if (slave_read && ~slave_write)
					slave_readdata <= o_hpc_o1;
			O2_ADDR:
				if (slave_read && ~slave_write)
					slave_readdata <= o_hpc_o2;
			O3_ADDR:
				if (slave_read && ~slave_write)
					slave_readdata <= o_hpc_o3;
		endcase
	end
	
	// wrapper wires
	wire        hpc_reset;
	wire        hpc_enable;
	
	assign hpc_reset  = i_hpc_i1[0];
	assign hpc_enable = i_hpc_i2[0];
	
	
	wire [31:0] rand_a;
	wire [31:0] rand_b;
	wire [31:0] drive_a;
	wire [31:0] drive_b;
	wire [31:0] drive_delayed_a;
	wire [31:0] drive_delayed_b;
	wire [31:0] dut_out;
	wire [31:0] mnt_events;
	wire [31:0] data_ctr;
	wire [31:0] event_ctr;
	
	assign dut_a = drive_a;
	assign dut_b = drive_b;
	assign o_hpc_o1 = data_ctr;
	assign o_hpc_o2 = event_ctr;
	assign o_hpc_o3 = rand_a;
	assign dut_out = dut_s;

	// LFSR randomiser
	randomiser #(
		.WIDTH      ( WIDTH      )
	) u_randomiser_a (
	  .clk         ( clk_dut    ),
	  .reset       ( hpc_reset  ),
	  .enable      ( hpc_enable ),
	  
	  .i_initial   (32'hCAFEF00D),
	  .o           ( rand_a     )
	);

	randomiser #(
		.WIDTH      ( WIDTH      )
	) u_randomiser_b (
	  .clk         ( clk_dut    ),
	  .reset       ( hpc_reset  ),
	  .enable      ( hpc_enable ),
	  
	  .i_initial   (32'hFEEDC0DE),
	  .o           ( rand_b     )
	);
	
	// provides signal to drive DUT
	driver #(
		.WIDTH      ( WIDTH      )
	) u_driver (
		.clk        ( clk_tb     ),
		.reset      ( hpc_reset  ),
		.clk_dut    ( clk_dut    ),
		
		.i_rand_a   ( rand_a     ),
		.i_rand_b   ( rand_b     ),
		.o_drive_a  ( drive_a    ),
		.o_drive_b  ( drive_b    ),
		.o_drive_delayed_a ( drive_delayed_a ),
		.o_drive_delayed_b ( drive_delayed_b )
	);

	// find errors and other interesting events
	monitor #(
		.WIDTH      ( WIDTH      )
	) u_monitor (
		.clk        ( clk_dut    ),
		.reset      ( hpc_reset  ),
		
		.i_dut_ia   ( drive_delayed_a ),
		.i_dut_ib   ( drive_delayed_b ),
		.i_dut_os   ( dut_out    ),
		.o_event    ( mnt_events )
	);

	// counts events
	scoreboard #(
		.WIDTH      ( WIDTH      )
	) u_scoreboard (
		.clk        ( clk_dut    ),
		.reset      ( hpc_reset  ),

		.i_event    ( mnt_events ),
		.o_event_ctr( event_ctr  ),
		.o_data_ctr ( data_ctr   )
	);

endmodule
