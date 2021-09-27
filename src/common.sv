package common
    // 8 bit 2-1 Multiplexer (MUX)
    module 8mux2_1 (
        input [7:0] in1,
        input [7:0] in2,
        input sel,
        output [7:0] out
    );
    // Switch output based on sel signal
    // 0: in1, 1: in2
    out = sel ? in2 : in1; 
    endmodule

endpackage