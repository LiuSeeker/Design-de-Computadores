-- Design de Computadores
-- file: uc.vhd
-- date: 18/10/2019

library ieee;
use ieee.std_logic_1164.all;
use work.constantesMIPS.all;

entity uc is
	port
    (
        opcode              	: IN STD_LOGIC_VECTOR(OPCODE_WIDTH-1 DOWNTO 0);
        pontosDeControle    	: OUT STD_LOGIC_VECTOR(CONTROLWORD_WIDTH-1 DOWNTO 0)
    );
end entity;

architecture bhv of uc is
begin

		pontosDeControle <= "01010001000" when opcode = "000000" else --r
								  "00010110100" when opcode = "100011" else --lw
		                    "00001000100" when opcode = "101011" else --sw
							     "00100000010" when opcode = "000100" else --beq
								  "00000000001" when opcode = "000010" else --j
								  "00000000000";
		
end bhv;