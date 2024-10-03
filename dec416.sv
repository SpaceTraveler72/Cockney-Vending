module dec416(
	input logic [3:0] a,
	output logic [15:0] result
);

assign result[0] = ~a[0] & ~a[1] & ~a[2] & ~a[3];
assign result[1] = ~a[0] & ~a[1] & ~a[2] & a[3];
assign result[2] = ~a[0] & ~a[1] & a[2] & ~a[3];
assign result[3] = ~a[0] & ~a[1] & a[2] & a[3];

assign result[4] = ~a[0] & a[1] & ~a[2] & ~a[3];
assign result[5] = ~a[0] & a[1] & ~a[2] & a[3];
assign result[6] = ~a[0] & a[1] & a[2] & ~a[3];
assign result[7] = ~a[0] & a[1] & a[2] & a[3];

assign result[8] = a[0] & ~a[1] & ~a[2] & ~a[3];
assign result[9] = a[0] & ~a[1] & ~a[2] & a[3];
assign result[10] = a[0] & ~a[1] & a[2] & ~a[3];
assign result[11] = a[0] & ~a[1] & a[2] & a[3];

assign result[12] = a[0] & a[1] & ~a[2] & ~a[3];
assign result[13] = a[0] & a[1] & ~a[2] & a[3];
assign result[14] = a[0] & a[1] & a[2] & ~a[3];
assign result[15] = a[0] & a[1] & a[2] & a[3];

endmodule