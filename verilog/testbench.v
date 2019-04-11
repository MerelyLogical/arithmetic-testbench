module testbench #(
	parameter WIDTH = 32
)(
	input clk_tb,
	input clk_dut,
	
	input reset,
	input enable,
	input freeze,
	
	output [WIDTH-1:0] o_data_ctr,
	output [WIDTH-1:0] o_event_ctr,
	
	// DUT conduit
	output [WIDTH-1:0] o_drive_a,
	output [WIDTH-1:0] o_drive_b,
	input  [WIDTH-1:0] i_dut_out
);

	wire [31:0] rand_a;
	wire [31:0] rand_b;
	wire [31:0] drive_delayed_a;
	wire [31:0] drive_delayed_b;
	wire        mnt_event;

	// LFSR randomiser
	randomiser #(
		.WIDTH      ( WIDTH      )
	) u_randomiser_a (
	  .clk         ( clk_dut    ),
	  .reset       ( reset      ),
	  .enable      ( enable     ),
	  
	  .i_initial   (32'hCAFEF00D),
	  .o           ( rand_a     )
	);

	randomiser #(
		.WIDTH      ( WIDTH      )
	) u_randomiser_b (
	  .clk         ( clk_dut    ),
	  .reset       ( reset      ),
	  .enable      ( enable     ),
	  
	  .i_initial   (32'hFEEDC0DE),
	  .o           ( rand_b     )
	);
	
	// provides signal to drive DUT
	driver #(
		.WIDTH      ( WIDTH      )
	) u_driver (
		.clk        ( clk_tb     ),
		.reset      ( reset      ),
		.clk_dut    ( clk_dut    ),
		.reset_dut  ( reset      ),
		
		.i_rand_a   ( rand_a     ),
		.i_rand_b   ( rand_b     ),
		.o_drive_a  ( o_drive_a  ),
		.o_drive_b  ( o_drive_b  ),
		.o_drive_delayed_a ( drive_delayed_a ),
		.o_drive_delayed_b ( drive_delayed_b )
	);

	// find errors and other interesting events
	monitor #(
		.WIDTH      ( WIDTH      )
	) u_monitor (
		.clk        ( clk_dut    ),
		.reset      ( reset      ),
		
		.i_dut_ia   ( drive_delayed_a ),
		.i_dut_ib   ( drive_delayed_b ),
		.i_dut_os   ( i_dut_out  ),
		.o_event    ( mnt_event  )
	);

	// counts events
	scoreboard #(
		.WIDTH      ( WIDTH      )
	) u_scoreboard (
		.clk        ( clk_dut    ),
		.reset      ( reset      ),

		.i_freeze   ( freeze     ),
		.i_event    ( mnt_event  ),
		.o_event_ctr( o_event_ctr),
		.o_data_ctr ( o_data_ctr )
	);

endmodule