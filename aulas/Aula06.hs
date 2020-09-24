module Aula06 where

-- Typeclass Monoid
import Data.Monoid

data Or = Or Bool deriving Show

instance Semigroup Or where
    (Or x) <> (Or y) = 
        Or (x || y)

instance Monoid Or where
    mempty = Or False

-- Type Class

class SimNao a where
    simnao :: a -> Bool

instance SimNao Bool where
    simnao = id
    -- igual a simnao a = a

instance SimNao [a] where
    simnao [] = False
    simnao _ = True

instance SimNao Int where
    simnao = even


-- Tipos Parametricos:

-- Enumeração: 5
data Curso = ADS | SI | GE | GP | LOG
    deriving Show

-- Produto: (String, Int, Curso)
-- |String| * |Int| * |Curso|
-- |String| * |Int| * 5
data Aluno = Aluno String Int Curso
    deriving Show

-- Produto com Soma: Either (String, Double) String
data Cliente = Regular String Double
            | Especial String
            deriving Show


data Bolsa a = Bolsa a a deriving Show

instance Semigroup a => Semigroup (Bolsa a) where
    Bolsa c1 c2 <> Bolsa c3 c4 = Bolsa (c1 <> c3) (c2 <> c4)

instance Monoid a => Monoid (Bolsa a) where
    mempty = Bolsa mempty mempty

instance Eq a => Eq (Bolsa a) where
    Bolsa c1 c2 == Bolsa c3 c4 = 
        ((c1 == c3) && (c2 == c4))
        ||  ((c1 == c4) && (c2 == c3)) 

data Mochila a b = Mochila a a b b deriving Show

-- Polimorfismo Parametrico: é quando sua função ou tipo
-- possui variaveis de tipo. Os polimorfismo parametrico
-- impede que valores (recebidos ou retornados) sejam
-- inspecionados.

-- Polimorfica em a
-- De alta-ordem

-- foo e oof nos mostra que os tipos (Bool -> a)
-- e (a,a) são matematicamente a mesma coisa

-- Desafio: Mostre que Bool e Either () (), onde 
-- data () = () são matematicamente a mesma coisa

-- Desafio: Mostre que (Bool, a) e Either a a
-- são matematicamente a mesma coisa
foo :: (Bool -> a) -> (a,a)
foo f = (f True, f False)

-- Polimorfica
oof :: (a,a) -> Bool -> a
oof (x, y) True = x
oof (x, y) False = y

-- Monomorfica
bin :: Bool -> Int
bin True = 1
bin False = 0

