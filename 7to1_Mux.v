module mux_7to1(input [6:0] in,
				input [2:0] sel,
				output reg out);

always @ (sel or in) begin
case (sel)
	3'b000 : out <= in[0];
	3'b001 : out <= in[1];
	3'b010 : out <= in[2];
	3'b011 : out <= in[3];
	3'b100 : out <= in[4];
	3'b101 : out <= in[5];
	3'b110 : out <= in[6];
	3'b111 : out <= 1'b1;
	endcase
end
endmodule
