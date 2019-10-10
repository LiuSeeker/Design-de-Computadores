library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity UnidadeControle is
	port ( 
				opcode  : in std_logic_vector(3 downto 0);
				
				outULA: out std_logic_vector(2 downto 0);
				outMuxPosULA : out std_logic;
				outBancoRegistradores : out std_logic; -- 0 Read / 1 Write
				outJzn : out std_logic;
				outDemux : out std_logic;
				outJmp : out std_logic;
				outAttFlag: out std_logic
	);
end entity;


architecture UC of UnidadeControle is

constant RXD : std_logic_vector(3 downto 0) := "0000";
constant ZER : std_logic_vector(3 downto 0) := "0001";
constant CMP : std_logic_vector(3 downto 0) := "0010";
constant JNZ : std_logic_vector(3 downto 0) := "0011";
constant INC : std_logic_vector(3 downto 0) := "0100";
constant WRT : std_logic_vector(3 downto 0) := "0110";
constant LDI : std_logic_vector(3 downto 0) := "0111";
constant JMP : std_logic_vector(3 downto 0) := "1000";

begin

	outULA <= "101" when opcode = RXD OR opcode = WRT else
				 "011" when opcode = ZER OR opcode = LDI else
				 "010" when opcode = CMP else
				 "000" when opcode = INC else
				 "100";
	
	outMuxPosULA <= '1' when opcode = RXD else
						 '0';
						 
	outBancoRegistradores <= '1' when opcode = RXD OR opcode = INC OR opcode = LDI else
									 '0';
									 
	outJzn <= '1' when opcode = JNZ else
					'0';
					
	outDemux <= '1' when opcode = WRT else
					'0';
	
	outJmp <= '1' when opcode = JMP else '0';
	
	outAttFlag <= '1' when opcode = CMP else '0';

end architecture;