module main(input logic switches[2:0], buttons[1:0], realClk);

and(switches[0], realClk, buttons[1]);
endmodule