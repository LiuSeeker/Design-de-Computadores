library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 

entity mux1bit is

	port
	(
		-- Input ports
		a1	 : in  std_logic;
		a2	 : in  std_logic;
		sel : in std_logic;
		
		-- Output ports
		b	 : out std_logic
	);
	
end mux1bit;


-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture arch_MUX of mux1bit is

	-- Declarations (optional)

begin

	b <=  a1 when sel = '0' else
			a2;

end arch_MUX;
