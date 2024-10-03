module encoder4_2 (
	input logic [3:0]A,
	output logic [1:0] result
);

assign result[0] = A[3] | A[1];
assign result[1] = A[3] | A[2];

endmodule