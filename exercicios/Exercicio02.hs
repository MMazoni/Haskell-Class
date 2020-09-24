module Exercicio02 where

---ex 2.1.a
ex21a :: [Int]
ex21a = [ 11^x | x<-[0..6]]

---ex 2.1.b
ex21b :: [Int]
ex21b = [ x | x<-[1..40], mod x 4 /= 0 ]

---ex 2.1.c

ex21c :: [String]
ex21c = ["A" ++ [x] ++ "BB" | x<-['a'..'h']]

---ex 2.1.e

ex21e :: [Double]
ex21e = [x | x/2]