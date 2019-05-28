--- TB_S2P
---

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity TB_S2P is
END TB_S2P;

architecture behavioral of TB_S2P is
	
	component S2P is
		port(
				i_RST		: in std_logic;							--- entrada de Reset
				i_SCL		: in std_logic;							--- entrada de sinal de clock I2C
				i_SDA		: in std_logic;							--- entrada de sinal de dado I2C
				i_ENABLE	: in std_logic;							--- entrada enable do DET_FRAME
				o_DATA	: out std_logic_vector (15 downto 0)	--- saida de dado para STM_SLAVE
			);
	END component;
	
	signal w_RST		: std_logic;	--- entrada de reset
	signal w_SCL		: std_logic;	--- entrada de sinal de clock i2c
	signal w_SDA		: std_logic;	--- via de dado i2c
	signal w_ENABLE	: std_logic;	--- saida enable para detector de pulso
	
	signal w_DATA	: std_logic_vector (15 downto 0);	--- saida de dado para STM_SLAVE
	
begin
	
	U00 : S2P
	port map(
			i_RST		=> w_RST,
			i_SCL		=> w_SCL,
			i_SDA		=> w_SDA,
			i_ENABLE	=> w_ENABLE,
			o_DATA	=> w_DATA
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
		wait;
	end process;
	
	
	process
	begin
		w_ENABLE <= '0';
		wait for  15 ms;
		
		w_ENABLE <= '1';
		wait for  167.5 ms;

		w_ENABLE <= '0';
		wait for  12.5 ms;
		
		w_ENABLE <= '1';
		wait for  167.5 ms;
		
		w_ENABLE <= '0';
		wait for  12.5 ms;
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
		w_RST <= '0';
		wait for 12.5 ms;
		
		w_RST <= '1';
		wait;
	end process;
	
end behavioral;