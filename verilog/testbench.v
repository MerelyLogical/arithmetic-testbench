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
	output [31:0] o_error_ctr,
	output [31:0] o_dut_delay,
	
	input              i_fselect,
	input  [WIDTH-1:0] i_fmanual_a,
	input  [WIDTH-1:0] i_fmanual_b,
	input  [WIDTH-1:0] i_fbitset_a,
	input  [WIDTH-1:0] i_fbitset_b,
	input  [WIDTH-1:0] i_fbitclr_a,
	input  [WIDTH-1:0] i_fbitclr_b,
	
	output [31:0] o_maxacc,
	output [31:0] o_minacc,
	
	output [WIDTH-1:0] o_dut_a,
	output [WIDTH-1:0] o_dut_b,
	input  [WIDTH-1:0] i_dut_out
	
);

	wire      [31:0] rand_a;
	wire      [31:0] rand_b;
	wire [WIDTH-1:0] drive_mon_a;
	wire [WIDTH-1:0] drive_mon_b;
	wire [WIDTH-1:0] mnt_diff;
	wire             mon_ready;
	
	// ----INTERNAL ADDER, FOR TESTING ONLY------------
	/*
	wire [WIDTH-1:0] o_dut_a;
	wire [WIDTH-1:0] o_dut_b;
	reg  [WIDTH-1:0] i_dut_out;
	reg  [WIDTH-1:0] delay_s;
	
	always @(posedge clk_dut) begin
		delay_s   <= o_dut_a + o_dut_b;
		i_dut_out <= delay_s;
	end
	*/
	// ------------------------------------------------
	
	
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
		
		.i_rand_a   ( rand_a[WIDTH-1:0]),
		.i_rand_b   ( rand_b[WIDTH-1:0]),
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
		.o_mon_ready( mon_ready  ),
		.o_diff     ( mnt_diff   )
	);

	// counts events
	scoreboard #(
		.WIDTH      ( WIDTH      )
	) u_scoreboard (
		.clk        ( clk_dut    ),
		.reset      ( reset      ),

		.i_freeze   ( freeze     ),
		.i_mon_ready( mon_ready  ),
		.i_diff     ( mnt_diff   ),
		.o_error_ctr( o_error_ctr),
		.o_data_ctr ( o_data_ctr ),
		.o_maxacc   ( o_maxacc   ),
		.o_minacc   ( o_minacc   )
	);

endmodule