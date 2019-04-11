module monitor #(
	// placeholder. doesn't support other widths.
	parameter WIDTH       = 32,
	parameter NUM_SUB_MON = 4
)(
	input clk,
	input reset,

	input  [WIDTH-1:0] i_dut_ia,
	input  [WIDTH-1:0] i_dut_ib,
	input  [WIDTH-1:0] i_dut_os,
	output o_event
);

	// one hot counter for distributer
	// this runs on clk_dut and gives inputs out in a round-robin fashion
	reg [NUM_SUB_MON-1:0] dist_ctr;
	reg [NUM_SUB_MON-1:0] dist_ctr_delayed;
	always @(posedge clk) begin
		if (reset) begin
			dist_ctr[NUM_SUB_MON-1]           <= 1'b1;
			dist_ctr[NUM_SUB_MON-2:0]         <= 0;
			dist_ctr_delayed[NUM_SUB_MON-1:0] <= 0;
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
	reg  [NUM_SUB_MON-1:0] sub_event;
	reg  [NUM_SUB_MON-1:0] sub_event_delayed;
	wire [NUM_SUB_MON-1:0] clk_sub;
	
	always @(posedge clk)
		sub_event_delayed <= sub_event;

	// to show when monitors are ready after reset
	// this happens at the cycle after distributer has returned to the first position
	reg [1:0] ready_ctr;
	always @(posedge clk) begin
		if (reset)
			ready_ctr <= 2'b00;
		else if (dist_ctr[0])
			case (ready_ctr)
				2'b00:   ready_ctr <= 2'b01;
				2'b01:   ready_ctr <= 2'b10;
				2'b10:   ready_ctr <= 2'b10;
				default: ready_ctr <= 2'b00;
			endcase
	end
	
	// fix output to 0 if not ready
	assign o_event = ready_ctr[1] ? |(sub_event & ~sub_event_delayed) : 0;
	
	genvar gi;
	generate for (gi=0; gi<NUM_SUB_MON; gi=gi+1) begin: gen_mon
		always @(posedge clk)
			if (dist_ctr[gi]) begin
				// assign inputs to sub_monitors
				a    [(gi+1)*WIDTH-1:gi*WIDTH] <= i_dut_ia;
				b    [(gi+1)*WIDTH-1:gi*WIDTH] <= i_dut_ib;
				o_dut[(gi+1)*WIDTH-1:gi*WIDTH] <= i_dut_os;
				// gather events from sub_monitors' last test back
				sub_event[gi] <= o_dut[(gi+1)*WIDTH-1:gi*WIDTH] != o_mon[(gi+1)*WIDTH-1:gi*WIDTH];
			end else
				sub_event[gi] <= 1'b0;

		// sub monitors run on delayed clock to ensure data has been written in
		assign clk_sub[gi] = dist_ctr_delayed[gi];
		
		// instantiate sub monitors
		sub_mon #(
			.WIDTH     ( WIDTH    )
		) u_sub_mon (
			.clk       ( clk_sub[gi] ),
			// .reset     ( reset    ),
			
			.i_a       ( a    [(gi+1)*WIDTH-1:gi*WIDTH] ),
			.i_b       ( b    [(gi+1)*WIDTH-1:gi*WIDTH] ),
			.o_mon_o   ( o_mon[(gi+1)*WIDTH-1:gi*WIDTH] )
		);
	end endgenerate

endmodule
