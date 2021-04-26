module control (
    input wire startn , stopn , clearn, door_closed, timer_done, 
    output reg mag_on
); 

    reg rS  = 0 , rR =0  ;
    wire rQ  ; 
    latchsr LSR_ON(.Q(rQ), .S(rS), .R(rR)); 
    always @(startn, stopn,clearn,door_closed,timer_done) begin
        if(!startn  && door_closed)
        begin
            rS= 1; 
            rR = 0; 
            mag_on = rQ; 
        end
        else if(!stopn || timer_done || !door_closed )
        begin
            rS = 0 ; 
            rR = 1 ; 
            mag_on = rQ ; 
        end
        else 
        begin
            rS= 0 ;
            rR = 0 ; 
            mag_on = rQ; 
        end
    end
    always @(startn, door_closed, timer_done) begin
        
    end

endmodule