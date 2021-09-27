`ifndef PACKAGE_COMMON
`define PACKAGE_COMMON

package common
    // 8 bit 2-1 Multiplexer (MUX) with enable
    module dmux1_2 (
        input [7:0] in,
        input sel,
        input enable,
        output [7:0] out1,
        output [7:0] out2
    );
    // Switch which output based on sel signal
    always @(sel, enable) begin
        if (enable == 1'b1) begin
            case (sel)
                1'b0: begin
                    out1 <= in;
                    out2 <= 8'h0;
                end
                1'b1: begin
                    out1 <= 8'h0;
                    out2 <= in;
                end
            endcase
        end else begin
            out1 <= 8'h0;
            out2 <= 8'h0;
        end
    end
    endmodule

    //new code
endpackage

import common::*

`endif