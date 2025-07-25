module P_Permutation (input logic [31:0] p_in,
                      output logic [31:0] f_value);
  assign f_value = {p_in[16], p_in[25], p_in[12], p_in[11], p_in[3], p_in[20], p_in[4], p_in[15], p_in[31], p_in[17], p_in[9], p_in[6], p_in[27], p_in[14], p_in[1], p_in[22], p_in[30], p_in[24], p_in[8], p_in[18], p_in[0], p_in[5], p_in[29], p_in[23], p_in[13], p_in[19], p_in[2], p_in[26], p_in[10], p_in[21], p_in[28], p_in[7]};
endmodule
