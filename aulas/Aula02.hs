module Aula02 where

soma :: (Double,Double) -> Double
soma (x,y) = x+y

ehPrimo :: Int -> Bool
ehPrimo n = 2 == length (divisores n)

divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], mod n x == 0] 

profa :: [[[Int]]]
profa = take 8 (repeat [tabuada x | x <- [1..10]])

tabuada :: Int -> [Int]
tabuada x = [x*n | n <- [1..10]]

x :: Int
x = x + 1

tamanhoIns :: Char -> String -> Int
tamanhoIns ch st = length (ch : st)

reverter :: String -> String
reverter ls = reverse ls

dobro :: Int -> Int
dobro x = 2*x

somar :: Double -> Double -> Double
somar x y = x + y