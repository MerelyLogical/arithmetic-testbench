module monitor #(
	// placeholder. doesn't support other widths.
	parameter WIDTH = 32
)(
	input clk,
	input reset,

	input  [WIDTH-1:0] i_dut_ia,
	input  [WIDTH-1:0] i_dut_ib,
	input  [WIDTH-1:0] i_dut_os,
	output reg [WIDTH-1:0] o_event
);

	// slow clock for sub_monitors
	reg half_clk;
	
	always @(posedge clk or posedge reset)
		if (reset)
			half_clk <= 1'b0;
		else
			half_clk <= ~half_clk;


	// round-robin arbiter
	// not a real arbiter yet as there are no requests or grants.
	// will become a real arbiter once DUT clk gets decoupled from clk_tb
	reg  [WIDTH-1:0] a_1;
	reg  [WIDTH-1:0] b_1;
	reg  [WIDTH-1:0] o_dut_1;
	wire [WIDTH-1:0] o_mon_1;
	reg  [WIDTH-1:0] a_2;
	reg  [WIDTH-1:0] b_2;
	reg  [WIDTH-1:0] o_dut_2;
	wire [WIDTH-1:0] o_mon_2;
	
	always @(posedge clk)
		if (half_clk) begin
			a_1     <= i_dut_ia;
			b_1     <= i_dut_ib;
			o_dut_1 <= i_dut_os;
		end
		else begin
			a_2     <= i_dut_ia;
			b_2     <= i_dut_ib;
			o_dut_2 <= i_dut_os;
		end

	// gather events from sub_monitors back
	reg event_1;
	reg event_2;
	always @(posedge clk)
		if (half_clk)
			o_event <= o_dut_1 != o_mon_1;
		else
			o_event <= o_dut_2 != o_mon_2;

	sub_mon #(
		.WIDTH     ( WIDTH    )
	) sub_mon_1 (
		.clk       ( half_clk ),
		.reset     ( reset    ),
		
		.i_a       ( a_1      ),
		.i_b       ( b_1      ),
		.o_mon_o   ( o_mon_1  )
	);

	sub_mon #(
		.WIDTH     ( WIDTH     )
	) sub_mon_2 (
		.clk       ( ~half_clk ),
		.reset     ( reset     ),
		
		.i_a       ( a_2       ),
		.i_b       ( b_2       ),
		.o_mon_o   ( o_mon_2   )
	);
endmodule
