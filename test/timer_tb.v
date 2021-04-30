`timescale 1us/1ps
module encoder_tb ();

    reg [3:0] data_in;
    reg loadn, clear, clock, enable;

    integer i;

    timer DUT(.data_in(data_in), .loadn(loadn), .clock(clock),
    .clear(clear), .enable(enable));

    initial begin
        $dumpfile("test/timer_tb.vcd");
        $dumpvars;
        
        for(i = 0; i < 3005; i++) begin
            #5000 clock <= ~clock;
        end
    end


    initial begin
        loadn = 0;
        clear = 0;
        clock = 1;
        enable = 1;
        data_in = 4'd5;
        #16000;
        loadn = 1;
        #100000;
        clear = 1;
        #8000;
        clear = 0;
    end
    
endmodule