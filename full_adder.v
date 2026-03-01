module full_adder(a_in,b_in,carry_in,sum_out,carry_out);
  
  input a_in,b_in,carry_in;
  output sum_out,carry_out;
  wire w1,w2,w3;

  half_adder HA1(.a_in(a_in), .b_in(b_in), .sum_out(w1), .carry_out(w2));
  half_adder HA2(.a_in(w1), .b_in(carry_in), .sum_out(sum_out), .carry_out(w3));
  or OR1(carry_out, w2, w3);

endmodule
