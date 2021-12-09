
--BIBLIOTECAS USADAS PARA REALIZAÇÃO DO PROGRAMA
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity Flip_Flop_D is
	port
	(
	D  : in std_logic;
	Clk: in std_logic;
	Q  : out std_logic
	);
end Flip_Flop_D;

architecture behaviorOfTest of Flip_Flop_D is
--Colocar aqui todas os sinais que deseja utilizar("equivalentes a variaveis auxiliares")
signal vtest: std_logic_vector(4 downto 0);
begin

process(Clk)
begin
if rising_edge(Clk) then
	if D='1' then
	Q<='1';
	else
	Q<='0';
	end if;
end if;
end process;

end behaviorOfTest;
