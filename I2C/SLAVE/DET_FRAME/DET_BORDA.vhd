--- DET_BORDA
--- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity DET_BORDA is port
	(
		i_CLK			: in std_logic;
		i_RST			: in std_logic;
		i_SINAL		: in std_logic;
		o_SUBIDA 	: out std_logic;
		o_DESCIDA	: out std_logic
	);
end DET_BORDA;

architecture behavioral of DET_BORDA is

		signal w_SINAL_R		: std_logic;
		signal w_SINAL_S		: std_logic;
		signal w_SINAL_T		: std_logic;
		
begin

		process (i_CLK, i_RST)
		begin
			if (i_RST = '0') then
				w_SINAL_R <= '0';
				w_SINAL_S <= '0';
				w_SINAL_T <= '0';
			elsif rising_edge(i_CLK) then
				w_SINAL_R <= i_SINAL;
				w_SINAL_S <= w_SINAL_R;
				w_SINAL_T <= w_SINAL_S;
			end if;
		end process;
		
		o_DESCIDA <= not(w_SINAL_S) and w_SINAL_T;
		o_SUBIDA  <= w_SINAL_S and (not w_SINAL_T);
		
end behavioral;
