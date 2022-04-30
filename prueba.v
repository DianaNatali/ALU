module prueba  (
    input  [15:0] a,
    input  [15:0] b,
    output [15:0] out_and,
    output [15:0] out_or,
    output [15:0] out_nand,
    output [15:0] out_nor,
    output [15:0] out_xor,
    output [15:0] out_xnor
);


//bitwise operation
assign out_and = a && b;  //And
assign out_or = a || b;  //Or
assign out_nand = ~(a && b);  //Nand
assign out_nor = ~(a || b);  //Nor
assign out_xor = ~a&&b || a&&~b; //Xor 
assign out_xnor = ~(~a&&b || a&&~b); //Xnor 


endmodule