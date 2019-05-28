--- I2C_TOP

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity I2C_TOP is
	port(
		--	DECLARAÇÃO 	: TIPO											--- FUNÇÃO DA PORTA								- NOME DO COMPONEM <=>	PINOS 	
			i_CLK			: in std_logic;								--- entrada de Clock global					-		G21			 <=>	G21
			i_RST			: in std_logic;								--- entrada de RST global 						-		SW9			 <=>	D2
--			i_RW			: in std_logic;								--- entrada de seleção RW I2C					-		SW8			 <=>	E4
			i_BT_A		: in std_logic;								--- entrada de Botão de seleção SLAVE A	-		BUTTON0		 <=>	H2
			i_BT_B		: in std_logic;								--- entrada de Botão de seleção SLAVE B	-		BUTTON1		 <=>	G3
			i_BT_C		: in std_logic;								--- entrada de Botão de seleção SLAVE C	-		BUTTON2		 <=>	F1
			i_DATA_SW	: in std_logic_vector (7 downto 0);		--- entrada de dado dos Switches 			-		SW[7..0]		 <=>	[E3, H7, J7, G5, G4, H6, H5, J6]
			o_BCD0		: out std_logic_vector (7 downto 0);	--- saida para display de 7 segmentos		-		HEX0			 <=>	[D13, E11, F11, H12, H13, G12, F12, F13]
			o_BCD1		: out std_logic_vector (7 downto 0);	--- saida para display de 7 segmentos		-		HEX1			 <=>	[B15, A13, B13, C13, A14, B14, E14, A15]
			o_BCD2		: out std_logic_vector (7 downto 0);	--- saida para display de 7 segmentos		-		HEX2			 <=>	[A18, D15, A16, B16, E15, A17, B17, F14]
			o_BCD3		: out std_logic_vector (7 downto 0);	--- saida para display de 7 segmentos		-		HEX3			 <=>	[G16, B18, F15, A19, B19, C19, D19, G15]
			o_LEDg		: out std_logic_vector (7 downto 0)		--- saida MUX_3x1_3SEL para leds				-		LEDg[7..0]	 <=>	[C2, C1, E1, F2, H1, J3, J2, J1]
		);
END I2C_TOP;

architecture behavioral of I2C_TOP is

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
	
	component MUX_3x1_3SEL is
	port(
			i_A 		: in std_logic_vector(7 downto 0);
			i_B 		: in std_logic_vector(7 downto 0);
			i_C 		: in std_logic_vector(7 downto 0);
			i_SELA	: in std_logic;
			i_SELB 	: in std_logic;
			i_SELC 	: in std_logic;
			o_ID 		: out std_logic_vector(7 downto 0);	
			o_S 		: out std_logic_vector(7 downto 0)	
		);
	END component;
	
	component BCD7 is
	port(
			i_IN			: in std_logic_vector(7 downto 0);	--- entrada de dado [0 a 255] do MUX_3x1_3SEL
			o_BCD0		: out std_logic_vector(7 downto 0); --- unidade
			o_BCD1		: out std_logic_vector(7 downto 0); --- dezena
			o_BCD2		: out std_logic_vector(7 downto 0)	--- centena
		);
	END component;
	
	
	signal w_SCL			: std_logic;							--- sinal de CLOCK SCL I2C
	signal w_SDA			: std_logic;							--- sinal de DADO SDA I2C
	
	signal w_ENABLE_SL_A	: std_logic;							--- sinal de enable do SLAVE A para MUX_3x1_3SEL
	signal w_ENABLE_SL_B	: std_logic;							--- sinal de enable do SLAVE B para MUX_3x1_3SEL
	signal w_ENABLE_SL_C	: std_logic;							--- sinal de enable do SLAVE C para MUX_3x1_3SEL
	signal w_DATA_SL_A	: std_logic_vector (7 downto 0);	--- sinal de dado do SLAVE A para MUX_3x1_3SEL
	signal w_DATA_SL_B	: std_logic_vector (7 downto 0);	--- sinal de dado do SLAVE B para MUX_3x1_3SEL
	signal w_DATA_SL_C	: std_logic_vector (7 downto 0);	--- sinal de dado do SLAVE C para MUX_3x1_3SEL
	
	signal w_DATA_BCD7	: std_logic_vector (7 downto 0);	--- sinal de dado do MUX_3x1_3SEL para o BCD7
	
