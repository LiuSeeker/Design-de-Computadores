library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.ALL;

entity bancoRegistradores is

	generic
	(
		larguraDados : natural := 8;
		larguraEndBancoRegs : natural := 3
	);

	port
    (
        clk        : in std_logic;
--
        enderecoLeituraA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoLeituraB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoEscrita        : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
--
        dadoEscrita            : in std_logic_vector((larguraDados-1) downto 0);
--
        escreveC               : in std_logic := '1';
--
        saidaA          : out std_logic_vector((larguraDados -1) downto 0);
        saidaB          : out std_logic_vector((larguraDados -1) downto 0)
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
			banco(to_integer(unsigned(enderecoEscrita))) <= dadoEscrita;
		end if;
	end if;
	end process;
	saidaA <= banco(to_integer(unsigned(enderecoLeituraA)));
	saidaB <= banco(to_integer(unsigned(enderecoLeituraB)));
		
	
end arch_bancoRegistradores;





