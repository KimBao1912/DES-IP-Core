# DES-IP-Core
This is the VLSI design of the DES Algorithm
I.Introduction about DES Algorithm.
1.What is IP ?
-An Intellectual Property (IP) in VLSI is a reusable (tai su dung) unit of logic or functionality or a cell or a layout design that is normally developed for using as building blocks in different chip designs.
2.Why’s IP important ?
-In today's era of IC designs more and more system functionality are getting integrated into single chips (System on Chip /SOC designs). In these SOC designs, these pre-designed IP cores/blocks are becoming more and more important. This is because most of the SOC designs have a standard microprocessor and lot of system functionality which are standardized and hence if designed once can be re-used across several designs.
3.Classify
a.Soft IP core.
-Soft IP cores are IP blocks generally offered as synthesizable RTL models. These are developed in one of the Hardware description language like SystemVerilog or VHDL.
-Sometimes IP cores are also synthesized and provided as generic gate level netlist which can be then mapped to any process technologies. This also falls under Soft IP cores. The advantage of Soft IP cores is that those can be customized in the back end Placement and Routing flow by a consumer to map to any process technologies.
b.Hard IP core.
-Hard IP cores on the other hand are offered as layout designs in a layout format like GDS which is mapped to a process technology and can be directly dropped by a consumer to the final layout of the chip. These cores cannot be customized for different process technologies
c.Advantage and Disadvantage
- The hard macro method is used to transfer an IP block that has not only the logic implementation but also the physical implementation. In other words, the physical layout of a hard macro IP is finished and fixed in a particular process technology.
-So you can say, the biggest advantage of the hard macro approach is optimization. The hard macro block is timing-guaranteed and layout-optimized. The drawback is poor portability since it is already tied to a specific process technology.
-Meanwhile, a soft macro IP has only the logic implementation without the layout.
-Thus, soft macro IP has excellent portability. It can be synthesized into any ASIC library if the RTL code and design constraint are available. And the drawback of the soft macro approach is the extra work of physical implementation, or layout. Also Compared to hard macro, the verification of soft macro also requires more attention.
4.What is DES ?
-Data Encryption Standard (DES) is a block cipher with a 64-bits key length that has played a significant role in data security.  DES is a block cipher and encrypts data in blocks of size of 64 bits each, which means 64 bits of plain text go as the input to DES, which produces 64 bits of ciphertext. The same algorithm and key are used for encryption and decryption, with minor differences. 
-Input: 64 bits
-Output: 64 bits
-Main Key: 64 bits
-Round Key: 48 bits
-No. Of Round: 16 rounds 
5.How it work ?
-DES is based on the two fundamental attributes of cryptography: substitution (also called confusion) and transposition (also called diffusion). DES consists of 16 steps, each of which is called a round. Each round performs the steps of substitution and transposition. Let us now discuss the broad-level steps in DES:
+ In the first step, the 64-bit plain text block is handed over to an initial Permutation (IP) function.
+ The initial permutation is performed on plain text.
+ Next, the initial permutation (IP) produces two halves of the permuted block; saying Left Plain Text (LPT) and Right Plain Text (RPT).
+ Now each LPT and RPT go through 16 rounds of the encryption process.
+ In the end, LPT and RPT are rejoined and a Final Permutation (FP) is performed on the combined block
+ The result of this process produces 64-bit ciphertext.
+ <img width="467" height="374" alt="image" src="https://github.com/user-attachments/assets/69c59524-201c-4829-8ea7-a1ab095e52cf" />
6.Algorithm
  <img width="534" height="414" alt="image" src="https://github.com/user-attachments/assets/8b739566-ffc0-4864-b835-5b3f5541ea81" />
  a.Initial Permutation
