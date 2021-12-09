library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity teste0 is
	port
	(
		--DE0Nano
		-- Input ports 
		CLOCK_50 : in std_logic;
		KEY : in std_logic_vector( 1 downto 0);
		
		--output ports
		LED : out std_logic_vector(7 downto 0);

		--Expansion Header UFPE/DES kit
		-- input ports
		ehkey : in std_logic_vector(9 downto 0);-- bits 0-7=>chaves; bits 8 e 9 => pushbutton
		
		-- output ports
		dig7seg : out std_logic_vector(1 downto 0); -- Seletor do display
		d7seg : out std_logic_vector(8 downto 0) -- Indicator de 7seg selecionado por dig7seg
		
	);
end teste0;


architecture behaviorOfTest of teste0 is
signal counts:std_logic:='0';
begin

process(ehkey(0))
variable countv:std_logic:='0';
begin
	countv:='1';
	counts<='1';
	
	if countv='1' then
		LED(0)<='1';
	end if;
	if counts='1' then
		LED(1)<='1';
	end if;
end process;


end behaviorOfTest;
