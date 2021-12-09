library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Mux4dig1 is
	port
	(
		clk: in std_logic;
		dig0:in std_logic_vector(3 downto 0);
		dig1:in std_logic_vector(3 downto 0);
		dig2:in std_logic_vector(3 downto 0);
		dig3:in std_logic_vector(3 downto 0);
		digOut:out std_logic_vector(3 downto 0);
		sel:in std_logic_vector(1 downto 0)
	);
end Mux4dig1;


architecture bhMux4dig1 of Mux4dig1 is
begin
p0:process(clk)
begin
if rising_edge(clk) then
	if sel="00" then 
		digOut<=dig0;
	elsif sel="01" then
		digOut<=dig1;
	elsif sel="10" then
		digOut<=dig2;
	elsif sel="11" then
		digOut<=dig3;
	end if;
end if;
end process;

end bhMux4dig1;
