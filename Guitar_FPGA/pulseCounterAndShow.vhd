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
signal keyClk:std_logic;
signal max1:std_logic;
signal max2:std_logic;
signal max3:std_logic;
signal dig0:std_logic_vector(3 downto 0);
signal dig1:std_logic_vector(3 downto 0);
signal dig2:std_logic_vector(3 downto 0);
signal dig3:std_logic_vector(3 downto 0);
signal binCount:std_logic_vector(18 downto 0);
signal digOut:std_logic_vector(3 downto 0);
begin

k0: work.debounce port map(clk=>CLOCK_50,button=>ehkey(8),
result=>keyClk);

c0: work.BinaryCounterMod port map(clk=>keyClk,
reset=>ehkey(7),
M=>10,
maxOut=>max1, Q=>dig0);

c1: work.BinaryCounterMod port map(clk=>max1,
reset=>ehkey(7),
M=>10,
maxOut=>max2, Q=>dig1);

c2: work.BinaryCounterMod port map(clk=>max2,
reset=>ehkey(7),
M=>10,
maxOut=>max3, Q=>dig2);

c3: work.BinaryCounterMod port map(clk=>max3,
reset=>ehkey(7),
M=>10,
maxOut=>LED(7), Q=>dig3);

cbin: work.BinaryCounter port map(clk=>CLOCK_50,reset=>'1', 
Q=>binCount);

e0: work.Mux4dig1 port map(clk=>CLOCK_50, 
dig0=>dig3,
dig1=>dig2,
dig2=>dig1,
dig3=>dig0,digOut=>digOut,sel=>binCount(18 downto 17));

dig7seg(1)<=binCount(17);
dig7seg(0)<=binCount(18);

s7: work.bin2d7seg port map(x=>digOut,d7seg=>d7seg(7 downto 1));
d7seg(8)<='0';
d7seg(0)<='1';

end behaviorOfTest;
