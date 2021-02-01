-- 201512285, Nam EunWoo
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY REPORT_A3 IS
	PORT(CLK,RST : in std_logic;
	Q : buffer std_logic_vector(3 downto 0));
END REPORT_A3;

ARCHITECTURE dataflow Of REPORT_A3 IS
BEGIN 
	PROCESS
	BEGIN
	WAIT UNTIL CLK = '1';
	IF RST = '1' THEN Q <= "0000";
	ELSE 
	CASE Q IS
	WHEN "0000" => Q <= "0001";
	WHEN "0001" => Q <= "0010";
	WHEN "0010" => Q <= "0011";
	WHEN "0011" => Q <= "0100";
	WHEN "0100" => Q <= "0101";
	WHEN "0101" => Q <= "0110";
	WHEN "0110" => Q <= "0111";
	WHEN "0111" => Q <= "1000";
	WHEN "1000" => Q <= "1001";
	WHEN "1001" => Q <= "0000";
	WHEN OTHERS => Q <= "----";
	END CASE;	
	END IF;
	END PROCESS;
END dataflow;