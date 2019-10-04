library ieee ;
use ieee.std_logic_1164.all;
use work.all;


entity flip_flop IS

	generic (
			dataW	: INTEGER  :=	8
		);
		
	port (	
		data_in:	in std_logic_vector(dataW-1 DOWNTO 0);
		clk:		in std_logic;
		data_out:	out std_logic_vector(dataW-1 DOWNTO 0)
	);
end flip_flop;


architecture ARCH of flip_flop IS
	begin

   process(data_in, clk)
		begin

			if (clk='1' and clk'event) then
				data_out <= data_in;
			end if;

   end process;	

end ARCH;