module E_Permutation(input logic [31:0] r_input,
                     output logic [47:0] re);
  assign re = {r_input[0], r_input[31], r_input[30], r_input[29], r_input[28], r_input[27], r_input[28], r_input[27], r_input[26], r_input[25], r_input[24], r_input[23], r_input[24], r_input[23], r_input[22], r_input[21], r_input[20], r_input[19], r_input[20], r_input[19], r_input[18], r_input[17], r_input[16], r_input[15], r_input[16], r_input[15], r_input[14], r_input[13], r_input[12], r_input[11], r_input[12], r_input[11], r_input[10], r_input[9], r_input[8], r_input[7], r_input[8], r_input[7], r_input[6], r_input[5], r_input[4], r_input[3], r_input[4], r_input[3], r_input[2], r_input[1], r_input[0], r_input[31]};
endmodule
