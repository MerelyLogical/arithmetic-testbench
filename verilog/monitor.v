module monitor #(
	// placeholder. doesn't support other widths.
	parameter WIDTH       = 32,
	parameter NUM_SUB_MON = 4
)(
	input clk,
	input reset,

	input      [WIDTH-1:0] i_dut_ia,
	input      [WIDTH-1:0] i_dut_ib,
	input      [WIDTH-1:0] i_dut_os,
	output reg [WIDTH-1:0] o_event
);

	// one hot counter for distributer
	// this runs on clk_dut and gives inputs out in a round-robin fashion
	reg [NUM_SUB_MON-1:0] dist_ctr;
	reg [NUM_SUB_MON-1:0] dist_ctr_delayed;
	always @(posedge clk) begin
		if (reset) begin
			dist_ctr[0]                       <= 1'b1;
			dist_ctr[NUM_SUB_MON-1:1]         <= 0;
			dist_ctr_delayed[NUM_SUB_MON-1:1] <= 0;
		end
		else begin
			dist_ctr[0]               <= dist_ctr[NUM_SUB_MON-1];
			dist_ctr[NUM_SUB_MON-1:1] <= dist_ctr[NUM_SUB_MON-2:0];
			dist_ctr_delayed          <= dist_ctr;
		end
	end
		
	reg  [NUM_SUB_MON*WIDTH-1:0] a;
	reg  [NUM_SUB_MON*WIDTH-1:0] b;
	reg  [NUM_SUB_MON*WIDTH-1:0] o_dut;
	wire [NUM_SUB_MON*WIDTH-1:0] o_mon;

	wire [NUM_SUB_MON-1:0] clk_sub;


	genvar gi;
	generate for (gi=0; gi<NUM_SUB_MON; gi=gi+1) begin: gen_mon
		// assign inputs to sub_monitors
		always @(posedge clk)
			if (dist_ctr[gi]) begin
				a    [(gi+1)*WIDTH-1:gi*WIDTH] <= i_dut_ia;
				b    [(gi+1)*WIDTH-1:gi*WIDTH] <= i_dut_ib;
				o_dut[(gi+1)*WIDTH-1:gi*WIDTH] <= i_dut_os;
			end

		// gather events from sub_monitors' last test back
		always @(posedge clk)
			if (dist_ctr[gi])
				o_event <= o_dut[(gi+1)*WIDTH-1:gi*WIDTH] != o_mon[(gi+1)*WIDTH-1:gi*WIDTH];

		// insane or stupid clk???
		assign clk_sub[gi] = dist_ctr_delayed[gi] & ~clk;
		
		// instantiate sub monitors
		sub_mon #(
			.WIDTH     ( WIDTH    )
		) u_sub_mon (
			.clk       ( clk_sub[gi] ),
			.reset     ( reset    ),
			
			.i_a       ( a    [(gi+1)*WIDTH-1:gi*WIDTH] ),
			.i_b       ( b    [(gi+1)*WIDTH-1:gi*WIDTH] ),
			.o_mon_o   ( o_mon[(gi+1)*WIDTH-1:gi*WIDTH] )
		);
	end endgenerate

endmodule
