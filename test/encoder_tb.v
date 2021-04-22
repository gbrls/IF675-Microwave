`timescale 1ns/1ps
module encoder_tb ();

    reg [9:0] key;
    reg clk;
    reg enablen;

    encoder DUT(.key(key), .clk(clk), .enablen(enablen));

    initial begin
        $dumpfile("test/encoder_tb.vcd");
        $dumpvars;
        clk = 0;
        enablen = 0;
        key = 9'b000000000;
        #1 enablen = 1;
        #1 clk = 0;
        #1 clk = 1;
        #1 enablen = 0;
        #1 clk = 0;
        #1 clk = 1;
        #10;
    end
    
endmodule