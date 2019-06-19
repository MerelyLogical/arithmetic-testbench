module monitor #(
	parameter WIDTH       = 32,
	parameter NUM_SUB_MON = 2
)(
	input clk,
	input reset,

	input  [WIDTH-1:0] i_dut_ia,
	input  [WIDTH-1:0] i_dut_ib,
	input  [WIDTH-1:0] i_dut_os,
	
	output             o_mon_ready,
	output [WIDTH-1:0] o_diff
);

	// one hot counter for distributer
	// this runs on clk_dut and gives inputs out in a round-robin fashion
	reg [NUM_SUB_MON-1:0] dist_ctr;
	reg [NUM_SUB_MON-1:0] dist_ctr_delayed;
	always @(posedge clk) begin
		if (reset) begin
			dist_ctr        [NUM_SUB_MON-1]   <= 1'b1;
			dist_ctr        [NUM_SUB_MON-2:0] <= {(NUM_SUB_MON-1){1'b0}};
		end
		else begin
			dist_ctr              [0] <= dist_ctr[NUM_SUB_MON-1];
			dist_ctr[NUM_SUB_MON-1:1] <= dist_ctr[NUM_SUB_MON-2:0];
		end
	end
	
	always @(negedge clk)
		if (reset)
			dist_ctr_delayed[NUM_SUB_MON-1:0] <= {NUM_SUB_MON{1'b0}};
		else
			dist_ctr_delayed          <= dist_ctr;
	
	reg        [WIDTH-1:0] a       [NUM_SUB_MON-1:0];
	reg        [WIDTH-1:0] b       [NUM_SUB_MON-1:0];
	reg        [WIDTH-1:0] o_dut   [NUM_SUB_MON-1:0];
	wire       [WIDTH-1:0] o_mon   [NUM_SUB_MON-1:0];
	// dtm = dut throught sub monitor
	wire       [WIDTH-1:0] o_dtm   [NUM_SUB_MON-1:0];
	reg        [WIDTH-1:0] sub_diff[NUM_SUB_MON-1:0];
	reg        [WIDTH-1:0] diff;
	wire [NUM_SUB_MON-1:0] mat_diff[WIDTH-1:0];
	
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
				2'b10:   ready_ctr <= 2'b11;
				2'b11:	ready_ctr <= 2'b11;
				default: ready_ctr <= 2'b00;
			endcase
	end
	assign o_mon_ready = &ready_ctr;
	
	// fix output to 0 if not ready
	assign o_diff = (&ready_ctr) ? diff : {WIDTH{1'b0}};

	genvar gi, gj;
	generate
	
	for (gi=0; gi<NUM_SUB_MON; gi=gi+1) begin: gen_sub_mon
		always @(posedge clk)
			if (reset) begin
				a    [gi] <= {WIDTH{1'b0}};
				b    [gi] <= {WIDTH{1'b0}};
				o_dut[gi] <= {WIDTH{1'b0}};
			end
			else if (dist_ctr[gi]) begin
				// assign inputs to sub_monitors
				a    [gi] <= i_dut_ia;
				b    [gi] <= i_dut_ib;
				o_dut[gi] <= i_dut_os;
			end

		always @(posedge clk)
			if (reset)
				sub_diff [gi] <= {WIDTH{1'b0}};
			else if (dist_ctr[gi])
				sub_diff [gi] <= o_dtm[gi] ^ o_mon[gi];
			else
				sub_diff [gi] <= {WIDTH{1'b0}};
		
		// instantiate sub monitors
		sub_mon #(
			.WIDTH     ( WIDTH )
		) u_sub_mon (
			.clk       ( clk ),
			.enable    ( dist_ctr_delayed[gi] ),
			.reset     ( reset    ),
			
			.i_a       ( a    [gi] ),
			.i_b       ( b    [gi] ),
			.i_dut_o   ( o_dut[gi] ),
			.o_mon_o   ( o_mon[gi] ),
			.o_dtm_o   ( o_dtm[gi] )
		);
		
	end
	
	for (gj=0; gj<WIDTH; gj=gj+1) begin: gen_mat_outer
		for (gi=0; gi<NUM_SUB_MON; gi=gi+1) begin: gen_mat_inner
			assign mat_diff[gj][gi] = sub_diff [gi][gj];
		end
	end
	
	for (gj=0; gj<WIDTH; gj=gj+1) begin: gen_diff
		always @(posedge clk)
			diff[gj] <= |mat_diff[gj];
	end
	
	endgenerate
endmodule
