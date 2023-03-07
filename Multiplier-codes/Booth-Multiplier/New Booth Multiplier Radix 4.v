module New_Booth_Multiplier_Radix_4 (X,Y,P);
  input [7:0]X,Y;
  output [15:0]P;

  wire [15:0]PP0,PP1,PP2,PP3,PP4;
  
  Main_PP_Block Partial_Product (X,Y,PP0,PP1,PP2,PP3,PP4);
  
  Adder_Tree Adder_Trees (PP0,PP1[13:0],PP2[11:0],PP3[9:0],PP4[7:0],P);
    
endmodule