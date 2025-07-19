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
