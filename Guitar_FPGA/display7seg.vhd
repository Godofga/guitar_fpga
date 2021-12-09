library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity display7seg is
	port
	(
		-- Input ports 
		clk: in std_logic;
		ena: in std_logic;
		clockPoint: in std_logic;
		point: in std_logic_vector(1 downto 0):="00";
		
		dig0:in std_logic_vector(3 downto 0);
		dig1:in std_logic_vector(3 downto 0);
		dig2:in std_logic_vector(3 downto 0);
		dig3:in std_logic_vector(3 downto 0);
		
		-- output ports
		dig7seg : out std_logic_vector(1 downto 0); -- Seletor do display
		d7seg : out std_logic_vector(8 downto 0) -- Indicator de 7seg selecionado por dig7seg
		
	);
end display7seg;


architecture bhDisplay7seg of display7seg is
signal binCount:std_logic_vector(18 downto 0);
signal digOut:std_logic_vector(3 downto 0);
signal d7segLocal:std_logic_vector(6 downto 0);
alias sel:std_logic_vector(1 downto 0) is binCount(18 downto 17);
begin

cbin: work.BinaryCounter 
generic map(N=>19)
port map(clk=>clk,reset=>'1', Q=>binCount);


e0: work.Mux4dig1 port map(clk=>clk, 
dig0=>dig3,
dig1=>dig2,
dig2=>dig1,
dig3=>dig0,digOut=>digOut,sel=>sel);

dig7seg<=sel;

s7: work.bin2d7seg port map(x=>digOut,d7seg=>d7segLocal);

ffpoint: process(sel)
begin
	if	sel=point then 
		d7seg(8)<='1';
	else
		d7seg(8)<='0';
	end if;
end process;

with ena select
d7seg(7 downto 0) <= d7segLocal&clockPoint when '1',
							"00000000" when others;
end bhDisplay7seg;
