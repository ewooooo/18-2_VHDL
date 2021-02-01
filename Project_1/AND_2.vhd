-- 201512285, Nam EunWoo
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AND_2 IS
	PORT(A, B : in std_logic;
	Y : out std_logic);
END AND_2;

ARCHITECTURE dataflow Of AND_2 IS
BEGIN 
	PROCESS(A,B)
	BEGIN
	IF A = '1' AND B = '1' THEN Y <= '1';
	ELSE Y <= '0';
	END IF;
	END PROCESS;
END dataflow;