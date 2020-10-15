module Aula07 where

{-

class Functor f where
    fmap :: (a -> b) -> f a -> f b

instance Functor [] where
    fmap = map

data Maybe a = Nothing | Just a

instance Functor Maybe where
    fmap f Nothing = Nothing
    fmap f (Just x) = Just (f x)

Lei dos FUNTORES:
    - fmap id lista = lista
    - fmap (g.f) lista = (fmap g . fmap f) lista
-}

tamanho :: String -> Int
tamanho = length

par :: Int -> Bool
par = even

data Bolsa a = Bolsa a Int a deriving Show

instance Functor Bolsa where
    --b é Int (monomorfico) logo o funtor não age
    fmap f (Bolsa a b c) = Bolsa (f a) b (f  c)

{-
fmap id (Bolsa a b c) = Bolsa (id a) b (id c) = Bolsa a b c

FUNTORES (fmap) são limitados

Funtores funcionam apenas com 1 (e somente) parâmetros

FUNTORES APLICATIVOS (7.4 do livro): Levanta uma função de vários parâmetros.

LEIS:
    pure id <*> v = fmap id v = v
    pure f <*> pure x = pure (f x)
    pure (.) <*> f <*> g <*> x = f <*> (g <*> x)

class Functor f => Aplicativo f where
    pure :: a -> f a
    (<*>) :: f (a -> b) f a -> f b

instance Applicative Maybe where
    pure x = Just x
    Nothing _ = Nothing
    _ Nothing = Nothing
    (Just f) <*> (Just x) = Just (f x)

(pure (+) <*> (Just 5)) <*> (Just 2) = 
(Just (+) <*> (Just 5)) <*> (Just 2) =
Just (5+) <*> Just 2 = 
Just (5+2) =
Just 7

(+) <$> (Just 5) <*> (Just 2)
Just (5+) <*> Just 2 =
Just (5+2) =
Just 7

-}

somar :: Int -> Int -> Int -> Int
somar x y z = x+y+z