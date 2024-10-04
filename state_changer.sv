module state_changer(
	input logic [3:0] newState,
	input logic clk, reset,
	output logic [3:0] state
);

logic [3:0] notState;

D_FF_neg latch0(.D(newState[0]), .CLKb(clk), .RSTb(reset), .Q(state[0]), .Qb(notState[0]));
D_FF_neg latch1(.D(newState[1]), .CLKb(clk), .RSTb(reset), .Q(state[1]), .Qb(notState[1]));
D_FF_neg latch2(.D(newState[2]), .CLKb(clk), .RSTb(reset), .Q(state[2]), .Qb(notState[2]));
D_FF_neg latch3(.D(newState[3]), .CLKb(clk), .RSTb(reset), .Q(state[3]), .Qb(notState[3]));

endmodule