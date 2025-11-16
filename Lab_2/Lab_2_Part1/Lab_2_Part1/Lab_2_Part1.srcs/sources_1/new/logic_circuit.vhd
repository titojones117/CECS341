----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2025 05:01:37 PM
-- Design Name: 
-- Module Name: logic_circuit - Behavioral
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

entity logic_circuit is
port ( A,B,C: in STD_LOGIC;
       F: out STD_LOGIC);
--  Port ( );
end logic_circuit;

architecture bool_exp of logic_circuit is

begin
    F <= (A and B) or ( not (A) and C) or
         (A and not (B) and not (C) );


end bool_exp;
