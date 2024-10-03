module seven_seg(
	input logic [3:0]a,
	output logic [6:0]result
);

logic [15:0]decode;
dec416(.a(a[3:0]), .result(decode));

assign result[0] = decode[1] | decode[4] | decode[11] | decode[13];
assign result[1] = decode[5] | decode[6] | decode[11] | decode[12] | decode[14] | decode[15];
assign result[2] = decode[2] | decode[12] | decode[14] | decode[15];
assign result[3] = decode[1] | decode[4] | decode[7] | decode[10] | decode[15];
assign result[4] = decode[1] | decode[3] | decode[4] | decode[5] | decode[7] | decode[9];
assign result[5] = decode[1] | decode[2] | decode[3] | decode[7] | decode[13];
assign result[6] = decode[0] | decode[1] | decode[7] | decode[12];



endmodule
