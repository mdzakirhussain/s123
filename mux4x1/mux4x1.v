module mux4x1 (
    input  wire I0,
    input  wire I1,
    input  wire I2,
    input  wire I3,
    input  wire S0,
    input  wire S1,
    output wire Y
);

assign Y = (S1 == 1'b0 && S0 == 1'b0) ? I0 :
           (S1 == 1'b0 && S0 == 1'b1) ? I1 :
           (S1 == 1'b1 && S0 == 1'b0) ? I2 :
                                       I3;

endmodule