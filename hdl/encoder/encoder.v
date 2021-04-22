module encoder (
    input wire [9:0] key,
    input wire clk,
    input wire enablen,
    output reg [3:0] D,
    output wire pgt_1Hz,
    output wire loadn
);

    assign loadn = enablen | clk;
    
endmodule