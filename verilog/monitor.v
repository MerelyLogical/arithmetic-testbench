module monitor #(
	parameter WIDTH       = 32,
	parameter NUM_SUB_MON = 2
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
	always @(posedge clk or posedge reset) begin
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
	wire [NUM_SUB_MON-1:0] clk_sub;
	wire [NUM_SUB_MON-1:0] sub_event_out;

	// to show when monitors are ready after reset
	// this happens at the cycle after distributer has returned to the first position
	reg [1:0] ready_ctr;
	always @(posedge clk or posedge reset) begin
		if (reset)
			ready_ctr <= 2'b00;
		else if (dist_ctr[0])
			case (ready_ctr)
				2'b00:   ready_ctr <= 2'b01;
				2'b01:   ready_ctr <= 2'b10;
				2'b10:   ready_ctr <= 2'b11;
				2'b11:	ready_ctr <= 2'b11;
				default: ready_ctr <= 2'b00;
			endcase
	end
	
	// fix output to 0 if not ready
	assign o_event = (&ready_ctr) ? (|sub_event_out) : 1'b0;
	
	genvar gi;
	generate for (gi=0; gi<NUM_SUB_MON; gi=gi+1) begin: gen_mon
		always @(posedge dist_ctr[gi] or posedge reset)
			if (reset) begin
				a    [(gi+1)*WIDTH-1:gi*WIDTH] <= {WIDTH{1'b0}};
				b    [(gi+1)*WIDTH-1:gi*WIDTH] <= {WIDTH{1'b0}};
				o_dut[(gi+1)*WIDTH-1:gi*WIDTH] <= {WIDTH{1'b0}};
			end
			else begin
				// assign inputs to sub_monitors
				a    [(gi+1)*WIDTH-1:gi*WIDTH] <= i_dut_ia;
				b    [(gi+1)*WIDTH-1:gi*WIDTH] <= i_dut_ib;
				o_dut[(gi+1)*WIDTH-1:gi*WIDTH] <= i_dut_os;
			end
		
		always @(posedge clk or posedge reset)
			if (reset)
				sub_event[gi] <= 1'b0;
			else
				// gather events from sub_monitors' last test back
				sub_event[gi] <= o_dut[(gi+1)*WIDTH-1:gi*WIDTH] != o_mon[(gi+1)*WIDTH-1:gi*WIDTH];
				
		// set event out to zero when not its turn
		assign sub_event_out[gi] = sub_event[gi] && dist_ctr[gi];
		
		// sub monitors run on delayed clock to ensure data has been written in
		assign clk_sub[gi] = dist_ctr_delayed[gi];
		
		// instantiate sub monitors
		sub_mon #(
			.WIDTH     ( WIDTH )
		) u_sub_mon (
			.clk       ( clk_sub[gi] ),
			// .reset     ( reset    ),
			
			.i_a       ( a    [(gi+1)*WIDTH-1:gi*WIDTH] ),
			.i_b       ( b    [(gi+1)*WIDTH-1:gi*WIDTH] ),
			.o_mon_o   ( o_mon[(gi+1)*WIDTH-1:gi*WIDTH] )
		);
		
		/*
		// Comparator module to find position of first wrong digit
		// Can be disabled and then only correctness will be provided as output
		comparator #(
			.WIDTH     ( WIDTH )
		) u_comparator (
			.clk       ( dist_ctr[gi] ),
			.i_dut     (),
			.i_mon     (),
			.o_err     (),
		*/
		
	end endgenerate

endmodule
