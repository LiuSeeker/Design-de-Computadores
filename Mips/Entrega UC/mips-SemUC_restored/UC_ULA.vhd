-- Design de Computadores
-- file: UC_ULA.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity UC_ULA is
	port
    (
        funct               : IN STD_LOGIC_VECTOR(FUNCT_WIDTH-1 DOWNTO 0);
        ALUop               : IN STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
        ALUctr              : OUT STD_LOGIC_VECTOR(CTRL_ALU_WIDTH-1 DOWNTO 0)
    );
end entity;

architecture bhv of UC_ULA is	
    signal ALUop_s : STD_LOGIC_VECTOR(ALU_OP_WIDTH-1 DOWNTO 0);
begin

			ALUctr <= "0010" when ALUop = "000" else
						 "0110" when ALUop = "001" else
						 "0010" when ALUop = "011" else
						 "0010" when ALUop = "010" AND funct(3 DOWNTO 0) = "0000" else
						 "0110" when ALUop = "010" AND funct(3 DOWNTO 0) = "0010" else
						 "0000" when ALUop = "010" AND funct(3 DOWNTO 0) = "0100" else
						 "0001" when ALUop = "010" AND funct(3 DOWNTO 0) = "0101" else
						 "0111" when ALUop = "010" AND funct(3 DOWNTO 0) = "1010" else
						 "0010";
						 
end bhv;