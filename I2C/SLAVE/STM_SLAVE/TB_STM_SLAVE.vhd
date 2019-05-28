--- TB_STM_SLAVE

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity TB_STM_SLAVE is
END TB_STM_SLAVE;

architecture behavioral of TB_STM_SLAVE is

	component STM_SLAVE is
		generic(
				ADD 		: std_logic_vector (6 downto 0) 		:= "1111111"	--- Address do Slave
			);
		port(
				i_CLK		: in std_logic;								--- entrada de Clock
				i_RST		: in std_logic;								--- entrada de RST global
				i_ENABLE	: in std_logic;								--- entrada de Enable DET_FRAME
				i_DATA	: in std_logic_vector (15 downto 0);	--- entrada de dado do S2P
				o_ENABLE	: out std_logic;								--- saida para MUX_3x1_3SEL
				o_DATA	: out std_logic_vector (7 downto 0)		--- saida de dado para MUX_3x1_3SEL
			);
	END component;
	
	signal w_CLK		: std_logic;							--- entrada de Clock
	signal w_RST		: std_logic;							--- entrada de RST global
	signal wi_ENABLE	: std_logic;							--- entrada de Enable DET_FRAME
	signal wi_DATA		: std_logic_vector (15 downto 0);	--- entrada de dado do S2P
	
	signal wo_ENABLE	: std_logic;							--- saida para MUX_3x1_3SEL
	signal wo_DATA		: std_logic_vector (7 downto 0);	--- saida de dado para MUX_3x1_3SEL
	
begin
	
	U00 : STM_SLAVE
	generic map(
			ADD 		=> "0101111"	--- Address do Slave
		)
	port map(
			i_CLK			=> w_CLK,		--- entrada de Clock
			i_RST			=> w_RST,		--- entrada de RST global
			i_ENABLE		=> wi_ENABLE,	--- entrada de Enable DET_FRAME
			i_DATA		=> wi_DATA,		--- entrada de dado do S2P
			o_ENABLE		=> wo_ENABLE,	--- saida para MUX_3x1_3SEL
			o_DATA		=> wo_DATA		--- saida de dado para MUX_3x1_3SEL
		);
	
	
	process
	begin
		wi_DATA <= "ZZZZZZZZZZZZZZZZ";
		wait for  12.5 ms;
		wait for  5 ms;
		--- ------> 1 iteração
		--- ID
		wait for  70 ms;
		--- W/R
		wait for  10 ms;
		--- Data
		wait for  80 ms;
		wi_DATA <= "0101111000100000";
		
		wait for  5 ms;
		----------> Para comunicação
		wi_DATA <= "ZZZZZZZZZZZZZZZZ";
		wait for  5 ms;
		
		wait for  5 ms;
		----------> Inicia comunicação
		wait for  5 ms;
		
		--- ------> 2 iteração		
		--- ID
		wait for  70 ms;
		--- W/R
		wait for  10 ms;
		--- DATA
		wait for  80 ms;
		wi_DATA <= "0111111000100000";
		
		wait for  5 ms;
		----------> Para comunicação
		wi_DATA <= "ZZZZZZZZZZZZZZZZ";
		wait for  5 ms;
		
		wait;
	end process;
		
	process
	begin
		wi_ENABLE <= '0';
		wait for  15 ms;
		
		wi_ENABLE <= '1';
		wait for  167.5 ms;

		wi_ENABLE <= '0';
		wait for  12.5 ms;
		
		wi_ENABLE <= '1';
		wait for  167.5 ms;
		
		wi_ENABLE <= '0';
		wait for  12.5 ms;
	end process;

	process
	begin
		w_RST <= '0';
		wait for 12.5 ms;
		
		w_RST <= '1';
		wait;
	end process;
	
	process
	begin
		w_CLK <= '1';
		wait for  1000 ns;
		
		w_CLK <= '0';
		wait for  1000 ns;
	end process;
	
	
end behavioral;