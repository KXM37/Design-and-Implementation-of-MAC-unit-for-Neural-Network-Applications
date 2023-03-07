module SD_add_12_bit (a,b,c);
  input [11:0]a,b;
  output [11:0]c;
  
  assign c=a+b;
  
endmodule