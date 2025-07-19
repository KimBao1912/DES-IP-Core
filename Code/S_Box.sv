module S_Box (input logic [47:0] re_xor_key,
              output logic [31:0] p_in);
  //s_in
  logic [5:0] s1_in;
  logic [5:0] s2_in;
  logic [5:0] s3_in;
  logic [5:0] s4_in;
  logic [5:0] s5_in;
  logic [5:0] s6_in;
  logic [5:0] s7_in;
  logic [5:0] s8_in;
  //s_out
  logic [3:0] s1_out;
  logic [3:0] s2_out;
  logic [3:0] s3_out;
  logic [3:0] s4_out;
  logic [3:0] s5_out;
  logic [3:0] s6_out;
  logic [3:0] s7_out;
  logic [3:0] s8_out;
  //s1_in
  assign s1_in = re_xor_key[47:42];
  //s2_in
  assign s2_in = re_xor_key[41:36];
  //s3_in
  assign s3_in = re_xor_key[35:30];
  //s4_in
  assign s4_in = re_xor_key[29:24];
  //s5_in
  assign s5_in = re_xor_key[23:18];
  //s6_in
  assign s6_in = re_xor_key[17:12];
  //s7_in
  assign s7_in = re_xor_key[11:6];
  //s8_in
  assign s8_in = re_xor_key[5:0];
  
  // -----------s1_out-----------
  always_comb begin
    case ({s1_in[5], s1_in[0]})
      2'b00: begin
        case (s1_in[4:1])
          4'd0: s1_out = 4'd14;
          4'd1: s1_out = 4'd4;
          4'd2: s1_out = 4'd13;
          4'd3: s1_out = 4'd1;
          4'd4: s1_out = 4'd2;
          4'd5: s1_out = 4'd15;
          4'd6: s1_out = 4'd11;
          4'd7: s1_out = 4'd8;
          4'd8: s1_out = 4'd3;
          4'd9: s1_out = 4'd10;
          4'd10:s1_out = 4'd6 ;
          4'd11:s1_out = 4'd12;
          4'd12:s1_out = 4'd5;
          4'd13:s1_out = 4'd9;
          4'd14:s1_out = 4'd0;
          default: s1_out = 4'd7;
        endcase
      end
      2'b01: begin
        case (s1_in[4:1])
          4'd0: s1_out = 4'd0;
          4'd1: s1_out = 4'd15;
          4'd2: s1_out = 4'd7;
          4'd3: s1_out = 4'd4;
          4'd4: s1_out = 4'd14;
          4'd5: s1_out = 4'd2 ;
          4'd6: s1_out = 4'd13;
          4'd7: s1_out = 4'd1;
          4'd8: s1_out = 4'd10;
          4'd9: s1_out = 4'd6;
          4'd10:s1_out = 4'd12;
          4'd11:s1_out = 4'd11;
          4'd12:s1_out = 4'd9;
          4'd13:s1_out = 4'd5;
          4'd14:s1_out = 4'd3;
          default: s1_out = 4'd8;
        endcase
      end
      2'b10: begin
        case (s1_in[4:1])
          4'd0: s1_out = 4'd4;
          4'd1: s1_out = 4'd1;
          4'd2: s1_out = 4'd14;
          4'd3: s1_out = 4'd8;
          4'd4: s1_out = 4'd13;
          4'd5: s1_out = 4'd6;
          4'd6: s1_out = 4'd2;
          4'd7: s1_out = 4'd11;
          4'd8: s1_out = 4'd15;
          4'd9: s1_out = 4'd12;
          4'd10:s1_out = 4'd9;
          4'd11:s1_out = 4'd7;
          4'd12:s1_out = 4'd3;
          4'd13:s1_out = 4'd10;
          4'd14:s1_out = 4'd5;
          default: s1_out = 4'd0;
        endcase
      end
      default: begin
        case (s1_in[4:1])
          4'd0: s1_out = 4'd15;
          4'd1: s1_out = 4'd12;
          4'd2: s1_out = 4'd8;
          4'd3: s1_out = 4'd2;
          4'd4: s1_out = 4'd4;
          4'd5: s1_out = 4'd9;
          4'd6: s1_out = 4'd1;
          4'd7: s1_out = 4'd7;
          4'd8: s1_out = 4'd5;
          4'd9: s1_out = 4'd11;
          4'd10:s1_out = 4'd3;
          4'd11:s1_out = 4'd14;
          4'd12:s1_out = 4'd10;
          4'd13:s1_out = 4'd0;
          4'd14:s1_out = 4'd6;
          default: s1_out = 4'd13;
        endcase
      end
    endcase
  end
  //---------s2_out-----------
  always_comb begin
    case ({s2_in[5], s2_in[0]})
      2'b00: begin
        case (s2_in[4:1])
          4'd0: s2_out = 4'd15;
          4'd1: s2_out = 4'd1;
          4'd2: s2_out = 4'd8;
          4'd3: s2_out = 4'd14;
          4'd4: s2_out = 4'd6;
          4'd5: s2_out = 4'd11;
          4'd6: s2_out = 4'd3;
          4'd7: s2_out = 4'd4;
          4'd8: s2_out = 4'd9;
          4'd9: s2_out = 4'd7;
          4'd10:s2_out = 4'd2 ;
          4'd11:s2_out = 4'd13;
          4'd12:s2_out = 4'd12;
          4'd13:s2_out = 4'd0;
          4'd14:s2_out = 4'd5;
          default: s2_out = 4'd10;
        endcase
      end
      2'b01: begin
        case (s2_in[4:1])
          4'd0: s2_out = 4'd3;
          4'd1: s2_out = 4'd13;
          4'd2: s2_out = 4'd4;
          4'd3: s2_out = 4'd7;
          4'd4: s2_out = 4'd15;
          4'd5: s2_out = 4'd2 ;
          4'd6: s2_out = 4'd8;
          4'd7: s2_out = 4'd14;
          4'd8: s2_out = 4'd12;
          4'd9: s2_out = 4'd0;
          4'd10:s2_out = 4'd1;
          4'd11:s2_out = 4'd10;
          4'd12:s2_out = 4'd6;
          4'd13:s2_out = 4'd9;
          4'd14:s2_out = 4'd11;
          default: s2_out = 4'd5;
        endcase
      end
      2'b10: begin
        case (s2_in[4:1])
          4'd0: s2_out = 4'd0;
          4'd1: s2_out = 4'd14;
          4'd2: s2_out = 4'd7;
          4'd3: s2_out = 4'd11;
          4'd4: s2_out = 4'd10;
          4'd5: s2_out = 4'd4;
          4'd6: s2_out = 4'd13;
          4'd7: s2_out = 4'd1;
          4'd8: s2_out = 4'd5;
          4'd9: s2_out = 4'd8;
          4'd10:s2_out = 4'd12;
          4'd11:s2_out = 4'd6;
          4'd12:s2_out = 4'd9;
          4'd13:s2_out = 4'd3;
          4'd14:s2_out = 4'd2;
          default: s2_out = 4'd15;
        endcase
      end
      default: begin
        case (s2_in[4:1])
          4'd0: s2_out = 4'd13;
          4'd1: s2_out = 4'd8;
          4'd2: s2_out = 4'd10;
          4'd3: s2_out = 4'd1;
          4'd4: s2_out = 4'd3;
          4'd5: s2_out = 4'd15;
          4'd6: s2_out = 4'd4;
          4'd7: s2_out = 4'd2;
          4'd8: s2_out = 4'd11;
          4'd9: s2_out = 4'd6;
          4'd10:s2_out = 4'd7;
          4'd11:s2_out = 4'd12;
          4'd12:s2_out = 4'd0;
          4'd13:s2_out = 4'd5;
          4'd14:s2_out = 4'd14;
          default: s2_out = 4'd9;
        endcase
      end
    endcase
  end
  //---------s3_out----------
  always_comb begin
    case ({s3_in[5], s3_in[0]})
      2'b00: begin
        case (s3_in[4:1])
          4'd0: s3_out = 4'd10;
          4'd1: s3_out = 4'd0;
          4'd2: s3_out = 4'd9;
          4'd3: s3_out = 4'd14;
          4'd4: s3_out = 4'd6;
          4'd5: s3_out = 4'd3;
          4'd6: s3_out = 4'd15;
          4'd7: s3_out = 4'd5;
          4'd8: s3_out = 4'd1;
          4'd9: s3_out = 4'd13;
          4'd10:s3_out = 4'd12 ;
          4'd11:s3_out = 4'd7;
          4'd12:s3_out = 4'd11;
          4'd13:s3_out = 4'd4;
          4'd14:s3_out = 4'd2;
          default: s3_out = 4'd8;
        endcase
      end
      2'b01: begin
        case (s3_in[4:1])
          4'd0: s3_out = 4'd13;
          4'd1: s3_out = 4'd7;
          4'd2: s3_out = 4'd0;
          4'd3: s3_out = 4'd9;
          4'd4: s3_out = 4'd3;
          4'd5: s3_out = 4'd4 ;
          4'd6: s3_out = 4'd6;
          4'd7: s3_out = 4'd10;
          4'd8: s3_out = 4'd2;
          4'd9: s3_out = 4'd8;
          4'd10:s3_out = 4'd5;
          4'd11:s3_out = 4'd14;
          4'd12:s3_out = 4'd12;
          4'd13:s3_out = 4'd11;
          4'd14:s3_out = 4'd15;
          default: s3_out = 4'd1;
        endcase
      end
      2'b10: begin
        case (s3_in[4:1])
          4'd0: s3_out = 4'd13;
          4'd1: s3_out = 4'd6;
          4'd2: s3_out = 4'd4;
          4'd3: s3_out = 4'd9;
          4'd4: s3_out = 4'd8;
          4'd5: s3_out = 4'd15;
          4'd6: s3_out = 4'd3;
          4'd7: s3_out = 4'd0;
          4'd8: s3_out = 4'd11;
          4'd9: s3_out = 4'd1;
          4'd10:s3_out = 4'd2;
          4'd11:s3_out = 4'd12;
          4'd12:s3_out = 4'd5;
          4'd13:s3_out = 4'd10;
          4'd14:s3_out = 4'd14;
          default: s3_out = 4'd7;
        endcase
      end
      default: begin
        case (s3_in[4:1])
          4'd0: s3_out = 4'd1;
          4'd1: s3_out = 4'd10;
          4'd2: s3_out = 4'd13;
          4'd3: s3_out = 4'd0;
          4'd4: s3_out = 4'd6;
          4'd5: s3_out = 4'd9;
          4'd6: s3_out = 4'd8;
          4'd7: s3_out = 4'd7;
          4'd8: s3_out = 4'd4;
          4'd9: s3_out = 4'd15;
          4'd10:s3_out = 4'd14;
          4'd11:s3_out = 4'd3;
          4'd12:s3_out = 4'd11;
          4'd13:s3_out = 4'd5;
          4'd14:s3_out = 4'd2;
          default: s3_out = 4'd12;
        endcase
      end
    endcase
  end
  //----------s4_out------------
  always_comb begin
    case ({s4_in[5], s4_in[0]})
      2'b00: begin
        case (s4_in[4:1])
          4'd0: s4_out = 4'd7;
          4'd1: s4_out = 4'd13;
          4'd2: s4_out = 4'd14;
          4'd3: s4_out = 4'd3;
          4'd4: s4_out = 4'd0;
          4'd5: s4_out = 4'd6;
          4'd6: s4_out = 4'd9;
          4'd7: s4_out = 4'd10;
          4'd8: s4_out = 4'd1;
          4'd9: s4_out = 4'd2;
          4'd10:s4_out = 4'd8 ;
          4'd11:s4_out = 4'd5;
          4'd12:s4_out = 4'd11;
          4'd13:s4_out = 4'd12;
          4'd14:s4_out = 4'd4;
          default: s4_out = 4'd15;
        endcase
      end
      2'b01: begin
        case (s4_in[4:1])
          4'd0: s4_out = 4'd13;
          4'd1: s4_out = 4'd8;
          4'd2: s4_out = 4'd11;
          4'd3: s4_out = 4'd5;
          4'd4: s4_out = 4'd6;
          4'd5: s4_out = 4'd15; 
          4'd6: s4_out = 4'd0;
          4'd7: s4_out = 4'd3;
          4'd8: s4_out = 4'd4;
          4'd9: s4_out = 4'd7;
          4'd10:s4_out = 4'd2;
          4'd11:s4_out = 4'd12;
          4'd12:s4_out = 4'd1;
          4'd13:s4_out = 4'd10;
          4'd14:s4_out = 4'd14;
          default: s4_out = 4'd9;
        endcase
      end
      2'b10: begin
        case (s4_in[4:1])
          4'd0: s4_out = 4'd10;
          4'd1: s4_out = 4'd6;
          4'd2: s4_out = 4'd9;
          4'd3: s4_out = 4'd0;
          4'd4: s4_out = 4'd12;
          4'd5: s4_out = 4'd11;
          4'd6: s4_out = 4'd7;
          4'd7: s4_out = 4'd13;
          4'd8: s4_out = 4'd15;
          4'd9: s4_out = 4'd1;
          4'd10:s4_out = 4'd3;
          4'd11:s4_out = 4'd14;
          4'd12:s4_out = 4'd5;
          4'd13:s4_out = 4'd2;
          4'd14:s4_out = 4'd8;
          default: s4_out = 4'd4;
        endcase
      end
      default: begin
        case (s4_in[4:1])
          4'd0: s4_out = 4'd3;
          4'd1: s4_out = 4'd15;
          4'd2: s4_out = 4'd0;
          4'd3: s4_out = 4'd6;
          4'd4: s4_out = 4'd10;
          4'd5: s4_out = 4'd1;
          4'd6: s4_out = 4'd13;
          4'd7: s4_out = 4'd8;
          4'd8: s4_out = 4'd9;
          4'd9: s4_out = 4'd4;
          4'd10:s4_out = 4'd5;
          4'd11:s4_out = 4'd11;
          4'd12:s4_out = 4'd12;
          4'd13:s4_out = 4'd7;
          4'd14:s4_out = 4'd2;
          default: s4_out = 4'd14;
        endcase
      end
    endcase
  end
  //-----------s5_out-----------
  always_comb begin
    case ({s5_in[5], s5_in[0]})
      2'b00: begin
        case (s5_in[4:1])
          4'd0: s5_out = 4'd2;
          4'd1: s5_out = 4'd12;
          4'd2: s5_out = 4'd4;
          4'd3: s5_out = 4'd1;
          4'd4: s5_out = 4'd7;
          4'd5: s5_out = 4'd10;
          4'd6: s5_out = 4'd11;
          4'd7: s5_out = 4'd6;
          4'd8: s5_out = 4'd8;
          4'd9: s5_out = 4'd5;
          4'd10:s5_out = 4'd3 ;
          4'd11:s5_out = 4'd15;
          4'd12:s5_out = 4'd13;
          4'd13:s5_out = 4'd0;
          4'd14:s5_out = 4'd14;
          default: s5_out = 4'd9;
        endcase
      end
      2'b01: begin
        case (s5_in[4:1])
          4'd0: s5_out = 4'd14;
          4'd1: s5_out = 4'd11;
          4'd2: s5_out = 4'd2;
          4'd3: s5_out = 4'd12;
          4'd4: s5_out = 4'd4;
          4'd5: s5_out = 4'd7 ;
          4'd6: s5_out = 4'd13;
          4'd7: s5_out = 4'd1;
          4'd8: s5_out = 4'd5;
          4'd9: s5_out = 4'd0;
          4'd10:s5_out = 4'd15;
          4'd11:s5_out = 4'd10;
          4'd12:s5_out = 4'd3;
          4'd13:s5_out = 4'd9;
          4'd14:s5_out = 4'd8;
          default: s5_out = 4'd6;
        endcase
      end
      2'b10: begin
        case (s5_in[4:1])
          4'd0: s5_out = 4'd4;
          4'd1: s5_out = 4'd2;
          4'd2: s5_out = 4'd1;
          4'd3: s5_out = 4'd11;
          4'd4: s5_out = 4'd10;
          4'd5: s5_out = 4'd13;
          4'd6: s5_out = 4'd7;
          4'd7: s5_out = 4'd8;
          4'd8: s5_out = 4'd15;
          4'd9: s5_out = 4'd9;
          4'd10:s5_out = 4'd12;
          4'd11:s5_out = 4'd5;
          4'd12:s5_out = 4'd6;
          4'd13:s5_out = 4'd3;
          4'd14:s5_out = 4'd0;
          default: s5_out = 4'd14;
        endcase
      end
      default: begin
        case (s5_in[4:1])
          4'd0: s5_out = 4'd11;
          4'd1: s5_out = 4'd8;
          4'd2: s5_out = 4'd12;
          4'd3: s5_out = 4'd7;
          4'd4: s5_out = 4'd1;
          4'd5: s5_out = 4'd14;
          4'd6: s5_out = 4'd2;
          4'd7: s5_out = 4'd13;
          4'd8: s5_out = 4'd6;
          4'd9: s5_out = 4'd15;
          4'd10:s5_out = 4'd0;
          4'd11:s5_out = 4'd9;
          4'd12:s5_out = 4'd10;
          4'd13:s5_out = 4'd4;
          4'd14:s5_out = 4'd5;
          default: s5_out = 4'd3;
        endcase
      end
    endcase
  end
  //---------s6_out-----------
  always_comb begin
    case ({s6_in[5], s6_in[0]})
      2'b00: begin
        case (s6_in[4:1])
          4'd0: s6_out = 4'd12;
          4'd1: s6_out = 4'd1;
          4'd2: s6_out = 4'd10;
          4'd3: s6_out = 4'd15;
          4'd4: s6_out = 4'd9;
          4'd5: s6_out = 4'd2;
          4'd6: s6_out = 4'd6;
          4'd7: s6_out = 4'd8;
          4'd8: s6_out = 4'd0;
          4'd9: s6_out = 4'd13;
          4'd10:s6_out = 4'd3 ;
          4'd11:s6_out = 4'd4;
          4'd12:s6_out = 4'd14;
          4'd13:s6_out = 4'd7;
          4'd14:s6_out = 4'd5;
          default: s6_out = 4'd11;
        endcase
      end
      2'b01: begin
        case (s6_in[4:1])
          4'd0: s6_out = 4'd10;
          4'd1: s6_out = 4'd15;
          4'd2: s6_out = 4'd4;
          4'd3: s6_out = 4'd2;
          4'd4: s6_out = 4'd7;
          4'd5: s6_out = 4'd12; 
          4'd6: s6_out = 4'd9;
          4'd7: s6_out = 4'd5;
          4'd8: s6_out = 4'd6;
          4'd9: s6_out = 4'd1;
          4'd10:s6_out = 4'd13;
          4'd11:s6_out = 4'd14;
          4'd12:s6_out = 4'd0;
          4'd13:s6_out = 4'd11;
          4'd14:s6_out = 4'd3;
          default: s6_out = 4'd8;
        endcase
      end
      2'b10: begin
        case (s6_in[4:1])
          4'd0: s6_out = 4'd9;
          4'd1: s6_out = 4'd14;
          4'd2: s6_out = 4'd15;
          4'd3: s6_out = 4'd5;
          4'd4: s6_out = 4'd2;
          4'd5: s6_out = 4'd8;
          4'd6: s6_out = 4'd12;
          4'd7: s6_out = 4'd3;
          4'd8: s6_out = 4'd7;
          4'd9: s6_out = 4'd0;
          4'd10:s6_out = 4'd4;
          4'd11:s6_out = 4'd10;
          4'd12:s6_out = 4'd1;
          4'd13:s6_out = 4'd13;
          4'd14:s6_out = 4'd11;
          default: s6_out = 4'd6;
        endcase
      end
      default: begin
        case (s6_in[4:1])
          4'd0: s6_out = 4'd4;
          4'd1: s6_out = 4'd3;
          4'd2: s6_out = 4'd2;
          4'd3: s6_out = 4'd12;
          4'd4: s6_out = 4'd9;
          4'd5: s6_out = 4'd5;
          4'd6: s6_out = 4'd15;
          4'd7: s6_out = 4'd10;
          4'd8: s6_out = 4'd11;
          4'd9: s6_out = 4'd14;
          4'd10:s6_out = 4'd1;
          4'd11:s6_out = 4'd7;
          4'd12:s6_out = 4'd6;
          4'd13:s6_out = 4'd0;
          4'd14:s6_out = 4'd8;
          default: s6_out = 4'd13;
        endcase
      end
    endcase
  end
  //------------s7_out-----------
  always_comb begin
    case ({s7_in[5], s7_in[0]})
      2'b00: begin
        case (s7_in[4:1])
          4'd0: s7_out = 4'd4;
          4'd1: s7_out = 4'd11;
          4'd2: s7_out = 4'd2;
          4'd3: s7_out = 4'd14;
          4'd4: s7_out = 4'd15;
          4'd5: s7_out = 4'd0;
          4'd6: s7_out = 4'd8;
          4'd7: s7_out = 4'd13;
          4'd8: s7_out = 4'd3;
          4'd9: s7_out = 4'd12;
          4'd10:s7_out = 4'd9 ;
          4'd11:s7_out = 4'd7;
          4'd12:s7_out = 4'd5;
          4'd13:s7_out = 4'd10;
          4'd14:s7_out = 4'd6;
          default: s7_out = 4'd1;
        endcase
      end
      2'b01: begin
        case (s7_in[4:1])
          4'd0: s7_out = 4'd13;
          4'd1: s7_out = 4'd0;
          4'd2: s7_out = 4'd11;
          4'd3: s7_out = 4'd7;
          4'd4: s7_out = 4'd4;
          4'd5: s7_out = 4'd9 ;
          4'd6: s7_out = 4'd1;
          4'd7: s7_out = 4'd10;
          4'd8: s7_out = 4'd14;
          4'd9: s7_out = 4'd3;
          4'd10:s7_out = 4'd5;
          4'd11:s7_out = 4'd12;
          4'd12:s7_out = 4'd2;
          4'd13:s7_out = 4'd15;
          4'd14:s7_out = 4'd8;
          default: s7_out = 4'd6;
        endcase
      end
      2'b10: begin
        case (s7_in[4:1])
          4'd0: s7_out = 4'd1;
          4'd1: s7_out = 4'd4;
          4'd2: s7_out = 4'd11;
          4'd3: s7_out = 4'd13;
          4'd4: s7_out = 4'd12;
          4'd5: s7_out = 4'd3;
          4'd6: s7_out = 4'd7;
          4'd7: s7_out = 4'd14;
          4'd8: s7_out = 4'd10;
          4'd9: s7_out = 4'd15;
          4'd10:s7_out = 4'd6;
          4'd11:s7_out = 4'd8;
          4'd12:s7_out = 4'd0;
          4'd13:s7_out = 4'd5;
          4'd14:s7_out = 4'd9;
          default: s7_out = 4'd2;
        endcase
      end
      default: begin
        case (s7_in[4:1])
          4'd0: s7_out = 4'd6;
          4'd1: s7_out = 4'd11;
          4'd2: s7_out = 4'd13;
          4'd3: s7_out = 4'd8;
          4'd4: s7_out = 4'd1;
          4'd5: s7_out = 4'd4;
          4'd6: s7_out = 4'd10;
          4'd7: s7_out = 4'd7;
          4'd8: s7_out = 4'd9;
          4'd9: s7_out = 4'd5;
          4'd10:s7_out = 4'd0;
          4'd11:s7_out = 4'd15;
          4'd12:s7_out = 4'd14;
          4'd13:s7_out = 4'd2;
          4'd14:s7_out = 4'd3;
          default: s7_out = 4'd12;
        endcase
      end
    endcase
  end
  //----------s8_out-------------
  always_comb begin
    case ({s8_in[5], s8_in[0]})
      2'b00: begin
        case (s8_in[4:1])
          4'd0: s8_out = 4'd13;
          4'd1: s8_out = 4'd2;
          4'd2: s8_out = 4'd8;
          4'd3: s8_out = 4'd4;
          4'd4: s8_out = 4'd6;
          4'd5: s8_out = 4'd15;
          4'd6: s8_out = 4'd11;
          4'd7: s8_out = 4'd1;
          4'd8: s8_out = 4'd10;
          4'd9: s8_out = 4'd9;
          4'd10:s8_out = 4'd3 ;
          4'd11:s8_out = 4'd14;
          4'd12:s8_out = 4'd5;
          4'd13:s8_out = 4'd0;
          4'd14:s8_out = 4'd12;
          default: s8_out = 4'd7;
        endcase
      end
      2'b01: begin
        case (s8_in[4:1])
          4'd0: s8_out = 4'd1;
          4'd1: s8_out = 4'd15;
          4'd2: s8_out = 4'd13;
          4'd3: s8_out = 4'd8;
          4'd4: s8_out = 4'd10;
          4'd5: s8_out = 4'd3 ;
          4'd6: s8_out = 4'd7;
          4'd7: s8_out = 4'd4;
          4'd8: s8_out = 4'd12;
          4'd9: s8_out = 4'd5;
          4'd10:s8_out = 4'd6;
          4'd11:s8_out = 4'd11;
          4'd12:s8_out = 4'd0;
          4'd13:s8_out = 4'd14;
          4'd14:s8_out = 4'd9;
          default: s8_out = 4'd2;
        endcase
      end
      2'b10: begin
        case (s8_in[4:1])
          4'd0: s8_out = 4'd7;
          4'd1: s8_out = 4'd11;
          4'd2: s8_out = 4'd4;
          4'd3: s8_out = 4'd1;
          4'd4: s8_out = 4'd9;
          4'd5: s8_out = 4'd12;
          4'd6: s8_out = 4'd14;
          4'd7: s8_out = 4'd2;
          4'd8: s8_out = 4'd0;
          4'd9: s8_out = 4'd6;
          4'd10:s8_out = 4'd10;
          4'd11:s8_out = 4'd13;
          4'd12:s8_out = 4'd15;
          4'd13:s8_out = 4'd3;
          4'd14:s8_out = 4'd5;
          default: s8_out = 4'd8;
        endcase
      end
      default: begin
        case (s8_in[4:1])
          4'd0: s8_out = 4'd2;
          4'd1: s8_out = 4'd1;
          4'd2: s8_out = 4'd14;
          4'd3: s8_out = 4'd7;
          4'd4: s8_out = 4'd4;
          4'd5: s8_out = 4'd10;
          4'd6: s8_out = 4'd8;
          4'd7: s8_out = 4'd13;
          4'd8: s8_out = 4'd15;
          4'd9: s8_out = 4'd12;
          4'd10:s8_out = 4'd9;
          4'd11:s8_out = 4'd0;
          4'd12:s8_out = 4'd3;
          4'd13:s8_out = 4'd5;
          4'd14:s8_out = 4'd6;
          default: s8_out = 4'd11;
        endcase
      end
    endcase
  end
  //p_in
  assign p_in = {s1_out, s2_out, s3_out, s4_out, s5_out, s6_out, s7_out, s8_out};
endmodule
