-- Projeto retirado dos exemplos da intel:
-- https://www.intel.com/content/www/us/en/programmable/support/support-resources/design-examples/design-software/vhdl/vhd-single-clock-syncram.html
-- modificado para ter um único access, controlado por um booleano "we"

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ram IS
	GENERIC
	(
		ADDRESS_WIDTH	: integer := 10; -- 1024 posições
		DATA_WIDTH	: integer := 8 -- 8 bits
	);
	PORT
	(
		clock			: IN  std_logic;
		data			: IN  std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);
		address		: IN  std_logic_vector(ADDRESS_WIDTH - 1 DOWNTO 0);
		we				: IN  std_logic := '1';
		cs				: IN  std_logic;
		q				: OUT std_logic_vector(DATA_WIDTH - 1 DOWNTO 0)
	);
END ram;

ARCHITECTURE rtl OF ram IS
	TYPE RAM IS ARRAY(0 TO 2 ** ADDRESS_WIDTH - 1) OF std_logic_vector(DATA_WIDTH - 1 DOWNTO 0);

	SIGNAL ram_block : RAM;
BEGIN
	PROCESS (clock)
	BEGIN
		IF (cs = '1') THEN
			IF (clock'event AND clock = '1') THEN
				IF (we = '1') THEN
					 ram_block(to_integer(unsigned(address))) <= data;
				END IF;

				q <= ram_block(to_integer(unsigned(address)));
			END IF;
		END IF;
	END PROCESS;
END rtl;
