module memoryHandler(
    input logic         clk,
    input logic         frame_reset,
    input logic         read,
    input logic [7:0]   pixData1,
    input logic [7:0]   pixData2,

    output logic [7:0]  pixelDataOut1,
    output logic [7:0]  pixelDataOut2,
    output logic [3:0]  read_select

);

    //Add to memory module
    shiftReg sr1( 
               .clk(clk), 
               .reset(frame_reset), 
               .read(read),
               .out(read_select)
               );

    

   //------------------------------------------------------------
   // Readout from databus
   //------------------------------------------------------------
   //logic [7:0] pixelDataOut1;
   //logic [7:0] pixelDataOut2;
   always_ff @(posedge clk or posedge frame_reset) begin
         if(read) begin
           pixelDataOut1 <= pixData1;
           pixelDataOut2 <= pixData2;
         end
      end

endmodule