--- TB_P2S

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity TB_P2S is
END TB_P2S;

architecture behavioral of TB_P2S is

	component P2S is
		port(
				i_SCL				: in std_logic;									--- entrada de Clock
				i_RST				: in std_logic;									--- entrada de RST global
				
				i_DATA			: in std_logic_vector (15 downto 0);		--- entrada de dado dos Switches
				
				o_CTRL_P2S		: out std_logic;									--- saida de controle P2S para STM_MASTER
				i_ENABLE_P2S	: in std_logic;									--- entrada Enable de controle STM_MASTER
				
				o_SDA				: out std_logic									--- saida de dado SDA
			);
	END component;

	
	signal w_SCL				: std_logic;									--- sinal de entrada de Clock global
	signal w_RST				: std_logic;									--- sinal de entrada de RST global
	signal w_DATA				: std_logic_vector (15 downto 0);		--- sinal de entrada de dado dos Switches da STM_MASTER
	signal w_CTRL_P2S			: std_logic;									--- sinal de saida de controle P2S para STM_MASTER
	signal w_ENABLE_P2S		: std_logic;									--- sinal de entrada Enable de controle STM_MASTER
	signal w_SDA				: std_logic;									--- sinal de saida de dado SDA
	
begin
	
	U00 : P2S
		port map(
				i_SCL				=> w_SCL,			 --- entrada de Clock global
				i_RST				=> w_RST,			 --- entrada de RST global
				i_DATA			=> w_DATA,			 --- entrada de dado dos Switches da STM_MASTER
				o_CTRL_P2S		=> w_CTRL_P2S,		 --- saida de controle P2S para STM_MASTER
				i_ENABLE_P2S	=> w_ENABLE_P2S,	 --- entrada Enable de controle STM_MASTER
				o_SDA				=> w_SDA				 --- saida de dado SDA
			);
	
	w_DATA <= "0101010101010110";
	
	process
	begin
		w_ENABLE_P2S <= '0';
		wait for  26 ms;
		
		w_ENABLE_P2S <= '1';
		wait for  160.02 ms;
		
		w_ENABLE_P2S <= '0';
		wait for 31 ms;
		
		w_ENABLE_P2S <= '1';
		wait for  160.02 ms;
		
		w_ENABLE_P2S <= '0';
		wait;
	end process;
	
	process
	begin
		w_RST <= '0';
		wait for  15 ms;
		
		w_RST <= '1';
		wait;
	end process;
	
	process
	begin
		w_SCL <= '1';
		wait for  5 ms;
		
		w_SCL <= '0';
		wait for  5 ms;
	end process;
	
end behavioral;