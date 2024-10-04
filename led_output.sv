module led_output(
	input logic [3:0] state, 
	input logic gruel, 
	input logic [2:0] change,
	output logic [3:0] stateLED, outputLED
);

assign stateLED = state;

//output led 0 is gruel
//output led 1 is 1 shilling
//output led 2 is 1 florins
//output led 3 is 2 florins
assign outputLED[0] = gruel;
assign outputLED[1] = change[0];
assign outputLED[2] = change[1];
assign outputLED[3] = change[2];


endmodule