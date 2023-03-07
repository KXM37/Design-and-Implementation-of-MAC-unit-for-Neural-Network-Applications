module SD_add_4_bit (a,b,c);
  input [3:0]a,b;
  output [3:0]c;
  
  assign c=a+b;
  
endmodule