module encoder16_4 (
	input logic [15:0] A,
	output logic [3:0] result
);

assign result[0] = A[1] | A[3] | A[5] | A[7] | A[9] | A[11] | A[13] | A[15];
assign result[1] = A[2] | A[3] | A[6] | A[7] | A[10] | A[11] | A[14] | A[15];
assign result[2] = A[4] | A[5] | A[6] | A[7] | A[12] | A[13] | A[14] | A[15];
assign result[3] = A[8] | A[9] | A[10] | A[11] | A[12] | A[13] | A[14] | A[15];

endmodule