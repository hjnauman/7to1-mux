`timescale 1 ns/ 10 ps
module mux_7to1_tb;

	reg [6:0] in;
	wire out;
	reg [2:0] sel;

	mux_7to1 mux0 ( .in (in),
					.out (out),
					.sel (sel));

	initial begin
		 in[0] <= 1'b0;
		 in[1] <= 1'b1;
		 in[2] <= 1'b0;
		 in[3] <= 1'b1;
		 in[4] <= 1'b0;
		 in[5] <= 1'b1;
		 in[6] <= 1'b0;

		 sel <= 3'b000; 
		#10 sel <= 3'b001;
		#10 sel <= 3'b010;
		#10 sel <= 3'b011;
		#10 sel <= 3'b100;
		#10 sel <= 3'b101;
		#10 sel <= 3'b110;
		#10 sel <= 3'b111;
		#10;
	end
endmodule


