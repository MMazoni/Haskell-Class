module Prova01 where

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib k = fib (k - 4) + fib (k - 3)

-- fib 5 = fib (5-4) + fib(5-3)
-- fib 1 + fib 2 = 1 + fib -2


--3)
-- foldl (\x y -> min x y) 99999 [-9,8,2,12,-13,22,75,-67,0]
-- min 99999 -9 = -9
-- min -9 8 = -9
-- min -9 2 = -9
-- min -9 12 = -9
-- min -9 -13 = -13
-- min -13 22 = -13
-- min -13 75 = -13
-- min -13 -67 = -67
-- min -67 0 = -67
-- -67

--4)
f1 :: Int -> Int
f1 x = sum [3*n + 1 | n <- [1..x], n /= 5]

f2 :: Int -> Int
--f2 x = foldl (\x y -> y*3 + 1) 0 (filter (\n -> n /= 5) [1..x])
f2 x = foldl (+) 0 (map (\n -> 3*n + 1) $ filter (\n -> n /= 5) [1..x])

--5)
data Resp = Sim | Nao

instance Eq Resp where 
    Sim == Sim = True
    Nao == Nao = True
    _ == _ = False

instance Show Resp where
    show Sim = "Sim"
    show Nao = "Nao"

--7)

data Fruta = Abacaxi | Morango | Pessego deriving (Eq, Show)

data Cesta = Cesta Fruta Double deriving (Eq, Show)


filtraFruta :: Fruta -> [Cesta] -> [Cesta]
filtraFruta f cs = filter (\(Cesta g v) -> f == g) cs


totalFruta :: Fruta -> [Cesta] -> Double
totalFruta f cs = foldl (\acc (Cesta n p) -> acc + p) 0 (filtraFruta f cs) 
