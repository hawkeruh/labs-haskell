module Lab07 where 

calculaIMC :: Double -> Double -> String 
calculaIMC peso altura
    | imc < 18.5 = "”Abaixo do peso”"
    | imc < 25.0 = "”Saudável”"
    | imc < 30.0 = "”Sobrepeso”"
    | otherwise = "”Obeso”"
    where
        imc = peso / (altura^2)
        