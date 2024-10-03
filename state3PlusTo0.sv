module state3PlusTo0 (
	input logic [3:0] state,
	output lgoic [1:0] tinyState
);

mux2_1(.A1(state[0]), .A2(0), .selector(state[2] | state[3]), .result(tinyState[0]));
mux2_1(.A1(state[1]), .A2(0), .selector(state[2] | state[3]), .result(tinyState[1]));

endmodule