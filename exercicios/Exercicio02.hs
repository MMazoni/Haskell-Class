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
ex21e = [1/2^x | x<-[0..5]]

---ex 2.1.f

ex21f :: [Int]
ex21f = [1 + x*9 | x<-[0..7]]

---ex 2.1.h

ex21h :: [Char]
ex21h = [ x | x<-['@'..'L']]

-----------------------------

---ex 2.2

verificaPar :: String -> Bool
verificaPar x = even $ length x

---ex 2.3

listaAvessa :: [String] -> [String]
listaAvessa x = [ reverse xs | xs <- x]

---ex 2.4

tamanhoSemPar :: [String] -> [Int]
tamanhoSemPar x = [length xs | xs <- x, mod (length xs) 2 /= 0]

---ex 2.5

cabeca :: [Char] -> Char
cabeca x = last $ reverse x