library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


entity conta_tick is
	generic ( duration : integer :=  25000000 );
   Port (
		clk: in  std_logic;
		pulso: out std_logic
	);
end conta_tick;


architecture arch of conta_tick is
	signal sinal: std_logic;
	
begin
	process(clk) -- Chaveia a cada 0.5s
		variable count: integer range 0 to duration := 0;
		
	begin
		if rising_edge(clk) then
			count := count + 1;
			if count=duration then
				count := 0;
				sinal <= not sinal;
			end if;
		end if;
	end process;

	pulso <= sinal;

end arch;