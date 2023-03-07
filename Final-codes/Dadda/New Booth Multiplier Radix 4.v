module New_Booth_Multiplier_Radix_4 (a,b,c);
  input [7:0]a,b;
  output [15:0]c;

  wire [15:0]PP0,PP1,PP2,PP3,PP4;
  
  Main_PP_Block Partial_Product (a,b,PP0,PP1,PP2,PP3,PP4);
  
  Adder_Tree Adder_Trees (PP0,PP1[13:0],PP2[11:0],PP3[9:0],PP4[7:0],c);
    
endmodule