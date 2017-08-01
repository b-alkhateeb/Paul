// Code your design here
module dff(d,clk,q,qc);
  input d,clk;
  output q,qc;
  wire d,clk;
  reg q,qc;
  
  reg temp1,temp2, q_temp, qc_temp;
  
  nand a1(temp1, clk, d);
  nand a2(temp2, temp1, clk);
  nand a3(q, temp1, qc);
  nand a4(qc, temp2, q);
endmodule