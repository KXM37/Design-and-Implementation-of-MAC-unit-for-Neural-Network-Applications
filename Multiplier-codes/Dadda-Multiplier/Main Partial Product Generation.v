module Main_PP_Generation (A,B,PP0,PP1,PP2,PP3,PP4,PP5,PP6,PP7);
  input [7:0]A,B;
  output [7:0]PP0,PP1,PP2,PP3,PP4,PP5,PP6,PP7;
  
  Partial_Product_Generation P0 (
    .A(A),
    .B(B[0]),
    .PP(PP0)
    );
  
  Partial_Product_Generation P1 (
    .A(A),
    .B(B[1]),
    .PP(PP1)
    );    

  Partial_Product_Generation P2 (
    .A(A),
    .B(B[2]),
    .PP(PP2)
    );  
    
  Partial_Product_Generation P3 (
    .A(A),
    .B(B[3]),
    .PP(PP3)
    );
  
  Partial_Product_Generation P4 (
    .A(A),
    .B(B[4]),
    .PP(PP4)
    );    

  Partial_Product_Generation P5 (
    .A(A),
    .B(B[5]),
    .PP(PP5)
    );    
    
    
  Partial_Product_Generation P6 (
    .A(A),
    .B(B[6]),
    .PP(PP6)
    );
  
  Partial_Product_Generation P7 (
    .A(A),
    .B(B[7]),
    .PP(PP7)
    );    
  
endmodule