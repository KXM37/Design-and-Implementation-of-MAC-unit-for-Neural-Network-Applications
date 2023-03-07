module SD_vedic_8X8(a,b,c);
  input [7:0]a;
  input [7:0]b;
  output [15:0]c;
  wire [7:0]q0,q1,q2,q3,q4;
  wire [15:0]c;
  wire [7:0]temp1;
  wire [11:0]temp2,temp3,temp4,q5,q6;

SD_vedic_4_x_4 z1(a[3:0],b[3:0],q0[7:0]);
SD_vedic_4_x_4 z2(a[7:4],b[3:0],q1[7:0]);
SD_vedic_4_x_4 z3(a[3:0],b[7:4],q2[7:0]);
SD_vedic_4_x_4 z4(a[7:4],b[7:4],q3[7:0]);


assign temp1 ={4'b0,q0[7:4]};
SD_add_8_bit z5(q1[7:0],temp1,q4);
assign temp2 ={4'b0,q2[7:0]};
assign temp3 ={q3[7:0],4'b0};
SD_add_12_bit z6(temp2,temp3,q5);
assign temp4={4'b0,q4[7:0]};

SD_add_12_bit z7(temp4,q5,q6);

assign c[3:0]=q0[3:0];
assign c[15:4]=q6[11:0];

endmodule