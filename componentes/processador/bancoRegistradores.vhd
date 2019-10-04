library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.ALL;

entity bancoRegistradores is

	generic
	(
		larguraDados : natural := 4;
		larguraEndBancoRegs : natural := 3
	);

	port
    (
        clk         : in std_logic;
        endereco    : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        dadoEscrita : in std_logic_vector((larguraDados-1) downto 0);
        escreveC    : in std_logic;

        saida       : out std_logic_vector((larguraDados -1) downto 0)
    );
	 
end entity;


architecture arch_bancoRegistradores of bancoRegistradores is

subtype byte_t is std_logic_vector((larguraDados-1) DOWNTO 0);
type banco_t is array(0 TO 2**larguraEndBancoRegs-1) of byte_t;

signal banco : banco_t;

begin
	
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(escreveC = '1') then
				banco(to_integer(unsigned(endereco))) <= dadoEscrita;
			end if;
		end if;
	end process;
	
	saida <= banco(to_integer(unsigned(endereco)));	
	
end arch_bancoRegistradores;
