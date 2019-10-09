library ieee;
use ieee.std_logic_1164.all;

entity topLevel is
    port(
      -- Input ports
		CLOCK_50 : in std_logic;
      SW       : in  std_logic_vector(17 downto 0);
		KEY      : in std_logic_vector(3 downto 0);
		
        
        -- Output ports
		LEDR     : out std_logic_vector(17 downto 0);
		LEDG     : out std_logic_vector(7 downto 0);

		HEX2     : out std_logic_vector(6 downto 0):= "1000000";
		HEX3     : out std_logic_vector(6 downto 0):= "1000000";
		HEX4     : out std_logic_vector(6 downto 0):= "1000000";
		HEX5     : out std_logic_vector(6 downto 0):= "1000000";
		HEX6     : out std_logic_vector(6 downto 0):= "1000000";
		HEX7     : out std_logic_vector(6 downto 0):= "1000000"
    );
end entity;

architecture comportamento of topLevel is

	signal ad_vector     : std_logic_vector(13 downto 0);

	-- perifericos = (baseTempo, MudaHor, IncMin, IncHor)
	signal perifericos   : std_logic_vector(3 downto 0);
	signal endPerif      : std_logic_vector(3 downto 0);

	signal saiROM        : std_logic_vector(15 downto 0);
	signal proximoROM    : std_logic_vector(7 downto 0);

	signal saiDecode    : std_logic_vector(6 downto 0);
	signal dataDisplay   : std_logic_vector(3 downto 0);

	signal saiMudaHor    : std_logic;
	signal saiIncMin     : std_logic;
	signal saiIncHor     : std_logic;
	signal saiMux        : std_logic;
	signal saiBaseTempo1 : std_logic;
	signal saiBaseTempo2 : std_logic;
	signal saiRegBT : std_logic;
	signal sigBut0 : std_logic;
	signal sigBut1 : std_logic;
	
	signal chave         : std_logic;
	
	
	
signal tick : std_logic;
signal contador : integer range 0 to 50000001 := 0;
		  
begin
--
--process(CLOCK_50)
--        begin
--            if(rising_edge(CLOCK_50)) then
--                if contador = 500000000 then
--                    contador <= 0;
--                    tick <= not tick;
--                else
--                    contador <= contador + 1;
--                end if;
--            end if;
--        end process;
	
	chave <= SW(0);
	
	--------------------------------------------------------------------------
	--Address Decoder

	Decodificador: entity work.addressDecoder port map(
			endereco       => endPerif,
						
			outBaseTempo   => ad_vector(0),
			outDisplay0    => ad_vector(1),
			outDisplay1    => ad_vector(2),
			outDisplay2    => ad_vector(3),
			outDisplay3    => ad_vector(4),
			outDisplay4    => ad_vector(5),
			outDisplay5    => ad_vector(6),
			outMudaHor     => ad_vector(7),
			outIncMin      => ad_vector(8),
			outIncHor      => ad_vector(9),
			outZeraBase    => ad_vector(10),
			outZeraMudaHor => ad_vector(11),
			outZeraIncMin  => ad_vector(12),
			outZeraIncHor  => ad_vector(13)
	);

	--------------------------------------------------------------------------
	--Botoes
	
--	RegBut0: entity work.botao port map(
--		d => KEY(0),
--		clk => CLOCK_50,
--		enable => ad_vector(8),
--		q => perifericos(0)
--	);
--	
--	RegBut1: entity work.botao port map(
--		d => KEY(1),
--		clk => CLOCK_50,
--		enable => ad_vector(8),
--		q => perifericos(1)
--	);
--	RegBut2: entity work.botao port map(
--		d => KEY(2),
--		clk => CLOCK_50,
--		enable => ad_vector(8),
--		q => perifericos(2)
--	);


--	sigBut0 <= not KEY(0) when ad_vector(8) = '1' else '0';
--	sigBut1 <= not KEY(1) when ad_vector(8) = '1' else '0';
	perifericos(0) <= not KEY(0);
	perifericos(1) <= not KEY(1);
	perifericos(2) <= not KEY(2);
	
	--------------------------------------------------------------------------
	--Base de tempo

	BaseTempo1: entity work.contador generic map( divisor => 25000000 ) port map(
			clk       => CLOCK_50,
			reset => ad_vector(10),
			saida_clk => saiBaseTempo1
	);
	
	BaseTempo2: entity work.contador generic map( divisor => 10000 ) port map(
			clk       => CLOCK_50,
			reset => ad_vector(10),
			saida_clk => saiBaseTempo2
	);
	
	MuxBaseTempo: entity work.mux1bit port map(
			a1  => saiBaseTempo1,
			a2  => saiBaseTempo2,
			sel => chave,
			b   => saiMux
		);
		
	RegBaseTempo: entity work.registrador1bitr port map(
		d => '1',
		clk => saiMux,
		reset => ad_vector(10),
		q => saiRegBT
	);
		
	perifericos(3) <= saiRegBT;-- when ad_vector(0) = '1' else '0';
	--LEDR(17) <= ad_vector(10);
	
	--TristateBaseTempo: entity work.buffer3state port map(
	--		entrada => saiMux,
	--		hab     => ad_vector(0),
	--		output  => perifericos(3)
	--	);

	--------------------------------------------------------------------------
	--Display
	
	-- Só permite a escrita decodificada quando for para o display específico
	
	DISPLAYhex2: entity work.conversorHex7Seg port map(
			enable => ad_vector(1),
		  	dadoHex => dataDisplay,
			HEX => HEX2,
			clk => CLOCK_50
			
	);
	
	DISPLAYhex3: entity work.conversorHex7Seg port map(
			enable => ad_vector(2),
		  	dadoHex => dataDisplay,
			HEX => HEX3,
			clk => CLOCK_50
			
	);
	
	DISPLAYhex4: entity work.conversorHex7Seg port map(
			enable => ad_vector(3),
		  	dadoHex => dataDisplay,
			HEX => HEX4,
			clk => CLOCK_50
			
	);
	
	DISPLAYhex5: entity work.conversorHex7Seg port map(
			enable => ad_vector(4),
		  	dadoHex => dataDisplay,
			HEX => HEX5,
			clk => CLOCK_50
			
	);
	
	DISPLAYhex6: entity work.conversorHex7Seg port map(
			enable => ad_vector(5),
		  	dadoHex => dataDisplay,
			HEX => HEX6,
			clk => CLOCK_50
			
	);
	
	DISPLAYhex7: entity work.conversorHex7Seg port map(
			enable => ad_vector(6),
		  	dadoHex => dataDisplay,
			HEX => HEX7,
			clk => CLOCK_50
			
	);
	
	-- LEDR(0) <= SW(0); -- Indicativo visual

	--------------------------------------------------------------------------
	--Processador

	Processinho: entity work.processador port map(
			LEDR => LEDR(14 downto 0),
			instrucao  => saiROM,
			dataRead   => perifericos,
			CLK        => CLOCK_50,
			
			outAdress  => proximoROM,
			dataWrite  => dataDisplay,
			ioAdress   => endPerif
	);

	--------------------------------------------------------------------------
	--ROM

	ROM0: entity work.rom port map(
			addr  => proximoROM,
			q	  => saiROM
	);
	
	LEDG <= proximoROM;

	LEDR(17) <= perifericos(2);
	LEDR(16) <= perifericos(1);
	LEDR(15) <= perifericos(0);
	
end architecture;