-This initial permutation is going to take 64 bits plaintext and it’s going to change the position of the bit and it’s going to give 64 bits output
<img width="619" height="241" alt="image" src="https://github.com/user-attachments/assets/5ad1adeb-aef9-417f-b935-aba9c3357ea5" />
-Here we have a table with 8 rows and 8 columns, arranging 64 bits in order from 1 to 64. To permute these 64 bits, we take the first row and move it to the 8th column, and so on, such that the 8th row becomes the 1st column. After swapping rows and columns, the 8th column, viewed from top to bottom, will contain bits 1 to 8, and similarly, subsequent columns will contain bits in order, with the 1st column containing bits 57 to 64.
-Next, we rearrange the bit positions within each column as follows: from bits 1, 2, 3, 4, 5, 6, 7, 8, we reorder them into the sequence 2, 4, 6, 8, 1, 3, 5, 7, from top to bottom. This moves the 4 even-numbered bits to the top half of the column and the 4 odd-numbered bits to the bottom half of the column. The same process is applied to all other columns.
1	2	3	4	5	6	7	8
9	10	11	12	13	14	15	16
17	18	19	20	21	22	23	24
25	26	27	28	29	30	31	32
33	34	35	36	37	38	39	40
41	42	43	44	45	46	47	48
49	50	51	52	53	54	55	56
57	58	59	60	61	62	63	64
  <img width="113" height="172" alt="image" src="https://github.com/user-attachments/assets/b1cef568-469a-4ab0-a624-3b2bd2a412f4" />
57	49	41	33	25	17	9	1
58	50	42	34	26	18	10	2
59	51	43	35	27	19	11	3
60	52	44	36	28	20	12	4
61	53	45	37	29	21	13	5
62	54	46	38	30	22	14	6
63	55	47	39	31	23	15	7
64	56	48	40	32	24	16	8
  <img width="116" height="151" alt="image" src="https://github.com/user-attachments/assets/a6fbbce2-030e-4c6e-9dff-6f8416a84326" />
58	50	42	34	26	18	10	2
60	52	44	36	28	20	12	4
62	54	46	38	30	22	14	6
64	56	48	40	32	24	16	8
57	49	41	33	25	17	9	1
59	51	43	35	27	19	11	3
61	53	45	37	29	21	13	5
63	55	47	39	31	23	15	7
  -After permutation, the new bit sequence is divided into two segments, each consisting of 32 bits, to begin the encryption computation process with the key. The left segment is denoted as L, and the right segment is denoted as R. Segment L contains bits from bit 1 to bit 32, while segment R contains bits from bit 33 to bit 64. The L segment in the next computation will be the R segment from the previous computation. The R segment in the next computation is derived from the previous R segment through the encryption function f(R, K) and then XORed with the L segment from the previous computation.
b.Simple Round
<img width="548" height="331" alt="image" src="https://github.com/user-attachments/assets/43c2ac9d-72ab-4ba7-96b5-8eccb0036a09" />
-First, the 32 bits of segment R are numbered from 1 to 32 in order from left to right. This value will be converted through the E lookup table to form a 48-bit value. The first bit in the 48-bit value sequence is bit number 32 of R, the second bit is bit number 1 of R, the third bit is bit number 2 of R, and the last bit is bit number 1 of R.
<img width="725" height="307" alt="image" src="https://github.com/user-attachments/assets/e3d702fd-1568-488c-9f4c-02bc7daae9f7" />

