--- TB_SLAVE

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity TB_SLAVE is
END TB_SLAVE;

architecture behavioral of TB_SLAVE is


	component SLAVE is
		generic(
				ADD 		: std_logic_vector (6 downto 0) 		:= "1111111"	--- Address do Slave
			);
		port(
				i_CLK		: in std_logic;							--- entrada de Clock global
				i_RST		: in std_logic;							--- entrada de RST global
				i_SCL		: in std_logic;							--- entrada de sinal de Clock i2c
				i_SDA		: in std_logic;							--- entrada de sinal de dado i2c
				o_ENABLE	: out std_logic;							--- saida para MUX_3x1_3SEL
				o_DATA	: out std_logic_vector (7 downto 0)	--- saida de dado para MUX_3x1_3SEL
			);
	END component;

	signal w_CLK		: std_logic;							--- sinal de entrada de Clock global
	signal w_RST		: std_logic;							--- sinal de entrada de RST global
	signal w_SCL		: std_logic;							--- sinal de entrada de sinal de Clock i2c
	signal w_SDA		: std_logic;							--- sinal de entrada de sinal de dado i2c
	
	signal w_ENABLE	: std_logic;							--- sinal de saida Enable para MUX_3x1_3SEL
	signal w_DATA		: std_logic_vector (7 downto 0);	--- saida de saida de dado para MUX_3x1_3SEL
	
begin
	
	U00 : SLAVE
		generic map(
				ADD 		=> "0101111"	--- Address do Slave
			)
		port map(
				i_CLK		=> w_CLK,		--- entrada de Clock global
				i_RST		=> w_RST,		--- entrada de RST global
				i_SCL		=> w_SCL,		--- entrada de sinal de Clock i2c
				i_SDA		=> w_SDA,		--- entrada de sinal de dado i2c
				o_ENABLE	=> w_ENABLE,	--- saida para MUX_3x1_3SEL
				o_DATA	=> w_DATA		--- saida de dado para MUX_3x1_3SEL
			);
	process
	begin
		w_SDA <= '1';
		wait for  12.5 ms;
		w_SDA <= '0';
		wait for  5 ms;
		
		--- ------> 1 iteração
		--- ID
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '1';
		wait for  10 ms;
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '1';
		wait for  10 ms;
		w_SDA <= '1';
		wait for  10 ms;
		w_SDA <= '1';
		wait for  10 ms;
		w_SDA <= '1';
		wait for  10 ms;
		
		--- W
		w_SDA <= '0';
		wait for  10 ms;
		
		--- DATA
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '1';
		wait for  10 ms;
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '0';
		wait for  10 ms;
		
		----------> Para comunicação
		w_SDA <= '0';
		wait for  5 ms;
		w_SDA <= '1';
		wait for  5 ms;
		
		----------> Inicia comunicação
		w_SDA <= '1';
		wait for  5 ms;
		w_SDA <= '0';
		wait for  5 ms;
		
		--- ------> 2 iteração
		--- ID
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '1';
		wait for  10 ms;
		w_SDA <= '1';
		wait for  10 ms;
		w_SDA <= '1';
		wait for  10 ms;
		w_SDA <= '1';
		wait for  10 ms;
		
		--- W
		w_SDA <= '0';
		wait for  10 ms;
		
		--- DATA
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '1';
		wait for  10 ms;
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '0';
		wait for  10 ms;
		w_SDA <= '0';
		wait for  10 ms;
		
		----------> Para comunicação
		w_SDA <= '0';
		wait for  5 ms;
		w_SDA <= '1';
		wait for  5 ms;
		wait;
	end process;

	
	process
	begin
		w_SCL <= '1';
		wait for  5 ms;
		
		w_SCL <= '0';
		wait for  5 ms;
	end process;

	
	process
	begin
		w_CLK <= '1';
		wait for  0.1 ms;
		
		w_CLK <= '0';
		wait for  0.1 ms;
	end process;
	
	
	process
	begin
		w_RST <= '0';
		wait for 12.5 ms;
		
		w_RST <= '1';
		wait;
	end process;
	
end behavioral;