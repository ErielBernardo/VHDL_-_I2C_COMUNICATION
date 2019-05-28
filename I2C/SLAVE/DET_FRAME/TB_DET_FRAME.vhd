--- TB_DET_FRAME
---

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity TB_DET_FRAME is
END TB_DET_FRAME;

architecture behavioral of TB_DET_FRAME is
	
	component DET_FRAME is
	port(
			i_SDA		: in std_logic;	--- via de dado i2c
			i_SCL		: in std_logic;	--- entrada de sinal de clock i2c
			i_RST		: in std_logic;	--- entrada de reset
			i_CLK		: in std_logic;	--- entrada de clock
			o_ENABLE	: out std_logic	--- saida enable para detector de pulso
		);
	END component;
	
	signal w_SDA		: std_logic;	--- via de dado i2c
	signal w_SCL		: std_logic;	--- entrada de sinal de clock i2c
	signal w_RST		: std_logic;	--- entrada de reset
	signal w_CLK		: std_logic;	--- entrada de clock
	signal w_ENABLE	: std_logic;	--- saida enable para detector de pulso
	
begin
	
	U00 : DET_FRAME
	port map(
			i_SDA		=> w_SDA,
			i_SCL		=> w_SCL,
			i_RST		=> w_RST,
			i_CLK		=> w_CLK,
			o_ENABLE	=> w_ENABLE
		);
	
	process
	begin
		w_CLK <= '1';
		wait for  0.5 ms;
		
		w_CLK <= '0';
		wait for  0.5 ms;
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
		w_SDA <= '1';
		wait for  2.5 ms;
		
		w_SDA <= '0';
		wait for  15 ms;

		w_SDA <= '1';
		wait for  10 ms;
		
		w_SDA <= '0';
		wait for  15 ms;
		
		w_SDA <= '1';
		wait for  10 ms;
		
		w_SDA <= '0';
		wait for  5 ms;
		
		w_SDA <= '1';
		wait for  10 ms;
		
		w_SDA <= '0';
		wait for  15 ms;
		
		w_SDA <= '1';
		wait for  2.5 ms;
	end process;
	
	process
	begin
		w_RST <= '0';
		wait for 12.5 ms;
		
		w_RST <= '1';
		wait;
	end process;
	
	
end behavioral;