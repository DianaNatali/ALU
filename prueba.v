module prueba  (
    input  [15,0] a,
    input  [15,0] b,
    output [15,0] x_out,
);


//bitwise operation
assign x_out = a && b;  //And
assign x_out = a || b;  //Or
assign x_out = ~(a && b);  //Nand
assign x_out = ~(a || b);  //Nor
assign x_out = ~a&&b || a&&~b; //Xor
assign x_out = ~(~a&&b || a&&~b); //Xnor 


endmodule