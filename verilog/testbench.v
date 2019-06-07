module testbench #(
	parameter WIDTH = 16,
	parameter NUM_SUB_MON = 3
)(
	// input clk_tb,
	input clk_dut,
	
	input reset,
	input enable,
	input freeze,
	
	output [31:0] o_data_ctr,
	output [31:0] o_event_ctr,
	output [31:0] o_dut_delay,
	
	input              i_fselect,
	input  [WIDTH-1:0] i_fmanual_a,
	input  [WIDTH-1:0] i_fmanual_b,
	input  [WIDTH-1:0] i_fbitset_a,
	input  [WIDTH-1:0] i_fbitset_b,
	input  [WIDTH-1:0] i_fbitclr_a,
	input  [WIDTH-1:0] i_fbitclr_b,
	
	output [WIDTH-1:0] o_dut_a,
	output [WIDTH-1:0] o_dut_b,
	input  [WIDTH-1:0] i_dut_out
);

	wire [WIDTH-1:0] rand_a;
	wire [WIDTH-1:0] rand_b;
	wire [WIDTH-1:0] drive_mon_a;
	wire [WIDTH-1:0] drive_mon_b;
	wire             mnt_event;
	
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
		.reset      ( reset      ),
		.clk_dut    ( clk_dut    ),
		
		.i_rand_a   ( rand_a     ),
		.i_rand_b   ( rand_b     ),
		.i_dut_out  ( i_dut_out  ),
		
		.i_fselect    ( i_fselect  ),
		.i_fmanual_a  ( i_fmanual_a  ),
		.i_fmanual_b  ( i_fmanual_b  ),
		.i_fbitset_a  ( i_fbitset_a  ),
		.i_fbitset_b  ( i_fbitset_b  ),
		.i_fbitclr_a  ( i_fbitclr_a  ),
		.i_fbitclr_b  ( i_fbitclr_b  ),
		
		.o_dut_delay   ( o_dut_delay ),
		.o_drive_dut_a ( o_dut_a     ),
		.o_drive_dut_b ( o_dut_b     ),
		.o_drive_mon_a ( drive_mon_a ),
		.o_drive_mon_b ( drive_mon_b )
	);

	// find errors and other interesting events
	monitor #(
		.WIDTH      ( WIDTH      ),
		.NUM_SUB_MON( NUM_SUB_MON)
	) u_monitor (
		.clk        ( clk_dut    ),
		.reset      ( reset      ),
		
		.i_dut_ia   ( drive_mon_a),
		.i_dut_ib   ( drive_mon_b),
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