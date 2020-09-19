module Exercicio02 where

---ex 2.1.b
ex21b :: [Int]
ex21b = [ x | x<-[1..40], mod x 4 /= 0 ]

---ex 2.1.c

ex21c :: [String]
--ex21c = [ x | x<-["AaBB", "AbBB", "AcBB", "AdBB", "AeBB", "AfBB", "AgBB"] ]
ex21c = [x | x<-['A'+ ['a'..'g'] + "BB" ]]

---