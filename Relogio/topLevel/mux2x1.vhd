library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 

entity mux2x1 is

	generic
	(
		dataW	: INTEGER  :=	4
	);

	port
	(
		-- Input ports
		a1	: in  std_logic_vector(dataW-1 DOWNTO 0);
		a2	: in  std_logic_vector(dataW-1 DOWNTO 0);
		sel : in std_logic;
		
		-- Output ports
		b	: out std_logic_vector(dataW-1 DOWNTO 0)
	);
	
end mux2x1;


-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture arch_MUX of mux2x1 is

	-- Declarations (optional)

begin

	b <=  a1 when sel = '0' else
			a2;

end arch_MUX;
