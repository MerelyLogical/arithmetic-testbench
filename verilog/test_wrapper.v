module test_wrapper #(
	parameter SYS_VERSION = 20,
	parameter WIDTH = 32,
	parameter NUM_SUB_MON = 2
)(
	input clk,
	input reset,
	
	input clk_dut,

	// Avalon slave
	input       [5:0] slave_address,
	input             slave_read,
	input             slave_write,
	input      [31:0] slave_writedata,
	output reg [31:0] slave_readdata//,
	
	/* DUT CONDUIT. DISABLED DURING TESTING
	output [WIDTH-1:0] dut_a,
	output [WIDTH-1:0] dut_b,
	input  [WIDTH-1:0] dut_out
	*/
);

	// Avalon slave logic
	// the widths of these should not be affected by the width
	// of the test data to ensure correct interface behaviour
	
	// D for address with both input and output support
	// control, includes reset/enable/counter freeze
	reg  [31:0] d_hpc_ctrl;
	// data counter, number of test points ran
	wire [31:0] o_hpc_datctr;
	// error counter, number of wrong results from DUT
	wire [31:0] o_hpc_errctr;
	// system version
	wire [31:0] o_hpc_sysver;
	// measured DUT delay
	wire [31:0] o_hpc_dutdelay;
	// driver filter controls
	reg  [31:0] i_hpc_fselect;
	reg  [31:0] i_hpc_fmanual_a;
	reg  [31:0] i_hpc_fmanual_b;
	reg  [31:0] i_hpc_fbitset_a;
	reg  [31:0] i_hpc_fbitset_b;
	reg  [31:0] i_hpc_fbitclr_a;
	reg  [31:0] i_hpc_fbitclr_b;
	// maximum and minimum result accuracy
	reg  [31:0] o_hpc_maxacc;
	reg  [31:0] o_hpc_minacc;
	
	// -----------------------------------------------------
	// META
	localparam D_CTRL_ADDR     = 6'h00;
	localparam O_SYSVER_ADDR   = 6'h04;
	// DRIVER
	localparam I_FSELECT_ADDR    = 6'h10;
	localparam I_FMANUAL_A_ADDR  = 6'h14;
	localparam I_FMANUAL_B_ADDR  = 6'h18;
	localparam I_FBITSET_A_ADDR  = 6'h1C;
	localparam I_FBITSET_B_ADDR  = 6'h20;
	localparam I_FBITCLR_A_ADDR  = 6'h24;
	localparam I_FBITCLR_B_ADDR  = 6'h28;
	localparam O_DUTDELAY_ADDR   = 6'h2C;
	// SCOREBOARD
	localparam O_DATCTR_ADDR   = 6'h30;
	localparam O_ERRCTR_ADDR   = 6'h34;
	localparam O_MAXACC_ADDR   = 6'h38;
	localparam O_MINACC_ADDR   = 6'h3C;
	
	wire writing = ~slave_read && slave_write;
	wire reading = slave_read && ~slave_write;
	
	// -----------------------------------------------------
	always @(posedge clk) begin
		case (slave_address)
			// READ & WRITE
			D_CTRL_ADDR:
				if (writing)
					d_hpc_ctrl <= slave_writedata;
				else if (reading)
					slave_readdata <= d_hpc_ctrl;
			
			// READ ONLY
			O_DATCTR_ADDR:
				if (reading)
					slave_readdata <= o_hpc_datctr;
			O_ERRCTR_ADDR:
				if (reading)
					slave_readdata <= o_hpc_errctr;
			O_SYSVER_ADDR:
				if (reading)
					slave_readdata <= o_hpc_sysver;
			O_DUTDELAY_ADDR:
				if (reading)
					slave_readdata <= o_hpc_dutdelay;
			O_MAXACC_ADDR:
				if (reading)
					slave_readdata <= o_hpc_maxacc;
			O_MINACC_ADDR:
				if (reading)
					slave_readdata <= o_hpc_minacc;
			
			// WRITE ONLY
			I_FSELECT_ADDR:
				if (writing)
					i_hpc_fselect <= slave_writedata;
			I_FMANUAL_A_ADDR:
				if (writing)
					i_hpc_fmanual_a <= slave_writedata;
			I_FMANUAL_B_ADDR:
				if (writing)
					i_hpc_fmanual_b <= slave_writedata;
			I_FBITSET_A_ADDR:
				if (writing)
					i_hpc_fbitset_a <= slave_writedata;
			I_FBITSET_B_ADDR:
				if (writing)
					i_hpc_fbitset_b <= slave_writedata;
			I_FBITCLR_A_ADDR:
				if (writing)
					i_hpc_fbitclr_a <= slave_writedata;
			I_FBITCLR_B_ADDR:
				if (writing)
					i_hpc_fbitclr_b <= slave_writedata;
		endcase
	end
	
	assign o_hpc_sysver = SYS_VERSION;
	
	// -----------------------------------------------------
	testbench #(
		.WIDTH      ( WIDTH      ),
		.NUM_SUB_MON( NUM_SUB_MON)
	) u_testbench (
		.clk_dut    ( clk_dut    ),
		
		.reset      ( d_hpc_ctrl[0] ),
		.enable     ( d_hpc_ctrl[1] ),
		.freeze     ( d_hpc_ctrl[2] ),
		
		.o_data_ctr ( o_hpc_datctr  ),
		.o_error_ctr( o_hpc_errctr  ),
		.o_dut_delay( o_hpc_dutdelay),
		
		.i_fselect    ( i_hpc_fselect[0] ),
		.i_fmanual_a  ( i_hpc_fmanual_a[WIDTH-1:0] ),
		.i_fmanual_b  ( i_hpc_fmanual_b[WIDTH-1:0] ),
		.i_fbitset_a  ( i_hpc_fbitset_a[WIDTH-1:0] ),
		.i_fbitset_b  ( i_hpc_fbitset_b[WIDTH-1:0] ),
		.i_fbitclr_a  ( i_hpc_fbitclr_a[WIDTH-1:0] ),
		.i_fbitclr_b  ( i_hpc_fbitclr_b[WIDTH-1:0] ),
		
		.o_maxacc   ( o_hpc_maxacc  ),
		.o_minacc   ( o_hpc_minacc  )//,
		
		/* DUT CONDUIT. DISABLED DURING TESTING
		.o_dut_a    ( dut_a      ),
		.o_dut_b    ( dut_b      ),
		.i_dut_out  ( dut_out    )
		*/
	);

endmodule
