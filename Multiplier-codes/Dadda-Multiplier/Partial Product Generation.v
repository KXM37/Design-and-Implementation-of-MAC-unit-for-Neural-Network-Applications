module Partial_Product_Generation (A,B,PP);
  input [7:0]A;
  input B;
  output [7:0]PP;
  
  assign PP[0]=A[0]&B;
  assign PP[1]=A[1]&B;
  assign PP[2]=A[2]&B;
  assign PP[3]=A[3]&B;
  assign PP[4]=A[4]&B;
  assign PP[5]=A[5]&B;
  assign PP[6]=A[6]&B;
  assign PP[7]=A[7]&B;
  assign PP[0]=A[0]&B;
  
  
endmodule