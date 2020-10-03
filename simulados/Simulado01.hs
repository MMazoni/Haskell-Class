module Simulado01 where

--3.Crie um tipo com dois valores (de sua escolha) sendo um deles contendo 3 campos quaisquer e outro sem campo algum.

data Qualquer = Ave {
    tamanho :: Double,
    nome :: String,
    tipo :: String
} | Peixe deriving Show

--4.Considere a função:

foo :: Int -> Int -> Int
foo k 0 = k
foo k x
     | even x = k + (foo (k+1) (x-1)) 
     | otherwise = k * (foo k (x-1))


--Faça o racicínio por equações "teste de mesa" da expressão: foo 10 4

--foo 10 4 = 10 + (foo 11 3)    = 10 + 1705
--(foo 11 3) = 11 * (foo 11 2)  = 11 * 155
--(foo 11 2) = 11 + (foo 12 1)  = 11 + 144
--(foo 12 1) = 12 * (foo 12 0)  = 12 * 12 
--(foo 12 0)                    = 12