begin
	
	U_MASTER : MASTER
	port map(
			i_CLK				=> i_CLK,				--- entrada de Clock
			i_RST				=> i_RST,				--- entrada de RST global
			i_BT_A			=> i_BT_A,				--- entrada de Botão de seleção SLAVE A
			i_BT_B			=> i_BT_B,				--- entrada de Botão de seleção SLAVE B
			i_BT_C			=> i_BT_C,				--- entrada de Botão de seleção SLAVE C
			i_DATA_SW		=> i_DATA_SW,			--- entrada de dado dos Switches
			o_SCL				=> w_SCL,				--- saida de sinal de Clock I2C
			o_SDA				=> w_SDA					--- saida de sinal de dado I2C
		);
	
	U_SLAVE_A : SLAVE
	generic map(
			ADD 		=> "0000000"		--- Address do Slave
		)
	port map(
			i_CLK		=> i_CLK,			--- entrada de Clock global
			i_RST		=> i_RST,			--- entrada de RST global
			i_SCL		=> w_SCL,			--- entrada de sinal de Clock i2c
			i_SDA		=> w_SDA,			--- entrada de sinal de dado i2c
			o_ENABLE	=> w_ENABLE_SL_A,	--- saida para MUX_3x1_3SEL
			o_DATA	=> w_DATA_SL_A		--- saida de dado para MUX_3x1_3SEL
		);
	
	U_SLAVE_B : SLAVE
	generic map(
			ADD 		=> "0000001"		--- Address do Slave
		)
	port map(
			i_CLK		=> i_CLK,			--- entrada de Clock global
			i_RST		=> i_RST,			--- entrada de RST global
			i_SCL		=> w_SCL,			--- entrada de sinal de Clock i2c
			i_SDA		=> w_SDA,			--- entrada de sinal de dado i2c
			o_ENABLE	=> w_ENABLE_SL_B,	--- saida para MUX_3x1_3SEL
			o_DATA	=> w_DATA_SL_B		--- saida de dado para MUX_3x1_3SEL
		);
	
	U_SLAVE_C : SLAVE
	generic map(
			ADD 		=> "0000010"		--- Address do Slave
		)
	port map(
			i_CLK		=> i_CLK,			--- entrada de Clock global
			i_RST		=> i_RST,			--- entrada de RST global
			i_SCL		=> w_SCL,			--- entrada de sinal de Clock i2c
			i_SDA		=> w_SDA,			--- entrada de sinal de dado i2c
			o_ENABLE	=> w_ENABLE_SL_C,	--- saida para MUX_3x1_3SEL
			o_DATA	=> w_DATA_SL_C		--- saida de dado para MUX_3x1_3SEL
		);
	
	
	U_MUX_3x1_3SEL : MUX_3x1_3SEL
	port map(
			i_A 		=> w_DATA_SL_A,	---
			i_B 		=> w_DATA_SL_B,	---
			i_C 		=> w_DATA_SL_C,	---
			i_SELA	=> w_ENABLE_SL_A,	---
			i_SELB 	=> w_ENABLE_SL_B,	---
			i_SELC 	=> w_ENABLE_SL_C,	---
			o_ID 		=> o_BCD3,			--- 	
			o_S 		=> w_DATA_BCD7		--- 
		);
	
	
	U_BCD7 : BCD7
	port map(
			i_IN		=> w_DATA_BCD7,	--- entrada de dado [0 a 255] do MUX_3x1_3SEL
			o_BCD0	=> o_BCD0,			--- unidade
			o_BCD1	=> o_BCD1,			--- dezena
			o_BCD2	=> o_BCD2			--- centena
		);
	
	o_LEDg <= w_DATA_SL_A;

end behavioral;