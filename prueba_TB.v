`timescale 1ps/1ps
`include "prueba.v"

module prueba_TB ();
    reg input1_prueba_TB;
    reg input2_prueba_TB;

    prueba uut (
        .a(input1_prueba_TB),
        .b(input2_prueba_TB)
    );

    initial begin
        input1_prueba_TB = 16'b0000;
        input2_prueba_TB = 16'b0; 
        #2;
        input1_prueba_TB = 16'b1;
        #2;
        input2_prueba_TB = 16'b1;
    end

    initial begin: TEST_CASE
        $dumpfile("prueba.vcd");
        $dumpvars(-1,uut);
        #100 $finish;
    end

endmodule