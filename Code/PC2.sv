module PC2 (input logic [55:0] cn_dn,
            output logic [47:0] round_key);
  assign round_key = {cn_dn[42], cn_dn[39], cn_dn[45], cn_dn[32], cn_dn[55], cn_dn[51], cn_dn[53], cn_dn[28], cn_dn[41], cn_dn[50], cn_dn[35], cn_dn[46], cn_dn[33], cn_dn[37], cn_dn[44], cn_dn[52], cn_dn[30], cn_dn[48], cn_dn[40], cn_dn[49], cn_dn[29], cn_dn[36], cn_dn[43], cn_dn[54], cn_dn[15], cn_dn[4], cn_dn[25], cn_dn[19], cn_dn[9], cn_dn[1], cn_dn[26], cn_dn[16], cn_dn[5], cn_dn[11], cn_dn[23], cn_dn[8], cn_dn[12], cn_dn[7], cn_dn[17], cn_dn[0], cn_dn[22], cn_dn[3], cn_dn[10], cn_dn[14], cn_dn[6], cn_dn[20], cn_dn[27], cn_dn[24]};
endmodule
