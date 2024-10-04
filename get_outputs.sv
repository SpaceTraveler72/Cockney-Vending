module get_outputs(
	input logic [3:0] state,
	output logic gruel, 
	output logic [2:0] change
);

assign gruel = state[2] | state[3];
assign 


endmodule
