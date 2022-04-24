`timescale 1ps/1ps
`include "prueba.v"

module prueba_TB ();
    reg input1_prueba_TB;
    reg input2_prueba_TB;

    prueba uut (
        .input1_prueba(input1_prueba_TB),
        .input2_prueba(input2_prueba_TB)
    );

    initial begin
        input1_prueba_TB = 1'b0;
        input2_prueba_TB = 1'b0; 
        #2;
        input1_prueba_TB = 1'b1;
        #2;
        input2_prueba_TB = 1'b1;
    end

    initial begin: TEST_CASE
        $dumpfile("prueba.vcd");
        $dumpvars(-1,uut);
        #100 $finish;
    end

endmodule