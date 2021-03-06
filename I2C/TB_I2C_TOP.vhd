--- TB_I2C_TOP I2C

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity TB_I2C_TOP is
END TB_I2C_TOP;

architecture behavioral of TB_I2C_TOP is
	
	component I2C_TOP is
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
			o_BCD3		: out std_logic_vector (7 downto 0)		--- saida para display de 7 segmentos		-		HEX3			 <=>	[G16, B18, F15, A19, B19, C19, D15, G15]
		);
	END component;
	
	signal w_CLK		: std_logic;								--- sinal de entrada de Clock global					-		G21			 <=>	G21
	signal w_RST		: std_logic;								--- sinal de entrada de RST global 						-		SW9			 <=>	D2
	signal w_BT_A		: std_logic;								--- sinal de entrada de Botão de seleção SLAVE A	-		BUTTON0		 <=>	H2
	signal w_BT_B		: std_logic;								--- sinal de entrada de Botão de seleção SLAVE B	-		BUTTON1		 <=>	F1
	signal w_BT_C		: std_logic;								--- sinal de entrada de Botão de seleção SLAVE C	-		BUTTON2		 <=>	G3
	signal w_DATA_SW	: std_logic_vector (7 downto 0);		--- sinal de entrada de dado dos Switches 			-		SW[7..0]		 <=>	[E3, H7, J7, G5, G4, H6, H5, J6]
	signal w_BCD0		: std_logic_vector (7 downto 0);		--- sinal de saida para display de 7 segmentos		-		HEX0			 <=>	[D13, E11, F11, H12, H13, G12, F12, F13]
	signal w_BCD1		: std_logic_vector (7 downto 0);		--- sinal de saida para display de 7 segmentos		-		HEX1			 <=>	[B15, A13, B13, C13, A14, B14, E14, A15]
	signal w_BCD2		: std_logic_vector (7 downto 0);		--- sinal de saida para display de 7 segmentos		-		HEX2			 <=>	[A18, D15, A16, B16, E15, A17, B17, F14]
	signal w_BCD3		: std_logic_vector (7 downto 0);		--- sinal de saida para display de 7 segmentos		-		HEX3			 <=>	[G16, B18, F15, A19, B19, C19, D15, G15]
	
begin
	
	U_I2C : I2C_TOP
	port map(
		--	DECLARAÇÃO 	: TIPO			--- FUNÇÃO DA PORTA								- NOME DO COMPONEM <=>	PINOS 	
			i_CLK			=> w_CLK,		--- entrada de Clock global					-		G21			 <=>	G21
			i_RST			=> w_RST,		--- entrada de RST global 						-		SW9			 <=>	D2
--			i_RW			=> w_RW,			--- entrada de seleção RW I2C					-		SW8			 <=>	E4
			i_BT_A		=> w_BT_A,		--- entrada de Botão de seleção SLAVE A	-		BUTTON0		 <=>	H2
			i_BT_B		=> w_BT_B,		--- entrada de Botão de seleção SLAVE B	-		BUTTON1		 <=>	F1
			i_BT_C		=> w_BT_C,		--- entrada de Botão de seleção SLAVE C	-		BUTTON2		 <=>	G3
			i_DATA_SW	=> w_DATA_SW,	--- entrada de dado dos Switches 			-		SW[7..0]		 <=>	[E3, H7, J7, G5, G4, H6, H5, J6]
			o_BCD0		=> w_BCD0,		--- saida para display de 7 segmentos		-		HEX0			 <=>	[D13, E11, F11, H12, H13, G12, F12, F13]
			o_BCD1		=> w_BCD1,		--- saida para display de 7 segmentos		-		HEX1			 <=>	[B15, A13, B13, C13, A14, B14, E14, A15]
			o_BCD2		=> w_BCD2,		--- saida para display de 7 segmentos		-		HEX2			 <=>	[A18, D15, A16, B16, E15, A17, B17, F14]
			o_BCD3		=> w_BCD3		--- saida para display de 7 segmentos		-		HEX3			 <=>	[G16, B18, F15, A19, B19, C19, D15, G15]
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
		
		wait for 0.2 ms;	
		w_DATA_SW		<= "11111111";
		
		w_BT_B			<= '0';
		wait for 0.001 ms;
		w_BT_B			<= '1';
		
		wait for 0.3 ms;
		w_DATA_SW		<= "01010111";
		
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