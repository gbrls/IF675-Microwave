module timer (
    input wire [3:0] data_in,
    input wire loadn, clock, clear, enable,
    output wire [3:0] sec_ones, sec_tens, mins,
    output wire tc, zero
);
    // wire [3:0] sec_out, ten_sec_out;
    wire en_tens_sec, en_min, en_sec;
    wire zero_sec, zero_ten_sec, zero_min;

    counter_4bit_dec seconds(.loadn(loadn), .clock(clock), .clear(clear), .enable(enable), .data_in(data_in), .data_out(sec_ones), .tc(en_tens_sec), .zero(zero_sec));

    counter_4bit_hex ten_secs(.loadn(loadn), .clock(clock), .clear(clear), .enable(en_tens_sec), .data_in(sec_ones), .data_out(sec_tens), .tc(en_min), .zero(zero_ten_sec));

    counter_4bit_dec minutes(.loadn(loadn), .clock(clock), .clear(clear), .enable(en_min), .data_in(sec_tens), .data_out(mins), .tc(en_sec), .zero(zero_sec));

    and(zero, zero_sec, zero_ten_sec, zero_min);
    
    assign zero = zero_sec & zero_ten_sec && zero_min;

endmodule
