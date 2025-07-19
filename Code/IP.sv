module IP (input logic [63:0] des_data,
           output logic [31:0] l0,
           output logic [31:0] r0);
  logic [63:0] ip_input;
  assign ip_input = {des_data[6], des_data[14], des_data[22], des_data[30], des_data[38], des_data[46], des_data[54], des_data[62], des_data[4], des_data[12], des_data[20], des_data[28], des_data[36], des_data[44], des_data[52], des_data[60], des_data[2], des_data[10], des_data[18], des_data[26], des_data[34], des_data[42], des_data[50], des_data[58], des_data[0], des_data[8], des_data[16], des_data[24], des_data[32], des_data[40], des_data[48], des_data[56], des_data[7], des_data[15], des_data[23], des_data[31], des_data[39], des_data[47], des_data[55], des_data[63], des_data[5], des_data[13], des_data[21], des_data[29], des_data[37], des_data[45], des_data[53], des_data[61], des_data[3], des_data[11], des_data[19], des_data[27], des_data[35], des_data[43], des_data[51], des_data[59], des_data[1], des_data[9], des_data[17], des_data[25], des_data[33], des_data[41], des_data[49], des_data[57]};
  //L0
  assign l0 = ip_input[63:32];
  //R0
  assign r0 = ip_input[31:0];
endmodule
