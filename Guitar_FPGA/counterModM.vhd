library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BinaryCounterMod is
generic(
N : integer := 4);

Port (clk: in STD_LOGIC;
reset : in STD_LOGIC;
M: in integer;
maxOut : out STD_LOGIC;
Q : out STD_LOGIC_VECTOR (N-1 downto 0));
end BinaryCounterMod;

architecture bhBinaryCounter of BinaryCounterMod is
signal r1: unsigned(N-1 downto 0);
signal r0: unsigned(N-1 downto 0);

begin

mem_count: process(clk,reset)
begin
if (reset='0') then
r1<= (others => '0');
elsif rising_edge(clk) then
r1 <= r0;
end if;
end process mem_count;

r0 <= (others=>'0') when r1>=(M-1) else r1 + 1;

Q <= STD_LOGIC_VECTOR(r1);
mx: process(clk,r1)
begin
	if rising_edge(clk) then
		if r1>=(M-1) then 
			maxOut<='1';
		else
			maxOut<='0';
		end if;
	end if;
end process;

--maxOut <= '1' when r1>=(M-1) else '0';
end bhBinaryCounter;