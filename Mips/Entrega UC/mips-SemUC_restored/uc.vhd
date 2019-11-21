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
    process(opcode)
	 begin
	 case opcode is
		when "000000" => pontosDeControle <= "XXX10001000";
		when "100011" => pontosDeControle <= "XXX10110100";
		when "101011" => pontosDeControle <= "XXX01000100";
		when "000100" => pontosDeControle <= "XXX00000010";
		when "000010" => pontosDeControle <= "XXX00000001";
		when others => report "unreachable" severity failure;
	end case;
	end process;
	 
end bhv;