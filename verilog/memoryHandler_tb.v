`timescale 1 ns / 1 ps

module test;
    logic clk =0;
    logic frame_reset = 0;
    logic read = 0;
    logic [7:0] pixData1 = 8'b10101010; //simulating two paralell pixels for this tb. 
    logic [7:0] pixData2= 8'b11111111;


    logic [7:0] pixelDataOut1;
    logic [7:0] pixelDataOut2;
    logic [3:0] read_select;


   always #5 clk=~clk;
   

    memoryHandler m1(
                .clk(clk),
                .frame_reset(frame_reset),
                .read(read),
                .pixData1(pixData1),
                .pixData2(pixData2),

                .pixelDataOut1(pixelDataOut1),
                .pixelDataOut2(pixelDataOut2),
                .read_select(read_select)
    );

  initial begin
       $dumpfile("memoryHandler.vcd");
       $dumpvars(0,test);
      #10 read =1;

      #50
      read=0;

       #40
        $stop;

    end
endmodule // test
