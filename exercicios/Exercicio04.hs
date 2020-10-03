module Exercicio04 where

--4.1)
mediaFoldl :: [Double] -> Double
mediaFoldl lista = (foldl (\x i -> x +i) 0 lista) / (fromIntegral $ length lista)

--4.2)
retornaPalindromos :: [String] -> [String]
retornaPalindromos = filter (\x -> x == reverse x)

--4.3)
pares :: [Int] -> [Int]
pares = filter (\x -> even x)

impares :: [Int] -> [Int]
impares = filter (\x -> odd x)

--4.4)

ehPrimo :: Int -> Bool
ehPrimo n = n > 1 && all (\z -> mod n z /= 0) [2..n-1]

primos :: [Int] -> [Int]
primos = filter ehPrimo

--4.5)

dobroSemMultQuatro :: [Int] -> [Int]
dobroSemMultQuatro = (filter (\x -> mod x 4 /= 0) . map (*2))

--4.6) Faça uma função func que receba uma função f de tipo (String -> String), e uma String s que retorna o reverso de s concatenando com aplicação da função f em s.

func :: (String -> String) -> String -> String
func f s = reverse s ++ f s

--4.7) Crie um tipo Dia contendo os dias da semana. Faça uma função que receba uma lista de dias e filtre as Terças

data Dia = Segunda | Terca | Quarta | Quinta | Sexta | Sabado | Domingo deriving (Eq, Show)

apenasTercas :: [Dia] -> [Dia]
apenasTercas = filter (\z -> z == Terca)

--4.8)Implemente o tipo Dinheiro que contenha os campos valor e correncia ( Real ou Dolar ), e uma função que converta todos os "dinheiros" de uma lista para dólar (e outra para real). Com isso, implemente funções para:

--Filtrar todos os Dolares de uma lista de Dinheiro .
--Somar todos os Dolares de uma lista.
--Contar a quantidade de Dolares de uma lista.

data Correncia = Real | Dolar deriving (Show, Eq)

data Dinheiro = Dinheiro {
    valor :: Double,
    correncia :: Correncia
} deriving (Eq, Show)

apenasDolar :: [Dinheiro] -> [Dinheiro]
apenasDolar = filter (\z -> correncia z == Dolar)

somaDolar :: [Dinheiro] -> Double
somaDolar = foldl (\x y -> valor y + x) 0

contaDolar :: [Dinheiro] -> Int
contaDolar = foldl (\z x -> 1 + z) 0