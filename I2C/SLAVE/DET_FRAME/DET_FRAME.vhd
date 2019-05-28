---  DET_FRAME
---  

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity DET_FRAME is
	port(
			i_SDA		: in std_logic;	--- entrada de via de dado I2C
			i_SCL		: in std_logic;	--- entrada de sinal de clock I2C
			i_RST		: in std_logic;	--- entrada de Reset
			i_CLK		: in std_logic;	--- entrada de clock
			o_ENABLE	: out std_logic	--- saida Enable para S2P  e STM_SLAVE
		);
END DET_FRAME;

architecture behavioral of DET_FRAME is

	component DET_BORDA is port
	(
		i_CLK			: in std_logic;
		i_RST			: in std_logic;
		i_SINAL		: in std_logic;
		o_SUBIDA 	: out std_logic;
		o_DESCIDA	: out std_logic
	);
	end component;
	
	signal w0_SUBIDA	: std_logic;	--- TRATA SINAL DE CLOCK I2C
	signal w0_DESCIDA	: std_logic;	--- TRATA SINAL DE CLOCK I2C
	signal w1_SUBIDA	: std_logic;	--- TRATA SINAL DE DADO I2C
	signal w1_DESCIDA	: std_logic;	--- TRATA SINAL DE DADO I2C
	
	
begin

	SCL_I2C: DET_BORDA --- TRATA SINAL DE CLOCK I2C
	port map (
			i_CLK			=> i_CLK,
			i_RST			=> i_RST,
			i_SINAL		=> i_SCL,
			o_SUBIDA 	=> w0_SUBIDA,
			o_DESCIDA	=> w0_DESCIDA
		);
	
	SDA_I2C : DET_BORDA --- TRATA SINAL DE DADO I2C
	port map (
			i_CLK			=> i_CLK,
			i_RST			=> i_RST,
			i_SINAL		=> i_SDA,
			o_SUBIDA 	=> w1_SUBIDA,
			o_DESCIDA	=> w1_DESCIDA
		);
	
	process (w0_DESCIDA, w1_SUBIDA, i_RST)
	begin
		if (i_RST = '0') then
			o_ENABLE <= '0';
		end if;
		if (w0_DESCIDA = '1') then
			if (i_SDA = '0') then
				o_ENABLE <= '1';
			end if;
		elsif (w1_SUBIDA = '1') then
			if (i_SCL = '1') then
				o_ENABLE <= '0';
			end if;
		end if;
	end process;
	
end behavioral;