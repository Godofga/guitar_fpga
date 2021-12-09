library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity main is
	port(
		CLOCK_50: in std_logic; -- Oscilador
		KEY: in std_logic_vector( 1 downto 0); --Botões que ficam na placa DE0-nano
		ehkey: in std_logic_vector(9 downto 0);-- bits 0-7=>chaves; bits 8 e 9 => pushbutton
		
		--para a simulacao
		ff1, ff2: out std_logic_vector(8 downto 0);
		
		LED: out std_logic_vector(7 downto 0); --LEDS que ficam na placa DEO-nano
		dig7seg: out std_logic_vector(1 downto 0); -- Seletor do display
		d7seg: out std_logic_vector(8 downto 0) -- Indicator de 7seg selecionado por dig7seg
		
		
	);
end main;


architecture arch of main is 
	signal ffcoluna0, ffcoluna1: std_logic_vector(8 downto 0) := "000000000";
	signal random1: std_logic_vector(7 downto 0);
	signal random2: std_logic_vector(8 downto 0);
	signal tick_tratado, clock_2, reset: std_logic;
	--signal tempo: integer := 25000000; 
	
begin
	--Clocks
	GERADOR_CLOCK: entity work.conta_tick
	generic map (duration => 7500000)
	port map(clk => clocK_50, pulso => tick_tratado);
	
	GERADOR_CLOCK2: entity work.conta_tick
	generic map (duration => 100000)
	port map(clk => clocK_50, pulso => clock_2);
	
	--Geradores de bits aleatórios
	GERADOR_RANDOM1: entity work.random
	generic map (width => 8)
	port map(clk => tick_tratado, random_num => random1);
	
	GERADOR_RANDOM2: entity work.random
	generic map (width => 9)
	port map(clk => tick_tratado, random_num => random2);
	
	--Resetar FFs e score
	reset <= ehkey(0);
	
	--Simulação
	ff1 <= ffcoluna0;
	ff2 <= ffcoluna1;

	--Flip flops D
	FLIP_FLOP00: entity work.Flip_Flop_D_Reset
	port map(D => random1(0), Clk => tick_tratado, Q => ffcoluna0(0), reset => reset); -- MUDAR GERAÇÂO DO SINAL
	FLIP_FLOP01: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna0(0), Clk => tick_tratado, Q => ffcoluna0(1), reset => reset);
	FLIP_FLOP02: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna0(1), Clk => tick_tratado, Q => ffcoluna0(2), reset => reset);
	FLIP_FLOP03: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna0(2), Clk => tick_tratado, Q => ffcoluna0(3), reset => reset);
	FLIP_FLOP04: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna0(3), Clk => tick_tratado, Q => ffcoluna0(4), reset => reset);
	FLIP_FLOP05: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna0(4), Clk => tick_tratado, Q => ffcoluna0(5), reset => reset);
	FLIP_FLOP06: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna0(5), Clk => tick_tratado, Q => ffcoluna0(6), reset => reset);
	FLIP_FLOP07: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna0(6), Clk => tick_tratado, Q => ffcoluna0(7), reset => reset);
	FLIP_FLOP08: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna0(7), Clk => tick_tratado, Q => ffcoluna0(8), reset => reset);

	FLIP_FLOP10: entity work.Flip_Flop_D_Reset
	port map(D => random2(0), Clk => tick_tratado, Q => ffcoluna1(0), reset => reset); -- MUDAR GERAÇÂO DO SINAL
	FLIP_FLOP11: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna1(0), Clk => tick_tratado, Q => ffcoluna1(1), reset => reset);
	FLIP_FLOP12: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna1(1), Clk => tick_tratado, Q => ffcoluna1(2), reset => reset);
	FLIP_FLOP13: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna1(2), Clk => tick_tratado, Q => ffcoluna1(3), reset => reset);
	FLIP_FLOP14: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna1(3), Clk => tick_tratado, Q => ffcoluna1(4), reset => reset);
	FLIP_FLOP15: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna1(4), Clk => tick_tratado, Q => ffcoluna1(5), reset => reset);
	FLIP_FLOP16: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna1(5), Clk => tick_tratado, Q => ffcoluna1(6), reset => reset);
	FLIP_FLOP17: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna1(6), Clk => tick_tratado, Q => ffcoluna1(7), reset => reset);
	FLIP_FLOP18: entity work.Flip_Flop_D_Reset
	port map(D => ffcoluna1(7), Clk => tick_tratado, Q => ffcoluna1(8), reset => reset);
	
	
	process (ffcoluna0, ffcoluna1, tick_tratado, clock_2, ehkey, reset)
		variable nota0, nota1: std_logic := '0';
		variable count: integer range 0 to 4 := 0;
		variable score: integer range -4 to 255 := 1;
		variable vitoria, derrota: std_logic := '0';
		
	begin
		--Mostrar no display as "notas"
		if rising_edge(clock_2) then
			if vitoria='0' and derrota='0' then
				if count=0 then
					dig7seg <= "00";
					d7seg(6) <= ffcoluna0(0);
					d7seg(5) <= ffcoluna1(0);
					d7seg(2) <= ffcoluna0(1);
					d7seg(3) <= ffcoluna1(1);
					d7seg(0) <='0';
					d7seg(1) <='0';
					d7seg(4) <='0';
					d7seg(7) <='0';
				elsif count=1 then
					dig7seg <= "01";
					d7seg(6) <= ffcoluna0(2);
					d7seg(5) <= ffcoluna1(2);
					d7seg(2) <= ffcoluna0(3);
					d7seg(3) <= ffcoluna1(3);
					d7seg(0) <='0';
					d7seg(1) <='0';
					d7seg(4) <='0';
					d7seg(7) <='0';
				elsif count=2 then
					dig7seg <= "10";
					d7seg(6) <= ffcoluna0(4);
					d7seg(5) <= ffcoluna1(4);
					d7seg(2) <= ffcoluna0(5);
					d7seg(3) <= ffcoluna1(5);
					d7seg(0) <='0';
					d7seg(1) <='0';
					d7seg(4) <='0';
					d7seg(7) <='0';
				elsif count=3 then
					dig7seg <= "11";
					
					d7seg(6) <= ffcoluna0(6);
					d7seg(5) <= ffcoluna1(6);
					d7seg(2) <= ffcoluna0(7);
					d7seg(3) <= ffcoluna1(7);
					d7seg(0) <='0';
					d7seg(1) <='0';
					d7seg(4) <='0';
					d7seg(7) <='0';
					
	--				d7seg(1) <= nota1;
	--				d7seg(7) <= nota0;
				end if;
			elsif vitoria='1' then
				if count=0 then
					dig7seg <= "00";
					--P
					--d7seg <= "011001110";
					d7seg <= "011100110";
				elsif count=1 then
					dig7seg <= "01";
					--A
					d7seg <= "011101110";
				elsif count=2 then
					dig7seg <= "10";
					--S
					--d7seg <= "010110110";
					d7seg <= "011011010";
				elsif count=3 then
					dig7seg <= "11";
					--S
					--d7seg <= "010110110";
					d7seg <= "011011010";
				end if;
			elsif derrota='1' then
				if count=0 then
					dig7seg <= "00";
					--F
					--d7seg <= "010001110";
					d7seg <= "011100010";
				elsif count=1 then
					dig7seg <= "01";
					--A
					d7seg <= "011101110";
				elsif count=2 then
					dig7seg <= "10";
					--I
					d7seg <= "001100000";
				elsif count=3 then
					dig7seg <= "11";
					--L
					d7seg <= "001110000";
				end if;
			end if;
			count := count + 1;
			if count=4 then
				count := 0;
			end if;
				
		end if;
		--Verificando se o usuário pressionou a tecla correta
		if rising_edge(tick_tratado) and  derrota='0' and vitoria='0' then
			if ffcoluna0(7)='1' or ffcoluna1(7)='1' then
				if nota0=ffcoluna0(7) and nota1=ffcoluna1(7) then
					if score<=126 then
						score := score + 1;
					end if;
					if score=127 then
						vitoria := '1';
					end if;
					led(7) <= '1';
				else 	
					if score >= 0 then
						score := score - 1;
						led(7) <= '0';
					end if;
					if score=-1 then
						derrota := '1';
					end if;
				end if;
			end if;
			nota0 := '0';
			nota1 := '0';
		end if;
		--Guardando o dado da entrada do usuário
		if ehkey(8)='0' then
			nota0 := '1';
		end if;
			
		if ehkey(9)='0' then
			nota1 := '1';
		end if;
		--Resetando score
		if reset = '1' then
			score := 0;
			vitoria := '0';
			derrota := '0';
		end if;
		--Mostrando score nos leds
		--led(6) <= vitoria;
		--led(5) <= derrota;
		led(6 downto 0) <= std_logic_vector(to_unsigned(score, 7));
		
	end process;
	
end arch;
