module driver #(
	parameter WIDTH = 32
)(
	input reset,
	input clk_dut,

	input  [WIDTH-1:0] i_rand_a,
	input  [WIDTH-1:0] i_rand_b,
	
	input              i_fselect,
	input  [WIDTH-1:0] i_fmanual_a,
	input  [WIDTH-1:0] i_fmanual_b,
	input  [WIDTH-1:0] i_fbitset_a,
	input  [WIDTH-1:0] i_fbitset_b,
	input  [WIDTH-1:0] i_fbitclr_a,
	input  [WIDTH-1:0] i_fbitclr_b,
	
	output [WIDTH-1:0] o_drive_dut_a,
	output [WIDTH-1:0] o_drive_dut_b,
	output [WIDTH-1:0] o_drive_mon_a,
	output [WIDTH-1:0] o_drive_mon_b
);

	// -------------------------------------------
	// filter system after delay tester
	reg [WIDTH-1:0] sa_0;
	reg [WIDTH-1:0] sb_0;
	reg [WIDTH-1:0] fa_0;
	reg [WIDTH-1:0] fb_0;

	// bitclr takes priority. This decision is arbitrary.
	always @(posedge clk_dut)
		if (i_fselect == 1'b0) begin
			sa_0 <= i_rand_a | i_fbitset_a;
			sb_0 <= i_rand_b | i_fbitset_b;
			fa_0 <= sa_0 & (~i_fbitclr_a);
			fb_0 <= sb_0 & (~i_fbitclr_b);
		end
		else begin
			sa_0 <= i_fmanual_a;
			sb_0 <= i_fmanual_b;
			fa_0 <= sa_0;
			fb_0 <= sb_0;
		end
	
	// ------------------------------------------
	// filtered output to DUT and monitor.
	// assign as LSFR outputs are on clk_dut as well
	// assign o_drive_a = i_rand_a;
	// assign o_drive_b = i_rand_b;
	reg [WIDTH-1:0] fa_1;
	reg [WIDTH-1:0] fa_2;
	reg [WIDTH-1:0] fb_1;
	reg [WIDTH-1:0] fb_2;
	
	always @(posedge clk_dut) begin
		// delayed output to monitor
		fa_1 <= fa_0;
		fa_2 <= fa_1;
		fb_1 <= fb_0;
		fb_2 <= fb_1;
	end
	
	assign o_drive_dut_a = fa_0;
	assign o_drive_dut_b = fb_0;
	assign o_drive_mon_a = fa_2;
	assign o_drive_mon_b = fb_2;

endmodule