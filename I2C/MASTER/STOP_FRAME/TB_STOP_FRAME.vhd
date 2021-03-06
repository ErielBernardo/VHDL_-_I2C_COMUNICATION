--- TB_STOP_FRAME
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity TB_STOP_FRAME is

END TB_STOP_FRAME;

architecture behavioral of TB_STOP_FRAME is

	component STOP_FRAME is
		port(
				i_RST				: in std_logic;									--- entrada de RST global
				i_SCL				: in std_logic;									--- entrada de Clock I2C SCL -90°
				i_ENABLE_STOP	: in std_logic;									--- entrada de Enable de controle de STM_MASTER
				o_CTRL_STOP		: out std_logic;									--- saida de controle STOP_FRAME para STM_MASTER
				o_SDA				: out std_logic									--- saida de dado I2C para REG_SDA
			);
	END component;
	
	signal w_RST				: std_logic;									--- entrada de RST global
	signal w_SCL				: std_logic;									--- entrada de Clock I2C SCL
	signal w_ENABLE_STOP		: std_logic;									--- entrada Enable de controle STM_MASTER
	signal w_CTRL_STOP		: std_logic;									--- saida de controle P2S para STM_MASTER
	signal w_SDA				: std_logic;									--- saida de dado SDA

	
begin

	U00 : STOP_FRAME
		port map(
				i_RST				=> w_RST,									--- entrada de RST global
				i_SCL				=> w_SCL,									--- entrada de Clock I2C SCL -90°
				i_ENABLE_STOP	=> w_ENABLE_STOP,							--- entrada de Enable de controle de STM_MASTER
				o_CTRL_STOP		=> w_CTRL_STOP,							--- saida de controle START_FRAME para STM_MASTER
				o_SDA				=> w_SDA										--- saida de dado I2C para REG_SDA
			);
		
	process
	begin
		w_ENABLE_STOP <= '0';
		wait for  25 ms;
		
		w_ENABLE_STOP <= '1';
		wait for  10.01 ms;
		
		w_ENABLE_STOP <= '0';
		wait for 5 ms;
		
		w_ENABLE_STOP <= '1';
		wait for  6 ms;
		
		w_ENABLE_STOP <= '0';
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