module Main where

-- Estilo funcional
main'' :: IO ()
main'' = putStrLn "Digite um numero"
    >> readLn
    >>= \x -> putStrLn "Digite outro numero"
    >> readLn
    >>= \y -> putStrLn ("O Numero é: " ++ show (x+y))

-- Estilo imperativo
main :: IO ()
main = do
    putStrLn "Digite um número"
    x <- readLn
    putStrLn "Digite outro número"
    y <- readLn
    putStrLn ("O número é: " ++ show (x+y))

main' :: IO ()
main' = do
    putStrLn "Oi Mundo"
    putStrLn "Qual é o seu nome?"
    x <- getLine
    putStrLn ("Hello " ++ x)
