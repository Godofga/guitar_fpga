library ieee;
use ieee.std_logic_1164.all;

entity p2l is

	port(
		clk	 : in	std_logic;
		input	 : in	std_logic;
		reset	 : in	std_logic;
		output : out std_logic
	);

end entity;

architecture rtl of p2l is
signal state:std_logic:='0';
signal input0:std_logic:='0';
begin

ff:process(clk,reset)
begin
	if reset='1' then
		state<='0';
	elsif rising_edge(clk) then 
		if input='1' and input0='0' then 
			if state='0' then 
				state<='1';
			else
				state<='0';
			end if;
		end if;
		input0<=input;
	end if;
end process;

output<=state;

end rtl;
