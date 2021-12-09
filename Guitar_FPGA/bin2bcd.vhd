library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcd is
   generic (N:integer:=8);
	Port ( 
      number   : in std_logic_vector (N-1 downto 0);
      dig3 : out std_logic_vector (3 downto 0);
		dig2 : out std_logic_vector (3 downto 0);
      dig1 : out std_logic_vector (3 downto 0);
      dig0 : out std_logic_vector (3 downto 0)
   );
end bcd;

architecture Behavioral of bcd is

begin

   bin_to_bcd : process (number)
      -- Internal variable for storing bits
      variable shift : unsigned(N+15 downto 0);
      
	  -- Alias for parts of shift register
      alias num is shift(N-1 downto 0);
      alias one is shift(N+3 downto N);
      alias ten is shift(N+7 downto N+4);
      alias hun is shift(N+11 downto N+8);
		alias tho is shift(N+15 downto N+12);
   begin
      -- Clear previous number and store new number in shift register
      num := unsigned(number);
      one := X"0";
      ten := X"0";
      hun := X"0";
		tho := X"0";
      
	  -- Loop eight times
      for i in 1 to num'Length loop
	     -- Check if any digit is greater than or equal to 5
         if one >= 5 then
            one := one + 3;
         end if;
         
         if ten >= 5 then
            ten := ten + 3;
         end if;
         
         if hun >= 5 then
            hun := hun + 3;
         end if;
			
			if tho >= 5 then
            tho := tho + 3;
         end if;
         
		 -- Shift entire register left once
         shift := shift_left(shift, 1);
      end loop;
      
	  -- Push decimal numbers to output
      dig3	 	<= std_logic_vector(tho);
		dig2 		<= std_logic_vector(hun);
      dig1     <= std_logic_vector(ten);
      dig0     <= std_logic_vector(one);
   end process;

end Behavioral;