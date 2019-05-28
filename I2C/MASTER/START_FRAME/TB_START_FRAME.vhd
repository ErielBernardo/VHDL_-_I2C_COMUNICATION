--- TB_START_FRAME
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity TB_START_FRAME is

END TB_START_FRAME;

architecture behavioral of TB_START_FRAME is

	component START_FRAME is
		port(
				i_RST				: in std_logic;									--- entrada de RST global
				i_SCL				: in std_logic;									--- entrada de Clock I2C SCL
				i_ENABLE_START	: in std_logic;									--- entrada de Enable de controle de STM_MASTER
				o_CTRL_START	: out std_logic;									--- saida de controle START_FRAME para STM_MASTER
				o_SDA				: out std_logic									--- saida de dado I2C para REG_SDA
			);
	END component;
	
	signal w_RST				: std_logic;									--- entrada de RST global
	signal w_SCL				: std_logic;									--- entrada de Clock I2C SCL
	signal w_ENABLE_START	: std_logic;									--- entrada Enable de controle STM_MASTER
	signal w_CTRL_START		: std_logic;									--- saida de controle P2S para STM_MASTER
	signal w_SDA				: std_logic;									--- saida de dado SDA

	
begin

	U00 : START_FRAME
		port map(
				i_RST				=> w_RST,									--- entrada de RST global
				i_SCL				=> w_SCL,									--- entrada de Clock I2C SCL
				i_ENABLE_START	=> w_ENABLE_START,						--- entrada de Enable de controle de STM_MASTER
				o_CTRL_START	=> w_CTRL_START,							--- saida de controle START_FRAME para STM_MASTER
				o_SDA				=> w_SDA										--- saida de dado I2C para REG_SDA
			);
		
	process
	begin
		w_ENABLE_START <= '0';
		wait for  25 ms;
		
		w_ENABLE_START <= '1';
		wait for  10.01 ms;
		
		w_ENABLE_START <= '0';
		wait for 5 ms;
		
		w_ENABLE_START <= '1';
		wait for  6 ms;
		
		w_ENABLE_START <= '0';
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