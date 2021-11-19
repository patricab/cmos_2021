`timescale 1 ns / 1 ps

module test;
    logic clk =0;
    logic reset = 0;
    logic read = 0;
    logic [3:0] out;


   always #5 clk=~clk;
   
    //Instanciate the pixel array

    shiftReg sr1(
                .clk(clk),
                .reset(reset),
                .read(read),
                .out(out)
    );

  initial begin
       $dumpfile("shiftReg.vcd");
       $dumpvars(0,test);
      
      #10 reset = 1; 
      #10 reset=0;
      #10 read =1;
      #5 read=0;

       #40
        $stop;

    end
endmodule // test
