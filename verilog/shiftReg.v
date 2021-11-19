module shiftReg(
   // input logic data,
    input logic clk, 
    input logic reset,//see whether exposure should be a time rater than cycle signal. 
    input logic read,
    
    output reg [3:0] out
    );


    logic data =0;
    always @(posedge read) begin
       out <=4'b1000;
    end

    always @(posedge clk) begin

            if (reset) begin
                out <=4'b0000;
            end
            else begin
                    out <= {data, out[3:1]};   //0000 <=bit into LSB. Sjekk dette med en TB
                /*else begin
                    out <= out;
                end*/
            end
            
                
            
    end
endmodule // counter
