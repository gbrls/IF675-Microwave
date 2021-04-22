`timescale 1us/1ps
module encoder_tb ();

    reg [9:0] key;
    reg clk;
    reg enablen;

    integer i;

    encoder DUT(.key(key), .clk(clk), .enablen(enablen));

    initial begin
        $dumpfile("test/encoder_tb.vcd");
        $dumpvars;
        clk = 1;
        enablen = 0;
        key = 9'b000000000;

        for(i = 0; i < 3005; i++) begin
            #500 clk <= ~clk;
        end


        #10;
    end
    
endmodule