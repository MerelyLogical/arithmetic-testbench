module driver #(
	parameter WIDTH = 32
)(
	input reset,
	input clk_dut,

	input  [WIDTH-1:0] i_rand_a,
	input  [WIDTH-1:0] i_rand_b,
	input  [WIDTH-1:0] i_dut_out,
	output      [31:0] o_dut_delay,
	
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


	// ------------------------------------------
	// measure delay from DUT
	// K = 16 means at max 200k clk ticks required to finish testing.
	// which is 4ms at 50MHz. negligible.
	// this reduces the error rate by 1/65k, negligible.
	// testing with out='0 is safe.
	// normally LFSR will not give '0 as dut input.
	// maximum detectable delay = 2^K
	localparam K = 4;
	reg [K-1:0] delay_count;
	reg [K-1:0] out_count;
	reg [  3:0] test_state;
	localparam STATE_IDLE  = 4'b0001;
	localparam STATE_READY = 4'b0010;
	localparam STATE_COUNT = 4'b0100;
	localparam STATE_DONE  = 4'b1000;
	
	
	always @(posedge clk_dut)
		if (reset)
			test_state <= STATE_IDLE;
		else case (test_state)
			STATE_IDLE : if (~|i_dut_out) test_state <= STATE_READY;
			STATE_READY: if ( &out_count) test_state <= STATE_COUNT;
			STATE_COUNT: if (~|i_dut_out) test_state <= STATE_DONE;
			STATE_DONE :                  test_state <= STATE_DONE;
			default    :                  test_state <= STATE_IDLE;
		endcase
	
	always @(posedge clk_dut)
		if (reset)
			delay_count <= {K{1'b1}};
		else if(test_state == STATE_COUNT)
			delay_count <= delay_count + 1'b1;
	
	always @(posedge clk_dut)
		if (reset)
			out_count <= {K{1'b0}};
		// delay tester is disabled if it is done or if driver is in manual input mode
		else if (test_state == STATE_DONE || i_fselect == 1'b1)
			out_count <= {K{1'b0}};
		else
			out_count <= out_count + 1'b1;
	
	reg [WIDTH-1:0] a_0;
	reg [WIDTH-1:0] b_0;
	
	always @(posedge clk_dut)
		if (reset) begin
			a_0 <= {WIDTH{1'b0}};
			b_0 <= {WIDTH{1'b0}};
		end
		else if (&out_count) begin
			a_0 <= {WIDTH{1'b0}};
			b_0 <= {WIDTH{1'b0}};
		end
		else begin
			a_0 <= i_rand_a;
			b_0 <= i_rand_b;
		end
	
	assign o_dut_delay = (test_state == STATE_DONE) ? delay_count : {32{1'b1}};
	
	
	// -------------------------------------------
	// filter system after delay tester
	reg [WIDTH-1:0] sa_0;
	reg [WIDTH-1:0] sb_0;
	reg [WIDTH-1:0] fa_0;
	reg [WIDTH-1:0] fb_0;

	// bitclr takes priority. This decision is arbitrary.
	always @(posedge clk_dut)
		if (i_fselect == 1'b0) begin
			sa_0 <= a_0 | i_fbitset_a;
			sb_0 <= b_0 | i_fbitset_b;
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
	//	assign o_drive_a = i_rand_a;
	//	assign o_drive_b = i_rand_b;
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