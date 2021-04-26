module latchsr (
    output wire Q,
    input wire  R, S 
);
    reg rQ , rQn ; 
    always @(R,S) begin
        if(R != S || S == 0 )
        begin
            rQ  = !(R && rQn);
            rQn = !(S && rQ);             
        end
    end
    assign Q = rQ; 
endmodule