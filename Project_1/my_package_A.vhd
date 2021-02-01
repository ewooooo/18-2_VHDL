-- 201512285, Nam EunWoo
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE my_package_A IS
	component XOR_2
	PORT(A, B : in std_logic;	Y : out std_logic);
	end component;
	component AND_2
	PORT(A, B : in std_logic;	Y : out std_logic);
	end component;
	component OR_2
	PORT(A, B : in std_logic;	Y : out std_logic);
	end component;
END my_package_A;