module Dadda_Multiplier (A,B,Product);
  input [7:0]A,B;
  output [15:0]Product;
  wire [7:0]PP0,PP1,PP2,PP3,PP4,PP5,PP6,PP7;
  
  Main_PP_Generation Main_PP_Gen (
    .A(A),
    .B(B),
    .PP0(PP0),
    .PP1(PP1),
    .PP2(PP2),
    .PP3(PP3),
    .PP4(PP4),
    .PP5(PP5),
    .PP6(PP6),
    .PP7(PP7)
    );
  
  Adder_Block Adder_Part (
    .PP0(PP0),
    .PP1(PP1),
    .PP2(PP2),
    .PP3(PP3),
    .PP4(PP4),
    .PP5(PP5),
    .PP6(PP6),
    .PP7(PP7),
    .Product(Product)
    );
    
  endmodule