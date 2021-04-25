module encoder (
    input wire [9:0] key,
    input wire clk,
    input wire enablen,
    output wire [3:0] D,
    output wire pgt_1Hz,
    output wire loadn
);

    wire int_clr, mux_a, mux_b;

    pencoder penc(.keypad(key), .enablen(enablen), .D(D), .all_off(int_clr));
    dbc debouncer(.clk(clk), .clear(int_clr), .out(mux_a));
    div100 divider(.clk(clk), .clk_div(mux_b));

    mux2x1 mux(.a(mux_a), .b(mux_b), .sel(enablen), .out(pgt_1Hz));

    assign loadn = int_clr;
    
endmodule