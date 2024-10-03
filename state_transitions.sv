module state_transitions(
	input logic [1:0] coins,
	input logic [3:0] currentState,
	output logic [3:0] newState
);

logic [1:0] ts;
logic [15:0] expandedNewState;

//Convert any state larger than 3 to state 0 since tansitions are identical
state3PlusTo0(.state(currentState), .tinyState(ts));

//Solve for which state to transition to
expandedNewState[0] = ~ts[1] & ~ts[0] & ~coins[1] & ~coins[0];
expandedNewState[1] = (~ts[1] & ts[0] & ~coins[1] & coins[0]) | (~ts[1] & ~ts[0] & ~coins[1] & coins[0]);
expandedNewState[2] = (~ts[1] & ~ts[0] & coins[1] & ~coins[0]) | (~ts[1] & ts[0] & ~coins[1] & coins[0]) | (ts[1] & ~ts[0] & ~coins[1] & ~coins[0]);
expandedNewState[3] = 
expandedNewState[4]
expandedNewState[5]
expandedNewState[6]
expandedNewState[7]
expandedNewState[8]



endmodule