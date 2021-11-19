

module pixelArray (
    input logic          bias_clk,
    input logic          ramp_clk,
    input logic          mem_reset,
    input logic          pixel_erase,
    input logic          pixel_expose,
    input logic   [1:0]  mem_read,
    
    
    inout[7:0]           pixData1,
    inout[7:0]           pixData2
);
    
PIXEL_SENSOR  ps11(
                    .VBN1(bias_clk), 
                    .RAMP(ramp_clk), 
                    .MEMRESET(mem_reset), 
                    .PIXELERASE(pixel_erase), 
                    .EXPOSE(pixel_expose), 
                    .READ(mem_read[1]),
                    .DATA(pixData1)
                    );

PIXEL_SENSOR  ps21(
                    .VBN1(bias_clk), 
                    .RAMP(ramp_clk), 
                    .MEMRESET(mem_reset), 
                    .PIXELERASE(pixel_erase), 
                    .EXPOSE(pixel_expose), 
                    .READ(mem_read[0]),
                    .DATA(pixData1)
                    );

PIXEL_SENSOR  ps12(
                    .VBN1(bias_clk), 
                    .RAMP(ramp_clk), 
                    .MEMRESET(mem_reset), 
                    .PIXELERASE(pixel_erase), 
                    .EXPOSE(pixel_expose), 
                    .READ(mem_read[1]),
                    .DATA(pixData2)
                    );

PIXEL_SENSOR  ps22(
                    .VBN1(bias_clk), 
                    .RAMP(ramp_clk), 
                    .MEMRESET(mem_reset), 
                    .PIXELERASE(pixel_erase), 
                    .EXPOSE(pixel_expose), 
                    .READ(mem_read[0]),
                    .DATA(pixData2)
                    );


endmodule