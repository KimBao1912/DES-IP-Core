module DES_Encipher_Controller(input logic rst_n,
                               input logic clk,
                               input logic rkey_sel,
                               input logic des_encipher_en,
                               output logic encipher_process);
  logic encipher_en_sync;
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      encipher_en_sync <= 1'b0;
    end
    else begin
      encipher_en_sync <= des_encipher_en;
    end
  end
  
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      encipher_process <= 1'b0;
    end
    else if (encipher_en_sync) begin
      encipher_process <= 1'b1;
    end
    else if (~rkey_sel) begin
      encipher_process <= 1'b0;
    end
    else begin
      encipher_process <= encipher_process;
    end
  end
endmodule