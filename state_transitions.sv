module state_transitions(
	input logic [1:0] coins,
	input logic [3:0] currentState,
	output logic [3:0] newState
);

logic [1:0] ts;
logic [15:0] expandedNewState;

//Convert any state larger than 3 to state 0 since tansitions are identical
state3PlusTo0 shrinkState(.state(currentState), .tinyState(ts));

//Solve for which state to transition to
assign expandedNewState[0] = ~ts[1] & ~ts[0] & ~coins[1] & ~coins[0];
assign expandedNewState[1] = (~ts[1] & ts[0] & ~coins[1] & ~coins[0]) | (~ts[1] & ~ts[0] & ~coins[1] & coins[0]);
assign expandedNewState[2] = (~ts[1] & ~ts[0] & coins[1] & ~coins[0]) | (~ts[1] & ts[0] & ~coins[1] & coins[0]) | (ts[1] & ~ts[0] & ~coins[1] & ~coins[0]);
assign expandedNewState[3] = (~ts[1] & ts[0] & coins[1] & ~coins[0]) | (ts[1] & ts[0] & ~coins[1] & ~coins[0]) | (ts[1] & ~ts[0] & ~coins[1] & coins[0]);
assign expandedNewState[4] = (ts[1] & ~ts[0] & coins[1] & ~coins[0]) | (ts[1] & ts[0] & ~coins[1] & coins[0]);
assign expandedNewState[5] = (~ts[1] & ~ts[0] & coins[1] & coins[0]) | (ts[1] & ts[0] & coins[1] & ~coins[0]);
assign expandedNewState[6] = (~ts[1] & ts[0] & coins[1] & coins[0]);
assign expandedNewState[7] = (ts[1] & ~ts[0] & coins[1] & coins[0]);
assign expandedNewState[8] = (ts[1] & ts[0] & coins[1] & coins[0]);


//encode the new state
encoder16_4 encodeState(.A(expandedNewState), .result(newState));


endmodule