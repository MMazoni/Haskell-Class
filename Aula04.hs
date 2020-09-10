module Aula4 where

------- CAPITULO 4 ------------------------

-- Teste de Mesa - Fazer o teste de mesa: foo [1..9]
foo :: [Int] -> Int
foo [] = 0
foo (x:xs)
    | mod x 3 == 0 = x + foo xs
    | mod x 3 == 1 = foo xs
    | mod x 3 == 2 = 1 + foo xs

elimVogal :: String -> String
elimVogal [] = []
elimVogal (x:xs)
    | elem x "AEIOUaeiou" = elimVogal xs
    | otherwise = x : elimVogal xs
-- RECURSÃO: É uma função que chama a ela propria para 
-- resolver um problema. Ela para quando atingir o caso base.
fat :: Integer -> Integer
fat 0 = 1
fat 1 = 1
fat n = n * fat(n-1)


-- Tail recursion
fat' :: Integer -> Integer -> Integer
fat' 0 _ = 1
fat' 1 acc = acc
fat' n acc = fat' n 1

fatorial :: Integer -> Integer
fatorial n = fat' n 1

fib'' :: Integer -> Integer -> Integer -> Integer
fib'' 0 _ _ = 0
fib'' 1 _ _ = 1
fib'' n af at = fib'' (n-1) (af + at) af

-- Memoization
fib':: Int -> Integer 
fib' = ([fibAux n | n <- [0..]] !!)
   where
        fibAux 0 = 0
        fibAux 1 = 1
        fibAux n = fib'(n-1) + fib' (n -2)



fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib(n-1) + fib(n-2)






--------FIM DO CAPITULO 3------------------

data Correncia = Real | Dollar | Peso
    deriving (Eq, Show)

-- Record Syntax
data Dinheiro = Dinheiro {
    valor :: Double,
    correncia :: Correncia
} deriving Show

convReal :: Dinheiro -> Dinheiro
convReal (Dinheiro valor Dollar) = Dinheiro (5.31*valor) Real
convReal (Dinheiro valor Peso) = Dinheiro (0.071*valor) Real
convReal d = d

convReal' :: Dinheiro -> Dinheiro
convReal' d
    | correncia d == Dollar =
        Dinheiro (5.31 * (valor d)) Real
    | correncia d == Peso =
        Dinheiro (0.071 * (valor d)) Real 
    | otherwise = d  

-- Guards: permite o uso de condições booleana
modulo :: Double -> Double
modulo x
    | x >= 0 = x
    | x < 0 = -x

    