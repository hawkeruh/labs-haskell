module Aula02 where

-- Tarefa 3.3 
dobro :: Int -> Int -- recebe x e retorna o dobro dela
dobro x = x + x

-- Crie uma funcao `quadrado` que recebe um numero e retorna o seu quadrado.
quadrado :: Int -> Int
quadrado x = x^2
    
-- Crie uma funcao `ehPar` que recebe um numero inteiro e retorna True se ele for par, e False caso contrario.
ehPar :: Int -> Bool -- usando guardas
ehPar n | mod n 2 == 0 = True 
        | otherwise = False

ehPar2 :: Int -> Bool -- usando expressões condicionais
ehPar2 n = if mod n 2 == 0 then True else False

-- Tarefa 3.4
somaQuadrados :: Int -> Int -> Int
somaQuadrados x y = (quadrado x) + (quadrado y)