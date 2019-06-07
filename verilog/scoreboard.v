module scoreboard #(
	// unused parameter
	parameter WIDTH = 32
)(
	input clk,
	input reset,

	input  i_freeze,
	input  i_mon_ready,
	input  [WIDTH-1:0] i_diff,
	
	output [31:0] o_data_ctr,
	output [31:0] o_error_ctr,
	output [31:0] o_maxacc,
	output [31:0] o_minacc
	
);

	wire enable;
	// scoreboard enabled if HPS not asking it to freeze,
	// and if monitor is ready and producing meaningful data.
	assign enable = !i_freeze && i_mon_ready;

	// ---------------------------------------
	// counters
	reg [31:0] data_ctr;
	reg [31:0] error_ctr;

	always @(posedge clk)
		if (reset) begin
			error_ctr <= {32{1'b0}};
			data_ctr  <= {32{1'b0}};
		end
		else if (enable) begin
			data_ctr <= data_ctr + 1'b1;
			// report an error if i_diff is not all 0
			if (|i_diff)
				error_ctr <= error_ctr + 1'b1;
		end
	
	assign o_data_ctr = data_ctr;
	assign o_error_ctr = error_ctr;
		
	// ---------------------------------------
	// accuracy measurements
	reg [5:0] acc;

	wire [31:0] padded_diff;
	assign padded_diff = {i_diff, {32-WIDTH{1'b0}}};
	
	always @(posedge clk)
		casex(padded_diff)
			32'b1xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: acc <= 6'h00;
			32'b01xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx: acc <= 6'h01;
			32'b001xxxxxxxxxxxxxxxxxxxxxxxxxxxxx: acc <= 6'h02;
			32'b0001xxxxxxxxxxxxxxxxxxxxxxxxxxxx: acc <= 6'h03;
			32'b00001xxxxxxxxxxxxxxxxxxxxxxxxxxx: acc <= 6'h04;
			32'b000001xxxxxxxxxxxxxxxxxxxxxxxxxx: acc <= 6'h05;
			32'b0000001xxxxxxxxxxxxxxxxxxxxxxxxx: acc <= 6'h06;
			32'b00000001xxxxxxxxxxxxxxxxxxxxxxxx: acc <= 6'h07;
			32'b000000001xxxxxxxxxxxxxxxxxxxxxxx: acc <= 6'h08;
			32'b0000000001xxxxxxxxxxxxxxxxxxxxxx: acc <= 6'h09;
			32'b00000000001xxxxxxxxxxxxxxxxxxxxx: acc <= 6'h0a;
			32'b000000000001xxxxxxxxxxxxxxxxxxxx: acc <= 6'h0b;
			32'b0000000000001xxxxxxxxxxxxxxxxxxx: acc <= 6'h0c;
			32'b00000000000001xxxxxxxxxxxxxxxxxx: acc <= 6'h0d;
			32'b000000000000001xxxxxxxxxxxxxxxxx: acc <= 6'h0e;
			32'b0000000000000001xxxxxxxxxxxxxxxx: acc <= 6'h0f;
			32'b00000000000000001xxxxxxxxxxxxxxx: acc <= 6'h10;
			32'b000000000000000001xxxxxxxxxxxxxx: acc <= 6'h11;
			32'b0000000000000000001xxxxxxxxxxxxx: acc <= 6'h12;
			32'b00000000000000000001xxxxxxxxxxxx: acc <= 6'h13;
			32'b000000000000000000001xxxxxxxxxxx: acc <= 6'h14;
			32'b0000000000000000000001xxxxxxxxxx: acc <= 6'h15;
			32'b00000000000000000000001xxxxxxxxx: acc <= 6'h16;
			32'b000000000000000000000001xxxxxxxx: acc <= 6'h17;
			32'b0000000000000000000000001xxxxxxx: acc <= 6'h18;
			32'b00000000000000000000000001xxxxxx: acc <= 6'h19;
			32'b000000000000000000000000001xxxxx: acc <= 6'h1a;
			32'b0000000000000000000000000001xxxx: acc <= 6'h1b;
			32'b00000000000000000000000000001xxx: acc <= 6'h1c;
			32'b000000000000000000000000000001xx: acc <= 6'h1d;
			32'b0000000000000000000000000000001x: acc <= 6'h1e;
			32'b00000000000000000000000000000001: acc <= 6'h1f;
			32'b00000000000000000000000000000000: acc <= 6'h20;
			default:                              acc <= 6'h00;
		endcase

	
	// ---------------------------------------
	// accuracy statistics
	reg [5:0] maxacc;
	reg [5:0] minacc;
	always @(posedge clk)
		if (reset) begin
			maxacc <= 6'h00;
			minacc <= 6'h20;
		end
		else if (enable) begin
			if (acc > maxacc)
				maxacc <= acc;
			if (acc < minacc)
				minacc <= acc;
		end
		
	assign o_maxacc = {{32-WIDTH{1'b0}}, maxacc};
	assign o_minacc = {{32-WIDTH{1'b0}}, minacc};
endmodule
