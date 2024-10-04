module mux2_1(
	input logic A1, A2, selector,
	output logic result
);

assign result = (A1 & ~selector) | (A2 & selector);


endmodule