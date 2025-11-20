library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_subtractor_tb is
end adder_subtractor_tb;

architecture tb of adder_subtractor_tb is

  signal A      : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  signal B      : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  signal SUB    : STD_LOGIC := '0';  
  signal Result : STD_LOGIC_VECTOR(3 downto 0);
  signal Cout   : STD_LOGIC;

  component adder_subtractor_4bit is
    Port (
      A      : in  STD_LOGIC_VECTOR (3 downto 0);
      B      : in  STD_LOGIC_VECTOR (3 downto 0);
      SUB    : in  STD_LOGIC;
      Result : out STD_LOGIC_VECTOR (3 downto 0);
      Cout   : out STD_LOGIC
    );
  end component;
begin

  UUT: adder_subtractor_4bit
    port map (
      A      => A,
      B      => B,
      SUB    => SUB,
      Result => Result,
      Cout   => Cout
    );

  stim: process
  begin
   
    SUB <= '0';
    A <= "0000"; B <= "0000"; wait for 10 ns;
    A <= "1111"; B <= "1111"; wait for 10 ns;
    A <= "1100"; B <= "0101"; wait for 10 ns;
    A <= "0111"; B <= "0110"; wait for 10 ns;
    A <= "1111"; B <= "0001"; wait for 10 ns;

    SUB <= '1';
    A <= "0000"; B <= "0000"; wait for 10 ns;
    A <= "1111"; B <= "1111"; wait for 10 ns;
    A <= "1100"; B <= "0101"; wait for 10 ns;
    A <= "0111"; B <= "0110"; wait for 10 ns;
    A <= "0000"; B <= "0001"; wait for 10 ns;

    wait;
  end process;
end tb;
