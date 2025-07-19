module PC1 ( input logic [63:0] des_key_in
            , output logic [27:0] c0
            , output logic [27:0] d0);
  // C0
  assign c0 = {des_key_in[7], des_key_in[15], des_key_in[23], des_key_in[31], des_key_in[39], des_key_in[47], des_key_in[55], des_key_in[63], des_key_in[6], des_key_in[14], des_key_in[22], des_key_in[30], des_key_in[38], des_key_in[46], des_key_in[54], des_key_in[62], des_key_in[5], des_key_in[13], des_key_in[21], des_key_in[29], des_key_in[37], des_key_in[45], des_key_in[53], des_key_in[61], des_key_in[4], des_key_in[12], des_key_in[20], des_key_in[28]};
  //D0
  assign d0 = {des_key_in[1], des_key_in[9], des_key_in[17], des_key_in[25], des_key_in[33], des_key_in[41], des_key_in[49], des_key_in[57], des_key_in[2], des_key_in[10], des_key_in[18], des_key_in[26], des_key_in[34], des_key_in[42], des_key_in[50], des_key_in[58], des_key_in[3], des_key_in[11], des_key_in[19], des_key_in[27], des_key_in[35], des_key_in[43], des_key_in[51], des_key_in[59], des_key_in[36], des_key_in[44], des_key_in[52], des_key_in[60]}; 
endmodule
