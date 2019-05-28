--- MASTER I2C

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity MASTER is
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
END MASTER;

architecture behavioral of MASTER is
	
	component STM_MASTER is
	port(
			i_CLK				: in std_logic;								--- entrada de Clock
		
			i_RST				: in std_logic;								--- entrada de RST global
			i_BT_A			: in std_logic;								--- entrada de Botão de seleção SLAVE A
			i_BT_B			: in std_logic;								--- entrada de Botão de seleção SLAVE B
			i_BT_C			: in std_logic;								--- entrada de Botão de seleção SLAVE C
			i_DATA_SW		: in std_logic_vector (7 downto 0);		--- entrada de dado dos Switches
		
			i_CTRL_START	: in std_logic;								--- entrada de controle START_FRAME
			i_CTRL_P2S		: in std_logic;								--- entrada de controle P2S
			i_CTRL_STOP		: in std_logic;								--- entrada de controle STOP_FRAME
		
			o_ENABLE_START	: out std_logic;								--- saida para Enable de controle P2S
			o_ENABLE_P2S	: out std_logic;								--- saida para Enable de controle STOP_FRAME
			o_ENABLE_STOP	: out std_logic;								--- saida para Enable de controle START_FRAME
		
			o_ENABLE			: out std_logic;								--- saida para ENABLE GLOBAL
			o_DATA			: out std_logic_vector (15 downto 0)	--- saida de dado I2C para P2S
		);
	END component;
	
	component START_FRAME is
		port(
				i_RST				: in std_logic;							--- entrada de RST global
				i_SCL				: in std_logic;							--- entrada de Clock I2C SCL
				i_ENABLE_START	: in std_logic;							--- entrada de Enable de controle de STM_MASTER
				o_CTRL_START	: out std_logic;							--- saida de controle START_FRAME para STM_MASTER
				o_SDA				: out std_logic							--- saida de dado I2C para REG_SDA
			);
	END component;
	
	component P2S is
		port(
				i_SCL				: in std_logic;								--- entrada de Clock
				i_RST				: in std_logic;								--- entrada de RST global
					
				i_DATA			: in std_logic_vector (15 downto 0);	--- entrada de dado I2C da STM_MASTER
					
				o_CTRL_P2S		: out std_logic;								--- saida de controle P2S para STM_MASTER
				i_ENABLE_P2S	: in std_logic;								--- entrada Enable de controle STM_MASTER
					
				o_SDA				: out std_logic								--- saida de dado SDA
			);
	END component;
	
	component STOP_FRAME is
		port(
				i_RST				: in std_logic;							--- entrada de RST global
				i_SCL				: in std_logic;							--- entrada de Clock I2C SCL -90°
				i_ENABLE_STOP	: in std_logic;							--- entrada de Enable de controle de STM_MASTER
				o_CTRL_STOP		: out std_logic;							--- saida de controle STOP_FRAME para STM_MASTER
				o_SDA				: out std_logic							--- saida de dado I2C para REG_SDA
			);
	END component;
	
	component PLL_100K IS
		PORT(
				i_CLK			: IN STD_LOGIC;								--- entrada de de clock global
				o_CLK_SCL	: OUT STD_LOGIC;								--- saida de clock I2C SCL
				o_CLK_SDA	: OUT STD_LOGIC								--- saida de clock I2C SCL atrasada em 90° para sincronização do SDA
			);
	END component;
	
	component REG_EN IS
	PORT(
			i_CLK		: IN STD_LOGIC;										--- entrada de clock global	
			i_RST		: IN STD_LOGIC;										--- entrada de reset global
			i_ENABLE	: IN STD_LOGIC;										--- entrada de enable da STM_MASTER
			i_D		: IN STD_LOGIC;										--- entrada de dado
			o_Q		: OUT STD_LOGIC										--- saida de dado
		);
	END component;
	
	signal w_ENABLE			: std_logic;								--- sinal de saida para ENABLE GLOBAL
	
	signal w_CTRL_P2S			: std_logic;								--- sinal de entrada de controle P2S
	signal w_CTRL_START		: std_logic;								--- sinal de entrada de controle START_FRAME
	signal w_CTRL_STOP		: std_logic;								--- sinal de entrada de controle STOP_FRAME

	signal w_ENABLE_START	: std_logic;								--- sinal de saida para Enable de controle P2S
	signal w_ENABLE_STOP		: std_logic;								--- sinal de saida para Enable de controle START_FRAM
	signal w_ENABLE_P2S		: std_logic;								--- sinal de saida para Enable de controle STOP_FRAME

	signal w_DATA				: std_logic_vector (15 downto 0);	--- sinal de saida de dado para MUX_3x1_3SEL
	
	signal w_SDA				: std_logic;								--- sinal de saida saida de dado SDA
	signal w_SCL				: std_logic;								--- sinal de saida saida de dado SDA
	signal w_SCL_90DG			: std_logic;								--- sinal de saida saida de dado SDA

