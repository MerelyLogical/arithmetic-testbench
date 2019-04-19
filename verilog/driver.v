module driver #(
	// placeholder. doesn't support other widths.
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
	reg [31:0] delay_count;
	reg [ 3:0] out_count;
	reg [ 1:0] test_state;

	always @(posedge clk_dut or posedge reset)
		if (reset)
			test_state <= 2'b00;
		else case (test_state)
			2'b00: if (i_dut_out == 32'h0) test_state <= 2'b01;
			2'b01: if (out_count ==  4'hE) test_state <= 2'b10;
			2'b10: if (i_dut_out == 32'h0) test_state <= 2'b11;
			2'b11:                         test_state <= 2'b11;
			default:                       test_state <= 2'b00;
		endcase
	
	always @(posedge clk_dut or posedge reset)
		if (reset)
			delay_count <= 32'h0;
		else if(test_state == 2'b10)
			delay_count <= delay_count + 1'b1;
	
	always @(posedge clk_dut or posedge reset)
		if (reset)
			out_count <= 4'h0;
		else
			out_count <= out_count + 1'b1;
	
	assign o_drive_a = (out_count == 4'hE) ? 32'h0 : i_rand_a;
	assign o_drive_b = (out_count == 4'hE) ? 32'h0 : i_rand_b;
	
	assign o_dut_delay = (test_state == 2'b11) ? delay_count : 32'hFFFF;
	
	// ------------------------------------------

	// normal output to DUT
	// assign as LSFR outputs are on clk_dut as well
	//	assign o_drive_a = i_rand_a;
	//	assign o_drive_b = i_rand_b;
	reg [WIDTH-1:0] a_1;
	reg [WIDTH-1:0] a_2;
	reg [WIDTH-1:0] a_3;
	reg [WIDTH-1:0] b_1;
	reg [WIDTH-1:0] b_2;
	reg [WIDTH-1:0] b_3;
	
	always @(posedge clk_dut) begin
		// delayed output to monitor
		a_1 <= i_rand_a;
		a_2 <= a_1;
		a_3 <= a_2;
		b_1 <= i_rand_b;
		b_2 <= b_1;
		b_3 <= b_2;
	end
	
	assign o_drive_delayed_a = a_2;
	assign o_drive_delayed_b = a_2;

endmodule