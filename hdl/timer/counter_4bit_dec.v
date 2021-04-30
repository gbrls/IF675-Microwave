module counter_4bit_dec (
        output reg [3:0] data_out,
        output wire tc, zero,
        input wire loadn, clock, clear, enable,
        input wire [3:0] data_in
    );

    always @(posedge clock or negedge clear) begin
        begin: COUNTER
            if (!clear)
                data_out <= 4'b0000;
                tc = 1;
                zero = 1;
            else begin
                if (enable) begin
                    if (loadn) begin
                        if (data_in == 4'b0000) begin
                            data_out <= 4'b0101;
                            tc = 1;
                            zero = 1;
                        end
                        else
                            data_out = data_in;
                    end
                    else begin
                        data_out <= data_in - 1;
                        tc = 0;
                        zero = 0;
                    end
                end
            end
        end
    end

endmodule