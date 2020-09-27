module Exercicio03 where

--3.1)

data Pergunta = Sim | Nao deriving Show

pergNum :: Pergunta -> Int
pergNum Sim = 1
pergNum Nao = 0

listPergs :: [Pergunta] -> [Int]
listPergs x = [ pergNum xs | xs <- x ] 

and' :: Pergunta -> Pergunta -> Bool
and' Sim Sim = True
and' _ _ = False

or' :: Pergunta -> Pergunta -> Bool
or' Nao Nao = False
or' _ _ = True

not' :: Pergunta -> Bool
not' Sim = False
not' _ = True

--3.2)

data Temperatura = Celsius Double | Farenheit Double | Kelvin Double deriving Show


converterCelsius :: Temperatura -> Temperatura
converterCelsius (Farenheit x) = Celsius ((x-32)* 5/9)
converterCelsius (Kelvin x) = Celsius (x - 273.15)
converterCelsius (Celsius x) = Celsius x

converterKelvin :: Temperatura -> Temperatura
converterKelvin (Farenheit x) = Kelvin ((x -32) * (5/7) + 273.15)
converterKelvin (Celsius x) = Kelvin (x + 273.15)
converterKelvin (Kelvin x) = Kelvin x

converterFarenheit :: Temperatura -> Temperatura
converterFarenheit (Celsius x) = Farenheit (x * 9/5 + 32)
converterFarenheit (Kelvin x) = Farenheit ((x - 273.15) * 9/5 + 32)
converterFarenheit (Farenheit x) = Farenheit x

--3.3)

data Jokenpo = Pedra | Papel | Tesoura | Empate deriving Show

jogoJokenpo :: Jokenpo -> Jokenpo -> Jokenpo
jogoJokenpo Papel Tesoura = Tesoura
jogoJokenpo Pedra Tesoura = Pedra
jogoJokenpo Tesoura Papel = Tesoura
jogoJokenpo Tesoura Pedra = Pedra
jogoJokenpo Papel Pedra = Papel
jogoJokenpo Pedra Papel = Papel
jogoJokenpo _ _ = Empate

--3.4)

apenasMaiusculaMinuscula :: String -> String
apenasMaiusculaMinuscula [] = []
apenasMaiusculaMinuscula (x:xs)
    | elem x (['A'..'Z'] ++ ['a'..'z']) = x : apenasMaiusculaMinuscula xs
    | otherwise = apenasMaiusculaMinuscula xs

--3.5)

data UnidadeComprimento = Metro | Inch | Yard | Foot deriving Show

data ConverterUnidade = ConverterUnidade {
    valor :: Double,
    unidade:: UnidadeComprimento
} deriving Show 

converterMetros :: ConverterUnidade -> ConverterUnidade
converterMetros (ConverterUnidade x Inch) = (ConverterUnidade (x/39.37) Metro)
converterMetros (ConverterUnidade x Yard) = (ConverterUnidade (x/1.094) Metro)
converterMetros (ConverterUnidade x Foot) = (ConverterUnidade (x/3.281) Metro)
converterMetros (ConverterUnidade x _) = (ConverterUnidade x Metro)

converterImperial :: ConverterUnidade -> UnidadeComprimento -> Either ConverterUnidade String
converterImperial (ConverterUnidade x Metro) Inch = Left (ConverterUnidade (x*39/37) Inch)
converterImperial (ConverterUnidade x Metro) Yard = Left (ConverterUnidade (x*1.094) Yard)
converterImperial (ConverterUnidade x Metro) Foot = Left (ConverterUnidade (x*3.281) Foot)
converterImperial (ConverterUnidade x Metro) Metro = Left (ConverterUnidade x Metro)
converterImperial (ConverterUnidade x _) _ = Right "Apenas de Metro para Imperial"

--3.6)

data Mes = Janeiro | Fevereiro | Marco | Abril | Maio | Junho | Julho | Agosto | Setembro | Outubro | Novembro | Dezembro deriving (Ord, Show, Eq)

checaFim :: Mes -> Int
checaFim x
    | elem x [Abril, Junho, Setembro, Novembro] = 30
    | x == Fevereiro = 28
    | otherwise = 31

--prox :: Mes -> Mes
