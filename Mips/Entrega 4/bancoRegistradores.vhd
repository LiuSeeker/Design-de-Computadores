library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).

entity bancoRegistradores is
    generic
    (
        larguraDados        : natural := 32;
        larguraEndBancoRegs : natural := 5   --Resulta em 2^5=32 posicoes
    );
-- Leitura de 2 registradores e escrita em 1 registrador simultaneamente.
    port
    (
        clk        : in std_logic;
--
        enderecoA       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoB       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        enderecoC       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
--
        dadoEscritaC    : in std_logic_vector((larguraDados-1) downto 0);
--
        escreveC        : in std_logic := '0';
        saidaA          : out std_logic_vector((larguraDados -1) downto 0);
        saidaB          : out std_logic_vector((larguraDados -1) downto 0)
    );
end entity;

architecture comportamento of bancoRegistradores is

    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

	 function initMemory
        return memoria_t is variable tmp : memoria_t := (others => (others => '0'));
  begin
        -- Inicializa os endereços:
		  tmp(0) := x"00000000";
		  tmp(1) := x"11111111";
        tmp(2) := x"11111111";
        tmp(3) := x"11111111";
        tmp(4) := x"11111111";
        tmp(5) := x"11111111";
        tmp(6) := x"11111111";
        tmp(7) := x"11111111";
        tmp(8) := x"00000001";
        tmp(9) := x"00000002";
        tmp(10) := x"0000000A";
        tmp(11) := x"00000014";
        tmp(12) := x"00000005";
        tmp(13) := x"00000003";
        tmp(14) := x"000000FF";
        tmp(15) := x"00000000";
        tmp(16) := x"11111111";
        tmp(17) := x"11111111";
        tmp(18) := x"11111111";
        tmp(19) := x"11111111";
        tmp(20) := x"11111111";
        tmp(21) := x"11111111";
        tmp(22) := x"11111111";
        tmp(23) := x"11111111";
        tmp(24) := x"00000000";
        tmp(25) := x"00000000";
		return tmp;
    end initMemory;

	 
    -- Declaracao dos registradores:
    shared variable registrador : memoria_t := initMemory;

begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (escreveC = '1') then
                registrador(to_integer(unsigned(enderecoC))) := dadoEscritaC;
            end if;
        end if;
    end process;

    -- IF endereco = 0 : retorna ZERO
     process(all) is
     begin
         if (unsigned(enderecoA) = 0) then
            saidaA <= (others => '0');
         else
            saidaA <= registrador(to_integer(unsigned(enderecoA)));
         end if;
         if (unsigned(enderecoB) = 0) then
            saidaB <= (others => '0');
         else
            saidaB <= registrador(to_integer(unsigned(enderecoB)));
        end if;
     end process;
end architecture;