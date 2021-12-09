library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bin2d7seg is
    Port ( x : in  STD_LOGIC_VECTOR (4 downto 0);     -- input bin
           d7seg   : out STD_LOGIC_VECTOR(6 downto 0)          -- output 7seg ABCDEFG
	  );
end bin2d7seg;

architecture Behavioral of bin2d7seg is
begin
with x select
    d7seg <= "0111111" when "00000", -- 0
             "0000110" when "00001", -- 1
             "1011011" when "00010", -- 2
             "1001111" when "00011", -- 3
             "1100110" when "00100", -- 4
             "1101101" when "00101", -- 5
             "1111101" when "00110", -- 6 
             "0000111" when "00111", -- 7
             "1111111" when "01000", -- 8
             "1101111" when "01001", -- 9
             "0000000"  when others;

end Behavioral;
