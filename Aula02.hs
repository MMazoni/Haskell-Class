module Aula02 where

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