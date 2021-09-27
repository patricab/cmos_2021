`include "common.sv"

module buffer_4x8 (
    input sel,
    input write_enable,
    input [7:0] row1,
    input [7:0] row2,
    output [7:0] out1,
    output [7:0] out2,
    output [7:0] out3,
    output [7:0] out4
);
    // MUX instantiation 
    dmux1_2 mux1 (.in(row1), .sel(sel), .enable(write_enable), .out1(out1), .out2(out2)); 
    dmux1_2 mux2 (.in(row2), .sel(sel), .enable(write_enable), .out1(out3), .out2(out4)); 
endmodule