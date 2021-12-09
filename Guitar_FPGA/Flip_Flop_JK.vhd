
--BIBLIOTECAS USADAS PARA REALIZAÇÃO DO PROGRAMA
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Flip_Flop_JK is
	port
	(
	J,K  : in std_logic;
	Clk: in std_logic;
	Q  : out std_logic
	);
end Flip_Flop_JK;

architecture behaviorOfTest of Flip_Flop_JK is
signal Q_ref: std_logic;
begin

process(Clk)
begin
if falling_edge(Clk) then
	if J='1' and K='0' then
	Q_ref<='1';
	elsif J='0' and K='1' then
	Q_ref<='0';
	elsif J='1' and K='1' then
	Q_ref<=not Q_ref;
end if;
end if;
end process;

Q<=Q_ref;

end behaviorOfTest;
