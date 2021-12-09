library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity Flip_Flop_D_Reset is
	port(
		D, clk, reset: in std_logic;
		Q: out std_logic
	);
end Flip_Flop_D_Reset;


architecture arch of Flip_Flop_D_Reset is
begin
	process(Clk, Reset)
	begin
		if Reset='1' then 
			Q <= '0';
		else
			if rising_edge(Clk) then
				if D='1' then
					Q <= '1';
				else
					Q <= '0';
				end if;
			end if;
		end if;
	end process;

end arch;
