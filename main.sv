module main(
	input logic [2:0] switches, 
	input logic [1:0] buttons, 
	input logic realClk, 
	output logic [4:0] outputLED, 
	output logic [3:0] stateLED, 
	output logic [6:0] stateDisplay, changeDisplay
);

logic [3:0] coinInput, storedState, newState;
logic [1:0] coins;
logic clk, reset;

assign coinInput[0] = ~(switches[0] | switches[1] | switches[2]);
assign coinInput[1] = switches[0];
assign coinInput[2] = switches[1];
assign coinInput[3] = switches[2];

//clean button inputs. Button 0 is the clk, button 1 is reset
debouncer cleanClk(.A_noisy(buttons[0]), .CLK50M(realClk), .A(clk));
debouncer CleanReset(.A_noisy(buttons[1]), .CLK50M(realClk), .A(reset));

//encodes the coins 
encoder4_2 encodeCoins(.A(coinInput), .result(coins));
state_transitions changeState(.coins(coins), .currentState(storedState), .newState(newState));

//latch the states
state_changer(.newState(newState), .clk(clk), .reset(reset), .state(storedState));



endmodule