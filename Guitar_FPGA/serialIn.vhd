library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity serialIn is
	port
	(
		-- Input ports 
		clk : in std_logic;
		reset: in std_logic;
		data: out std_logic_vector(7 downto 0);
		dr:out std_logic;
		rx:in std_logic
		
	);
end serialIn;

architecture  bhSerialIn of serialIn is
signal dataIn:std_logic_vector(8 downto 0):=(others=>'0');
signal dataCount:unsigned(3 downto 0):=(others=>'0');
begin

p0:process(clk,reset)
begin
	if reset='1' then
		dataCount<=(others=>'0');
		dr<='0';
	else
		if rising_edge(clk) then
			if dataCount>=dataIn'Length then
				data<=dataIn(8 downto 1);
				dr<='1';
			else
				dataIn<=dataIn(7 downto 0)&rx;
				dataCount<=dataCount+1;
				dr<='0';
			end if;
		end if;
	end if;
end process;

end bhSerialIn;