begin
	
	
	U_STM_MASTER : STM_MASTER
	port map(
			i_CLK				=> i_CLK,					--- entrada de Clock
			i_RST				=> i_RST,					--- entrada de RST global
			i_BT_A			=> i_BT_A,					--- entrada de Botão de seleção SLAVE A
			i_BT_B			=> i_BT_B,					--- entrada de Botão de seleção SLAVE B
			i_BT_C			=> i_BT_C,					--- entrada de Botão de seleção SLAVE C
			i_DATA_SW		=> i_DATA_SW,				--- entrada de dado dos Switches
			i_CTRL_START	=> w_CTRL_START,			--- entrada de controle START_FRAME
			i_CTRL_P2S		=> w_CTRL_P2S,				--- entrada de controle P2S
			i_CTRL_STOP		=> w_CTRL_STOP,			--- entrada de controle STOP_FRAME
			o_ENABLE_START	=> w_ENABLE_START,		--- saida para Enable de controle START_FRAME
			o_ENABLE_P2S	=> w_ENABLE_P2S,			--- saida para Enable de controle P2S
			o_ENABLE_STOP	=> w_ENABLE_STOP,			--- saida para Enable de controle STOP_FRAME
			o_ENABLE			=> w_ENABLE,				--- saida para ENABLE GLOBAL
			o_DATA			=> w_DATA					--- saida de dado para MUX_3x1_3SEL
		);
	
	U_START_FRAME : START_FRAME
		port map(
				i_RST				=> i_RST,				--- entrada de RST global
				i_SCL				=> w_SCL_90DG,			--- entrada de Clock I2C SCL -90°
				i_ENABLE_START	=> w_ENABLE_START,	--- entrada de Enable de controle de STM_MASTER
				o_CTRL_START	=> w_CTRL_START,		--- saida de controle START_FRAME para STM_MASTER
				o_SDA				=> w_SDA					--- saida de dado I2C para REG_SDA
			);
	
	U_P2S : P2S
		port map(
				i_SCL				=> w_SCL_90DG,			--- entrada de Clock I2C SCL -90°
				i_RST				=> i_RST,				--- entrada de RST global
				i_DATA			=> w_DATA,				--- entrada de dado I2C da STM_MASTER
				o_CTRL_P2S		=> w_CTRL_P2S,			--- saida de controle P2S para STM_MASTER
				i_ENABLE_P2S	=> w_ENABLE_P2S,		--- entrada Enable de controle STM_MASTER
				o_SDA				=> w_SDA					--- saida de dado SDA
			);
	
	U_STOP_FRAME : STOP_FRAME
		port map(
				i_RST				=> i_RST,				--- entrada de RST global
				i_SCL				=> w_SCL_90DG,			--- entrada de Clock I2C SCL -90°
				i_ENABLE_STOP	=> w_ENABLE_STOP,		--- entrada de Enable de controle de STM_MASTER
				o_CTRL_STOP		=> w_CTRL_STOP,		--- saida de controle START_FRAME para STM_MASTER
				o_SDA				=> w_SDA					--- saida de dado I2C para REG_SDA
			);
	
	U_PLL_100K : PLL_100K
		PORT MAP(
				i_CLK			=> i_CLK,						--- entrada de de clock global
				o_CLK_SCL	=> w_SCL,						--- saida de clock I2C SCL
				o_CLK_SDA	=> w_SCL_90DG					--- saida de clock I2C SCL atrasada em 90° para sincronização do SDA
			);
	
	
	U_REG_SCL : REG_EN
		PORT map(
				i_CLK			=> i_CLK,						--- entrada de clock global	
				i_RST			=> i_RST,						--- entrada de reset global
				i_ENABLE		=> w_ENABLE,					--- entrada de enable da STM_MASTER
				i_D			=> w_SCL,						--- entrada de dado
				o_Q			=> o_SCL							--- saida de dado
			);
		
	U_REG_SDA : REG_EN
		PORT map(
				i_CLK			=> i_CLK,						--- entrada de clock global	
				i_RST			=> i_RST,						--- entrada de reset global
				i_ENABLE		=> w_ENABLE,					--- entrada de enable da STM_MASTER
				i_D			=> w_SDA,						--- entrada de dado
				o_Q			=> o_SDA							--- saida de dado
			);
end behavioral;