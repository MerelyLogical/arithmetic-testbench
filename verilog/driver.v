module driver #(
	// placeholder. doesn't support other widths.
	parameter WIDTH = 32
)(
	input clk,
	input reset,
	input clk_dut,
	input reset_dut,

	input      [31:0] i_rand_a,
	input      [31:0] i_rand_b,
	output     [31:0] o_drive_a,
	output     [31:0] o_drive_b,
	output reg [31:0] o_drive_delayed_a,
	output reg [31:0] o_drive_delayed_b
);

	// normal output to DUT
	// assign as LSFR outputs are on clk_dut as well
	assign o_drive_a = i_rand_a;
	assign o_drive_b = i_rand_b;
		
	always @(posedge clk_dut) begin
		// delayed output to monitor
		o_drive_delayed_a <= i_rand_a;
		o_drive_delayed_b <= i_rand_b;
	end

endmodule