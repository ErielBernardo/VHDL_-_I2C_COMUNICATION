--- TB_STM_MASTER

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity TB_STM_MASTER is
END TB_STM_MASTER;

architecture behavioral of TB_STM_MASTER is

	component STM_MASTER is
	port(
			i_CLK				: in std_logic;									--- entrada de Clock
			
			i_RST				: in std_logic;									--- entrada de RST global
			i_BT_A			: in std_logic;									--- entrada de Botão de seleção SLAVE A
			i_BT_B			: in std_logic;									--- entrada de Botão de seleção SLAVE B
			i_BT_C			: in std_logic;									--- entrada de Botão de seleção SLAVE C
			i_DATA_SW		: in std_logic_vector (7 downto 0);			--- entrada de dado dos Switches
			
			i_CTRL_START	: in std_logic;									--- entrada de controle START_FRAME
			i_CTRL_P2S		: in std_logic;									--- entrada de controle P2S
			i_CTRL_STOP		: in std_logic;									--- entrada de controle STOP_FRAME
			
			o_ENABLE_START	: out std_logic;									--- saida para Enable de controle P2S
			o_ENABLE_P2S	: out std_logic;									--- saida para Enable de controle STOP_FRAME
			o_ENABLE_STOP	: out std_logic;									--- saida para Enable de controle START_FRAME
			
			o_ENABLE			: out std_logic;									--- saida para ENABLE GLOBAL
			o_DATA			: out std_logic_vector (15 downto 0)		--- saida de dado I2C para P2S
		);
	END component;
	
	
	signal w_CLK				: std_logic;								--- sinal de entrada de Clock

	signal w_RST				: std_logic;								--- sinal de entrada de RST global
	signal w_BT_A				: std_logic;								--- sinal de entrada de Botão de seleção SLAVE A
	signal w_BT_B				: std_logic;								--- sinal de entrada de Botão de seleção SLAVE B
	signal w_BT_C				: std_logic;								--- sinal de entrada de Botão de seleção SLAVE C
	signal w_DATA_SW			: std_logic_vector (7 downto 0);		--- sinal de entrada de dado dos Switches

	signal w_CTRL_START		: std_logic;								--- sinal de entrada de controle START_FRAME
	signal w_CTRL_P2S			: std_logic;								--- sinal de entrada de controle P2S
	signal w_CTRL_STOP		: std_logic;								--- sinal de entrada de controle STOP_FRAME

	signal w_ENABLE_START	: std_logic;								--- sinal de saida para Enable de controle P2S
	signal w_ENABLE_P2S		: std_logic;								--- sinal de saida para Enable de controle STOP_FRAME
	signal w_ENABLE_STOP		: std_logic;								--- sinal de saida para Enable de controle START_FRAME
	
	signal w_ENABLE			: std_logic;								--- sinal de saida para ENABLE GLOBAL
	signal w_DATA				: std_logic_vector (15 downto 0);	--- sinal de saida de dado para MUX_3x1_3SEL
	
begin

	U00 : STM_MASTER
	port map(
			i_CLK				=> w_CLK,				--- entrada de Clock
			
			i_RST				=> w_RST,				--- entrada de RST global
			i_BT_A			=> w_BT_A,				--- entrada de Botão de seleção SLAVE A
			i_BT_B			=> w_BT_B,				--- entrada de Botão de seleção SLAVE B
			i_BT_C			=> w_BT_C,				--- entrada de Botão de seleção SLAVE C
			i_DATA_SW		=> w_DATA_SW,			--- entrada de dado dos Switches
			
			i_CTRL_START	=> w_CTRL_START,		--- entrada de controle START_FRAME
			i_CTRL_P2S		=> w_CTRL_P2S,			--- entrada de controle P2S
			i_CTRL_STOP		=> w_CTRL_STOP,		--- entrada de controle STOP_FRAME
			
			o_ENABLE_START	=> w_ENABLE_START,	--- saida para Enable de controle START_FRAME
			o_ENABLE_P2S	=> w_ENABLE_P2S,		--- saida para Enable de controle P2S
			o_ENABLE_STOP	=> w_ENABLE_STOP,		--- saida para Enable de controle STOP_FRAME
			
			o_ENABLE			=> w_ENABLE,			--- saida para ENABLE GLOBAL
			o_DATA			=> w_DATA				--- saida de dado para MUX_3x1_3SEL
		);
	
	w_DATA_SW		<= "10101010";
	
	process
	begin
		w_BT_A			<= '1';
		w_BT_B			<= '1';
		w_BT_C			<= '1';
		w_CTRL_P2S		<= '0';
		w_CTRL_START	<= '0';
		w_CTRL_STOP		<= '0';
		
		wait for 13 ms;
		w_BT_A			<= '0';
		wait for 0.5 ms;
		w_BT_A			<= '1';
		
		wait for 0.5 ms;
		w_CTRL_START	<= '1';
		
		wait for 2 ms;
		w_CTRL_P2S		<= '1';
		
		wait for 2 ms;
		w_CTRL_STOP		<= '1';
		
		wait for 0.5 ms;
		w_CTRL_START	<= '0';
		w_CTRL_P2S		<= '0';
		w_CTRL_STOP		<= '0';
		
		
		
		wait for 5 ms;
		w_BT_B			<= '0';
		wait for 0.5 ms;
		w_BT_B			<= '1';
		
		wait for 0.5 ms;
		w_CTRL_START	<= '1';
		
		wait for 2 ms;
		w_CTRL_P2S		<= '1';
		
		wait for 2 ms;
		w_CTRL_STOP		<= '1';
		
		wait for 0.5 ms;
		w_CTRL_START	<= '0';
		w_CTRL_P2S		<= '0';
		w_CTRL_STOP		<= '0';
		
		
		
		wait for 5 ms;
		w_BT_C			<= '0';
		wait for 0.5 ms;
		w_BT_C			<= '1';
		
		wait for 0.5 ms;
		w_CTRL_START	<= '1';
		
		wait for 2 ms;
		w_CTRL_P2S		<= '1';
		
		wait for 2 ms;
		w_CTRL_STOP		<= '1';
		
		wait for 0.5 ms;
		w_CTRL_START	<= '0';
		w_CTRL_P2S		<= '0';
		w_CTRL_STOP		<= '0';
		
		
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
		w_CLK <= '0';
		wait for 10 ns;
		w_CLK <= '1';
		wait for 10 ns;
	end process;
	
end behavioral;