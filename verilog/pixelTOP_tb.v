//====================================================================
//        Copyright (c) 2021 Carsten Wulff Software, Norway
// ===================================================================
// Created       : wulff at 2021-7-21
// ===================================================================
//  The MIT License (MIT)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
//====================================================================


`timescale 1 ns / 1 ps

//====================================================================
// Testbench for pixelSensor
// - clock
// - instanciate pixel
// - State Machine for controlling pixel sensor
// - Model the ADC and ADC
// - Readout of the databus
// - Stuff neded for testbench. Store the output file etc.
//====================================================================
module test;

   //------------------------------------------------------------
   // Testbench clock
   //------------------------------------------------------------
   logic clk =0;
   logic state_reset =1;
   parameter integer clk_period = 500;
   parameter integer sim_end = clk_period*2400;
   always #clk_period clk=~clk;

   logic [5:0]          exposeCycles_pixel = 10;
   logic [7:0]          pixelDataOut1;
   logic [7:0]          pixelDataOut2;

   //------------------------------------------------------------
   // instantiate TOP module
   //------------------------------------------------------------
 
   pixelTOP top1(
                   .clk(clk),   
                   .state_reset(state_reset),
                   .exposeCycles_pixel(exposeCycles_pixel),

                   .pixelDataOut1(pixelDataOut1),
                   .pixelDataOut2(pixelDataOut2)
                  );

   //------------------------------------------------------------
   // Testbench stuff
   //------------------------------------------------------------
   initial begin
     begin
      
        #clk_period state_reset = 1;
       // read_finished_tieoff = 0;

        #clk_period  state_reset = 0;

       //#clk_period read_finished_tieoff = 1;

        $dumpfile("pixelTOP_tb.vcd");
        $dumpvars(0,test);

        #sim_end
          $stop;

     end
   end

endmodule // test
