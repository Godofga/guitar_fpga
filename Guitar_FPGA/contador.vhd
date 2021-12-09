--BIBLIOTECAS USADAS PARA REALIZAÇÃO DO PROGRAMA
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity contador is

port(
	clock, reset: in std_logic;
	result: out std_logic_vector(7 downto 0)
);
end entity;


architecture arch of contador is
	signal temp: unsigned(7 downto 0) := "00000000";
	
begin
	process(clock, reset)
	begin
		if reset='1' then
			temp <= "00000000";
		else
			if rising_edge(clock) then
				temp <= temp + 1;
			end if;
		end if;
		
		
	end process;
	
	result <= std_logic_vector(temp(7 downto 0));
end arch;

