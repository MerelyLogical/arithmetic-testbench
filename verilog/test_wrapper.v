module test_wrapper #(
	parameter SYS_VERSION = 8,
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
	reg  [WIDTH-1:0] i_hpc_i1;
	reg  [WIDTH-1:0] i_hpc_i2;
	wire [WIDTH-1:0] o_hpc_o1;
	wire [WIDTH-1:0] o_hpc_o2;
	wire [WIDTH-1:0] o_hpc_o3;
	
	localparam I1_ADDR = 4'h00;
	localparam I2_ADDR = 4'h01;
	localparam O1_ADDR = 4'h02;
	localparam O2_ADDR = 4'h03;
	localparam O3_ADDR = 4'h04;
	
	always @(posedge clk) begin
		case (slave_address)
			I1_ADDR:
				if (~slave_read && slave_write)
					i_hpc_i1 <= slave_writedata;
				else if (slave_read && ~slave_write)
					slave_readdata <= i_hpc_i1;
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
	
	assign o_hpc_o3 = SYS_VERSION;

	testbench #(
		.WIDTH      ( WIDTH      )
	) u_testbench (
		.clk_tb     ( clk_tb     ),
		.clk_dut    ( clk_dut    ),
		
		.reset      ( i_hpc_i1[0]),
		.enable     ( i_hpc_i1[1]),
		.freeze     ( i_hpc_i1[2]),
		
		.o_data_ctr ( o_hpc_o1   ),
		.o_event_ctr( o_hpc_o2   ),
		
		.o_drive_a  ( dut_a      ),
		.o_drive_b  ( dut_b      ),
		.i_dut_out  ( dut_s      )
	);

endmodule
