-- 201512285, Nam EunWoo
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.my_package_A.all;

ENTITY REPORT_A1 IS
	PORT(A : in std_logic_vector(2 downto 0);
	OUT1, OUT2 : out std_logic);
END REPORT_A1;

ARCHITECTURE dataflow Of REPORT_A1 IS
	signal W1, W2, W3 : std_logic;
BEGIN 
	G1 : XOR_2	PORT MAP(A(2), A(1), W1);
	G2 : AND_2	PORT MAP(A(2), A(1), W2);
	G3 : XOR_2	PORT MAP(W1, A(0), OUT1);
	G4 : AND_2	PORT MAP(W1, A(0), W3);
	G5 : OR_2	PORT MAP(W3, W2, OUT2);
END dataflow;