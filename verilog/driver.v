module driver #(
	parameter WIDTH = 32
)(
	// input clk,
	input reset,
	input clk_dut,
	// input reset_dut,

	input  [WIDTH-1:0] i_rand_a,
	input  [WIDTH-1:0] i_rand_b,
	// ------------------------------------------
	input  [WIDTH-1:0] i_dut_out,
	output [WIDTH-1:0] o_dut_delay,
	// ------------------------------------------
	output [WIDTH-1:0] o_drive_a,
	output [WIDTH-1:0] o_drive_b,
	output [WIDTH-1:0] o_drive_delayed_a,
	output [WIDTH-1:0] o_drive_delayed_b
);


	// ------------------------------------------
	// measure delay from DUT
	// 16 bits means at max 200k clk ticks required to finish testing.
	// which is 4ms at 50MHz. negligible.
	// this reduces the error rate by 1/65k, negligible.
	// testing with out='0 is safe.
	// normally LFSR will not give '0 as dut input.
	reg [WIDTH-1:0] delay_count;
	reg      [15:0] out_count;
	reg      [ 3:0] test_state;
	// localparam COUNT_TRIGGER = 16'hEEEE;
	localparam STATE_IDLE  = 4'b0001;
	localparam STATE_READY = 4'b0010;
	localparam STATE_COUNT = 4'b0100;
	localparam STATE_DONE  = 4'b1000;
	
	
	always @(posedge clk_dut or posedge reset)
		if (reset)
			test_state <= STATE_IDLE;
		else case (test_state)
			STATE_IDLE : if (~|i_dut_out) test_state <= STATE_READY;
			STATE_READY: if ( &out_count) test_state <= STATE_COUNT;
			STATE_COUNT: if (~|i_dut_out) test_state <= STATE_DONE;
			STATE_DONE :                  test_state <= STATE_DONE;
			default    :                  test_state <= STATE_IDLE;
		endcase
	
	always @(posedge clk_dut or posedge reset)
		if (reset)
			delay_count <= {WIDTH{1'b0}};
		else if(test_state == STATE_COUNT)
			delay_count <= delay_count + 1'b1;
	
	always @(posedge clk_dut or posedge reset)
		if (reset)
			out_count <= 16'h0;
		else
			out_count <= out_count + 1'b1;
	
	assign o_drive_a = (&out_count) ? {WIDTH{1'b0}} : i_rand_a;
	assign o_drive_b = (&out_count) ? {WIDTH{1'b0}} : i_rand_b;
	
	assign o_dut_delay = (test_state == STATE_DONE) ? delay_count : {WIDTH{1'b1}};
	
	// ------------------------------------------
	// normal output to DUT
	// assign as LSFR outputs are on clk_dut as well
	//	assign o_drive_a = i_rand_a;
	//	assign o_drive_b = i_rand_b;
	reg [WIDTH-1:0] a_1;
	reg [WIDTH-1:0] a_2;
	// reg [WIDTH-1:0] a_3;
	reg [WIDTH-1:0] b_1;
	reg [WIDTH-1:0] b_2;
	// reg [WIDTH-1:0] b_3;
	
	always @(posedge clk_dut) begin
		// delayed output to monitor
		a_1 <= i_rand_a;
		a_2 <= a_1;
		// a_3 <= a_2;
		b_1 <= i_rand_b;
		b_2 <= b_1;
		// b_3 <= b_2;
	end
	
	assign o_drive_delayed_a = a_2;
	assign o_drive_delayed_b = b_2;

endmodule