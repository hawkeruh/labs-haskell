module PraticaCondicional where 
import System.Console.Haskeline (Interrupt)

-- Tarefa 3.2
ehNegativo :: Int -> Bool 
ehNegativo n = n < 0

ehNegativo2 :: Int -> Bool 
ehNegativo2 n = if n < 0 then True else False 

-- Tarefa 3.3
sinal_if :: Integer -> Integer --- usando if-then-else
sinal_if n = if n < 0
             then -1
             else if n > 0
                then 1
                else 0

sinal_guardas :: Integer -> Integer --- usando guards
sinal_guardas n
                | n < 0 = -1
                | n > 0 = 1
                | otherwise = 0

--- Tarefa 4
categoriaIdade :: Int -> String --- melhorar adicionando guarda para numeros negativos
categoriaIdade idade
    | idade < 0 = "Não existe idade negativa."
    | idade <= 12 = "Criança"
    | idade <= 17 = "Adolescente"
    | idade <= 59 = "Adulto"
    | otherwise = "Idoso"

--- Tarefa 5
numRaizes :: Double -> Double -> Double -> Int
numRaizes a b c
    | delta > 0 = 2 
    | delta == 0 = 1 
    | otherwise = 0
    where
        delta = b^2 - 4 * a * c 
