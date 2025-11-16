----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2025 05:10:39 PM
-- Design Name: 
-- Module Name: logic_circuit_testbench - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_circuit_testbench is
end logic_circuit_testbench;

architecture Behavioral of logic_circuit_testbench is
signal A,B,C: std_logic;
signal F: std_logic;

COMPONENT logic_circuit
PORT ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           F : out STD_LOGIC);
END COMPONENT;
begin

LOGICCIRCUIT: logic_circuit port map(
    A => A,
    B => B,
    C => C,
    F => F);
    
Stimulus_process: process
begin
    A<='0'; B<='0'; C<='0'; wait for 10 ns;
    A<='0'; B<='0'; C<='1'; wait for 10 ns;
    A<='0'; B<='1'; C<='0'; wait for 10 ns;
    A<='0'; B<='1'; C<='1'; wait for 10 ns;
    A<='0'; B<='1'; C<='1'; wait for 10 ns;
    A<='1'; B<='0'; C<='0'; wait for 10 ns;
    A<='1'; B<='0'; C<='1'; wait for 10 ns;
    A<='1'; B<='1'; C<='0'; wait for 10 ns;
    A<='1'; B<='1'; C<='1'; wait for 10 ns;

end process;
end Behavioral;
