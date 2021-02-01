-- 201512285, Nam EunWoo
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY XOR_2 IS
	PORT(A, B : in std_logic;
	Y : out std_logic);
END XOR_2;

ARCHITECTURE dataflow Of XOR_2 IS
BEGIN 
	PROCESS(A,B)
	BEGIN
	IF A = B THEN Y <= '0';
	ELSE Y <= '1';
	END IF;
	END PROCESS;
END dataflow;