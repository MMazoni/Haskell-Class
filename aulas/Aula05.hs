module Aula5 where

contaPar :: Int -> Int -> Int
contaPar cont l
    | even l = cont + 1
    | otherwise = cont 

dobrar :: (b -> a -> b) -> b -> [a] -> b
dobrar _ acc [] = acc
dobrar f acc (x:xs) = dobrar f (f acc x) xs

tamanho :: String -> Int 
tamanho xs = length xs

ehPar :: Int -> Bool 
ehPar n = even n

maiorZero :: Int -> Bool
maiorZero x = x > 0

tamanhoMaiorTres :: String -> Bool
tamanhoMaiorTres xs = length xs > 3

-- Lambda: Sao funcoes anonimas que
-- podem ser usadas a qualquer momento
-- numa expressao.

-- Currying: Eh o ato de criar novas
-- funçoes a partir de funçoes existentes
-- suprimindo um ou mais argumentos (em ordem).

-- High-order functions (Funçoes 
-- de alta ordem): É uma funçao que
-- recebe e/ou retorna outras funçoes.
-- Em Haskell, as funçoes
-- se comportam como valores. 

soma :: Int -> Int -> Int -> Int 
soma x y z = x+y+z

dobro :: Int -> Int 
dobro x = 2*x

-- foo dobro
-- 11
foo :: (Int -> Int) -> Int 
foo f = 1 + f 5

g :: String -> (Int -> Int) 
g [] = \x -> x
g "dobro" = dobro
g "triplo" = \x -> 3*x
g _ = \x -> 5*x




