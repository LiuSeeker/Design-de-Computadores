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
	
	signal chave         : std_logic;
	
	
	
signal tick : std_logic;
signal contador : integer range 0 to 50000001 := 0;
		  

	
	
	
	
begin

process(CLOCK_50)
        begin
            if(rising_edge(CLOCK_50)) then
                if contador = 25000000 then
                    contador <= 0;
                    tick <= not tick;
                else
                    contador <= contador + 1;
                end if;
            end if;
        end process;
		  
		  -- LEDG(7) <= tick;
	
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

	perifericos(0) <= KEY(0) when ad_vector(11) = '1' else '0';
	perifericos(1) <= KEY(1) when ad_vector(12) = '1' else '0';
	perifericos(2) <= KEY(2) when ad_vector(13) = '1' else '0';

	--------------------------------------------------------------------------
	--Base de tempo

	BaseTempo1: entity work.contador generic map( divisor => 25000000 ) port map(
			clk       => CLOCK_50,
			saida_clk => saiBaseTempo1
	);
	
	BaseTempo2: entity work.contador generic map( divisor => 6250000 ) port map(
			clk       => CLOCK_50,
			saida_clk => saiBaseTempo2
	);
	
	MuxBaseTempo: entity work.mux1bit port map(
			a1  => saiBaseTempo1,
			a2  => saiBaseTempo2,
			sel => chave,
			b   => saiMux
		);
	-- LEDR(17) <= saiMux;
	
	TristateBaseTempo: entity work.buffer3state port map(
			entrada => saiMux,
			hab     => ad_vector(0),
			output  => perifericos(3)
		);

	--------------------------------------------------------------------------
	--Display
	
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

	-- Só permite a escrita decodificada quando for para o display específico

	--HEX2 <= saiDecode when ad_vector(1) = '1';
	--HEX3 <= saiDecode when ad_vector(2) = '1';
	--HEX4 <= saiDecode when ad_vector(3) = '1';
	--HEX5 <= saiDecode when ad_vector(4) = '1';
	--HEX6 <= saiDecode when ad_vector(5) = '1';
	--HEX7 <= saiDecode when ad_vector(6) = '1';
	
	-- LEDR(0) <= SW(0); -- Indicativo visual

	--------------------------------------------------------------------------
	--Processador

	Processinho: entity work.processador port map(
			LEDR => LEDR,
			instrucao  => saiROM,
			dataRead   => perifericos,
			CLK        => tick,
			
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

	--LEDR(6) <= perifericos(0);
	--LEDR(7) <= perifericos(1);
	--LEDR(8) <= perifericos(2);
	
end architecture;