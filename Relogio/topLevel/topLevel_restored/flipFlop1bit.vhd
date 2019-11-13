library ieee ;
use ieee.std_logic_1164.all;
use work.all;


entity flipFlop1bit IS

	port (	
		data_in:	in std_logic;
		clk:		in std_logic;
		data_out:	out std_logic
	);
end flipFlop1bit;

architecture ARCH of flipFlop1bit IS
	begin

   process(clk)
        begin
            if rising_edge(clk) then
                data_out <= data_in;
            end if;
        end process;

end ARCH;