After consulting the E table, the 48-bit value is XORed with the 48 bits of the round key (the method for generating the 48-bit round key will be presented later). The result of the XOR operation is divided into 8 blocks numbered from 1 to 8 in order from left to right, each block consisting of 6 bits. Each block is transformed through separate selection functions. Corresponding to the 8 blocks, there are 8 distinct selection functions: S1, S2, S3, S4, S5, S6, S7, and S8
<img width="694" height="334" alt="image" src="https://github.com/user-attachments/assets/638a205a-9dd5-4dc2-9678-850f32f045a9" />
-The conversion of the values of functions S1, S2, ..., S8 is performed by splitting a 6-bit block into two parts. The first part is a combination of the first and the last bits of the block, forming 2 bits to select the row of the S-box. The S-box has 4 rows numbered from 0 to 3 in order from top to bottom. The second part consists of the remaining 4 bits, which are used to select the column of the S-box. The S-box has 16 columns numbered from 0 to 15 in order from left to right. Thus, for each 6-bit block, one value from the S-box is selected. This value, ranging from 0 to 15, is then converted into a corresponding 4-bit binary string. The binary strings obtained after conversion from S1 to S8 are concatenated in order from left to right to form a 32-bit value.
-For example, consider the conversion of the S-box function where the first 6-bit block has the value 011011. This string is split into two components: 01 (the first and last bits) and 1101 (the 4 bits in the middle). These two components are used to select the corresponding row and column as illustrated in the diagram below:
<img width="753" height="214" alt="image" src="https://github.com/user-attachments/assets/ba69bdf5-1022-4b48-8fc6-133099ef343c" />
-Combination 01 will select row 1, combination 1101 will select column 13, and the returned result is 5 with a 4-bit binary value of 0101.
Through the transformation step with the S selection functions, the result obtained is a 32-bit value. This value is passed through a permutation function P to generate the f function value.
<img width="184" height="260" alt="image" src="https://github.com/user-attachments/assets/c7377f54-85d7-401d-b2c2-32fffecba12a" />
<img width="708" height="471" alt="image" src="https://github.com/user-attachments/assets/e30aa188-6cdc-4b02-8443-a3df53b2db0d" />
<img width="400" height="99" alt="image" src="https://github.com/user-attachments/assets/1345b087-2895-4c51-8505-97ca0692d178" />
c.Key Round Function
-As we mentioned, we have 16 rounds for DES and each round we have separate key and these keys are referred as round key and 16 round key are derived from 56 bits key length.
<img width="530" height="314" alt="image" src="https://github.com/user-attachments/assets/e38c12ae-c77f-4851-9821-a1fa73806bac" />
<img width="450" height="515" alt="image" src="https://github.com/user-attachments/assets/a3ab4426-9c86-4d56-889e-d67ab101d84a" />
-Permuted Choice 1 Function:
<img width="292" height="164" alt="image" src="https://github.com/user-attachments/assets/06b436df-348a-4731-bd83-0f0ff331b037" />
+ A key is 64 bits, but only 56 bits are used to perform the calculation of the round key value. The key is divided into 8 bytes. The bits at positions 8, 16, 32, 40, 48, 56, and 64 are parity bits used to check the accuracy of the key in each byte because errors might occur when the key is transmitted to the encryption or decryption unit. The parity used is odd parity.
+After removing 8 bits from the 64-bit key, we perform the PC-1 permutation to determine Cn and Dn (0 ≤ n ≤15) according to the table below:
<img width="574" height="204" alt="image" src="https://github.com/user-attachments/assets/f684722f-7a78-42cd-8f85-fa7ee7841099" />
+ According to the table above, C0 is the bit sequence with the order 57, 49, 41, ..., 36 taken from the original key, and D0 is the bit sequence with the order 63, 55, 47, ..., 4 taken from the original key.
+ After determining the initial values for calculating the key, C0 and D0, the round keys Kn (with n ranging from 1 to 16) will be calculated based on the principle that the value of the round key for the nth round is derived from the value of the round key for the (n-1)th round.
+ <img width="269" height="50" alt="image" src="https://github.com/user-attachments/assets/531381a3-d850-47e6-9c6d-9ace77a40843" />
-Left Shift Function:
+ After finding C0 and D0 through PC-1, we determine Cn and Dn (1≤n≤15) from Cn-1 and Dn-1 by shifting Cn-1 and Dn-1 to the left according to the following rule:
<img width="463" height="285" alt="image" src="https://github.com/user-attachments/assets/aa283506-e195-4dd7-8021-1546b2abc8e1" />
<img width="650" height="210" alt="image" src="https://github.com/user-attachments/assets/5355e7b5-5f64-4433-a5be-c20ac84fcc7c" />
<img width="429" height="46" alt="image" src="https://github.com/user-attachments/assets/1239e541-8477-4dea-8dee-5e4c46d55066" />
-Permuted Choice 2:
+ After calculating Cn and Dn, the CnDn sequence will be numbered from 1 to 56 in order from left to right and permuted for the second selection according to the PC-2 permutation table.
+ <img width="420" height="298" alt="image" src="https://github.com/user-attachments/assets/1159a67c-0be1-4385-853d-4bcc23c40655" />
<img width="312" height="65" alt="image" src="https://github.com/user-attachments/assets/fd778c65-26d4-4b0c-8c5b-c24534285b0e" />
d.Inverse Initial Permutation
-Move the first row to the second column, the second row to the fourth column, the third row to the sixth column, the fourth row to the eighth column, the fifth row to the first column, the sixth row to the third column, the seventh row to the fifth column, and the eighth row to the seventh column. Each column is arranged from bottom to top.
<img width="558" height="513" alt="image" src="https://github.com/user-attachments/assets/133dd7a2-3196-4ad7-aad1-32e006058e4f" />






