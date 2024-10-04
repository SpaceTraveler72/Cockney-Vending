module get_outputs(
	input logic [3:0] state,
	output logic gruel, 
	output logic [2:0] change
);

assign gruel = state[2] | state[3];

// Find change
mux2_1(.A1(0), .A2(state[0]), .selector(state[2] & ~state[3]), .result(change[0]));
mux2_1(.A1(0), .A2(state[1]), .selector(state[2] & ~state[3]), .result(change[1]));
assign change[2] = state[3];


endmodule
