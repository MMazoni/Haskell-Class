module Aula3 where


data Correncia = Real | Peso | Dollar deriving Show

-- Record Syntax
data Dinheiro = Dinheiro 
    valor :: Double,
    correncia :: Correncia 
    deriving Show

convReal :: Dinheiro -> Dinheiro
convReal (Dinheiro valor Peso) = Dinheiro (0.072*valor) Real
convReal (Dinheiro valor Dollar) = Dinheiro (5.34*valor) Real
convReal x = x

data Aluno = Aluno String Int
            | Especial String
            deriving Show

fazerNiver :: Aluno -> Aluno
fazerNiver (Aluno nome idade) = Aluno nome (idade+1)
fazerNiver x = x

-- 0 valor
data Void

-- 1 valor
data Sozinho = Sozinho

data Dia = Domingo | Segunda | Terca
    | Quarta | Quinta | Sexta | Sabado
    deriving (Read,Ord, Eq, Show)

convDia :: String -> Either String Dia
convDia "Segunda" = Right Segunda
convDia "Terca" = Right Terca
convDia "Quarta" = Right Quarta
convDia "Quinta" = Right Quinta
convDia "Sexta" = Right Sexta
convDia "Sabado" = Right Sabado
convDia "Domingo" = Right Domingo
convDia _ = Left "Dia invalido"

safeHead :: String -> Maybe Char
safeHead "" = Nothing
safeHead xs = Just (head xs)

-- Função Total
-- Pattern Matching: Desconstroi um valor
-- e revela sua estrutura interna (baseado
-- no tipo). Usa-se em expressões, na entrada
-- na função ou em case.
agenda :: Dia -> String
agenda Segunda = "Dia de choro..."
agenda Quarta  = "Dia de haskell..."
agenda Quinta  = "Empreendedorismo..."
agenda Sexta   = "Encontrar o amor..."
agenda Sabado  = "Era pra estudar..."
agenda _       = "Dia de depressao..."


-- Funcao Parcial
toDia :: Int -> Either String Dia
toDia 1 = Right Domingo
toDia 2 = Right Segunda
toDia 3 = Right Terca
toDia 4 = Right Quarta
toDia 5 = Right Quinta
toDia 6 = Right Sexta
toDia 7 = Right Sabado
toDia _ = Left "Dia invalido"