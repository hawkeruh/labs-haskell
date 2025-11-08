module Pratica where 

-- Tarefa 3.2
areaCirculo :: Double -> Double -- recebo raio e retorno a area
areaCirculo r = pi * r^2

-- Tarefa 3.3 
quadrado :: Double -> Double -- função auxiliar 
quadrado x = x^2

distancia :: (Double, Double) -> (Double, Double) -> Double
distancia (x1, y1) (x2, y2) =
    sqrt (quadrado (x2 - x1) + quadrado (y2 - y1))

distancia2 :: (Double, Double) -> (Double, Double) -> Double 
distancia2 t1 t2 = sqrt (quadrado (x2 - x1) + quadrado (y2 - y1))
    where
        x1 = fst t1 
        y1 = snd t1 
        x2 = fst t2 
        y2 = snd t2 

-- Tarefa 3.4
areaCilindro :: Double -> Double -> Double
areaCilindro raio altura = areaLateral + areaBase
    where
        areaLateral = 2 * pi * raio * altura
        areaBase = 2 * areaCirculo raio

-- Tarefa 3.5 
montanteJurosCompostos :: Double -> Double -> Int -> Double -- recebe p, taxa (i) e anos, sai montante final
montanteJurosCompostos p i n = p * fatorAcumulacao
    where 
        fatorAcumulacao = (1 + i)^n 

-- Tarefa 3.6 
raizes :: Double -> Double -> Double -> (Double, Double)
raizes a b c = 
    let delta = b^2 - 4 * a * c 
        raiz1 = (-b + delta)/2 * a
        raiz2 = (-b - delta)/2 * a
    in (raiz1, raiz2)

-- Tarefa 3.7
type Nome = String 
type Idade = Int 
type Pessoa = (Nome, Idade)

criaPessoa :: Nome -> Idade -> Pessoa 
criaPessoa nome idade = (nome, idade)

-- Tarefa 3.8 

{-
Objetivo: Calcular posição de um projétil num instante t 
Input: angulo de lançamento e uma velocidade inicial 
Usar: let...in 
-}

grausParaRadianos :: Double -> Double -- função auxiliar 
grausParaRadianos graus = graus * pi / 180

posicaoProjetil :: Double -> Double -> Double -> (Double, Double)
posicaoProjetil angulo v0 t =
    let g = 9.81
        theta = grausParaRadianos angulo
        vx = v0 * cos theta
        vy = v0 * sin theta
        x = vx * t
        y = vy * t - (1/2) * g * t^2
    in (x, y)