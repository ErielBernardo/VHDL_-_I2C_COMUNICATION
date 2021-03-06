--- TB_MASTER I2C

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity TB_MASTER is
END TB_MASTER;

architecture behavioral of TB_MASTER is
	
	component MASTER is
	port(
			i_CLK			: in std_logic;								--- entrada de Clock global
			i_RST			: in std_logic;								--- entrada de RST global
			i_BT_A		: in std_logic;								--- entrada de Botão de seleção SLAVE A
			i_BT_B		: in std_logic;								--- entrada de Botão de seleção SLAVE B
			i_BT_C		: in std_logic;								--- entrada de Botão de seleção SLAVE C
			i_DATA_SW	: in std_logic_vector (7 downto 0);		--- entrada de dado dos Switches
			o_SCL			: out std_logic;								--- saida de sinal de Clock I2C
			o_SDA			: out std_logic								--- saida de sinal de dado I2C
		);
	END component;
	
	
	signal w_CLK				: std_logic;								--- sinal de entrada de Clock
	signal w_RST				: std_logic;								--- sinal de entrada de RST global
	signal w_BT_A				: std_logic;								--- sinal de entrada de Botão de seleção SLAVE A
	signal w_BT_B				: std_logic;								--- sinal de entrada de Botão de seleção SLAVE B
	signal w_BT_C				: std_logic;								--- sinal de entrada de Botão de seleção SLAVE C
	signal w_DATA_SW			: std_logic_vector (7 downto 0);		--- sinal de entrada de dado dos Switches
	signal w_SCL				: std_logic;								--- sinal de saida de Clock I2C
	signal w_SDA				: std_logic;								--- sinal de saida de Dado I2C
	
begin

	U00 : MASTER
	port map(
			i_CLK				=> w_CLK,				--- entrada de Clock
			i_RST				=> w_RST,				--- entrada de RST global
			i_BT_A			=> w_BT_A,				--- entrada de Botão de seleção SLAVE A
			i_BT_B			=> w_BT_B,				--- entrada de Botão de seleção SLAVE B
			i_BT_C			=> w_BT_C,				--- entrada de Botão de seleção SLAVE C
			i_DATA_SW		=> w_DATA_SW,			--- entrada de dado dos Switches
			o_SCL				=> w_SCL,				--- saida de sinal de Clock I2C
			o_SDA				=> w_SDA					--- saida de sinal de dado I2C
		);
	
	
	
	process
	begin
		w_BT_A			<= '1';
		w_BT_B			<= '1';
		w_BT_C			<= '1';
		
		w_DATA_SW		<= "10101010";
		
		wait for 0.02 ms;
		w_BT_A			<= '0';
		wait for 0.001 ms;
		w_BT_A			<= '1';
		
		w_DATA_SW		<= "11111111";
		wait for 0.2 ms;	
		
		w_BT_B			<= '0';
		wait for 0.001 ms;
		w_BT_B			<= '1';
		
		w_DATA_SW		<= "01010101";
		wait for 0.3 ms;
		
		w_BT_C			<= '0';
		wait for 0.001 ms;
		w_BT_C			<= '1';
		
		wait for 0.1 ms;
		
		w_BT_B			<= '0';
		wait for 0.001 ms;
		w_BT_B			<= '1';
		
		wait for 0.005 ms;
	end process;
	
	process
	begin
		w_RST <= '0';
		wait for 0.01 ms;
		w_RST <= '1';
		wait;
	end process;
	
	process
	begin
		w_CLK <= '0';
		wait for 10 ns;
		w_CLK <= '1';
		wait for 10 ns;
	end process;
	
end behavioral;