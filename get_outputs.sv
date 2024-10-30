module get_outputs(
	input logic [3:0] state,
	output logic gruel, 
	output logic [2:0] change
);

assign gruel = state[2] | state[3];

assign change[0] = (state[2] & ~state[3]) & state[0];
assign change[1] = (state[2] & ~state[3]) & state[1];

assign change[2] = state[3];


endmodule
