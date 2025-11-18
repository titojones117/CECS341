library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_subtractor_4bit is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           SUB : in STD_LOGIC;
           Result : out STD_LOGIC_VECTOR (3 downto 0);
           Cout : out STD_LOGIC);
end adder_subtractor_4bit;

architecture Structural of adder_subtractor_4bit is
    
    component full_adder is
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               Cin : in STD_LOGIC;
               Sum : out STD_LOGIC;
               Cout : out STD_LOGIC);
    end component;
    
    signal B_xor : STD_LOGIC_VECTOR(3 downto 0); 
    signal carry : STD_LOGIC_VECTOR(3 downto 0);  
    
begin
    
    B_xor(0) <= B(0) XOR SUB;
    B_xor(1) <= B(1) XOR SUB;
    B_xor(2) <= B(2) XOR SUB;
    B_xor(3) <= B(3) XOR SUB;
        
    FA0: full_adder port map (
        A => A(0),
        B => B_xor(0),
        Cin => SUB,        
        Sum => Result(0),
        Cout => carry(0)
    );
    
    FA1: full_adder port map (
        A => A(1),
        B => B_xor(1),
        Cin => carry(0),
        Sum => Result(1),
        Cout => carry(1)
    );
    
    FA2: full_adder port map (
        A => A(2),
        B => B_xor(2),
        Cin => carry(1),
        Sum => Result(2),
        Cout => carry(2)
    );
    
    FA3: full_adder port map (
        A => A(3),
        B => B_xor(3),
        Cin => carry(2),
        Sum => Result(3),
        Cout => carry(3)
    );
    
    Cout <= carry(3);
    
end Structural;