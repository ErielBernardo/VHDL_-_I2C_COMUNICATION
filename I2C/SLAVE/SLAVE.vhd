--- SLAVE

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity SLAVE is
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
END SLAVE;

architecture behavioral of SLAVE is

	component DET_FRAME is
		port(
				i_SDA		: in std_logic;	--- entrada de via de dado I2C
				i_SCL		: in std_logic;	--- entrada de sinal de clock I2C
				i_RST		: in std_logic;	--- entrada de Reset
				i_CLK		: in std_logic;	--- entrada de Clock
				o_ENABLE	: out std_logic	--- saida Enable para S2P e STM_SLAVE
			);
	END component;

	component S2P is
		port(
				i_RST		: in std_logic;								--- entrada de Reset
				i_SCL		: in std_logic;								--- entrada de sinal de clock I2C
				i_SDA		: in std_logic;								--- entrada de sinal de dado I2C
				i_ENABLE	: in std_logic;								--- entrada enable do DET_FRAME
				o_DATA	: out std_logic_vector (15 downto 0)	--- saida de dado para STM_SLAVE
			);
	END component;

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
	
	
	signal w_ENABLE	: std_logic;								--- sinal de enable do DET_FRAME para S2P e STM_SLAVE
	signal w_DATA		: std_logic_vector (15 downto 0);	--- sinal de dado do S2P para STM_SLAVE
	
begin
	
	U_DET_FRAME : DET_FRAME
		port map(
				i_SDA		=> i_SDA,		--- via de dado i2c
				i_SCL		=> i_SCL,		--- entrada de sinal de clock i2c
				i_RST		=> i_RST,		--- entrada de reset
				i_CLK		=> i_CLK,		--- entrada de clock
				o_ENABLE	=> w_ENABLE		--- saida enable para S2P e STM_SLAVE
			);

	U_S2P : S2P
		port map(
				i_RST		=> i_RST,		--- entrada de RST
				i_SCL		=> i_SCL,		--- entrada de sinal de clock i2c
				i_SDA		=> i_SDA,		--- entrada de sinal de dado i2c
				i_ENABLE	=> w_ENABLE,	--- entrada enable do detector de frame
				o_DATA	=> w_DATA		--- saida de dado para STM_SLAVE
			);

	U_STM_SLAVE : STM_SLAVE
		generic map(
				ADD 		=> ADD			--- Address do Slave
			)
		port map(
				i_CLK		=> i_CLK,		--- entrada de Clock
				i_RST		=> i_RST,		--- entrada de RST global
				i_ENABLE	=> w_ENABLE,	--- entrada de Enable DET_FRAME
				i_DATA	=> w_DATA,		--- entrada de dado do S2P
				o_ENABLE	=> o_ENABLE,	--- saida para MUX_3x1_3SEL
				o_DATA	=> o_DATA		--- saida de dado para MUX_3x1_3SEL
			);

end behavioral;