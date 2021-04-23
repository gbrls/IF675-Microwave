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

    initial begin
        enablen = 0;
        #20;
        #1 enablen = 1;
        #250 enablen = 0;
        #1 enablen = 1;
        #1 enablen = 0;
        
        #7000;

        #200 enablen = 1;
        #200 enablen = 0;
        #800 enablen = 1;
        #400 enablen = 0;
        #100 enablen = 1;
        #300 enablen = 0;

        #8000;
        enablen = 1;
        #500 enablen = 0;

    end
    
endmodule