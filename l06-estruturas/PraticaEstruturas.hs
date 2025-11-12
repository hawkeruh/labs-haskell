module PraticaEstruturas where 

import Data.Maybe 

--- Tarefa 1
type ParIntString = (Int, String)

invertePar :: ParIntString -> (String, Int)
invertePar par = (snd par, fst par)

--- Tarefa 4 
primeiroElemento :: [a] -> Maybe a 
primeiroElemento lista
    | null lista = Nothing
    | otherwise = Just (head lista)

--- Tarefa 5 
type Titulo = String
type Autor = String
type AnoPublicacao = Int
type Livro = (Titulo, Autor, Maybe AnoPublicacao)

livro1 :: Livro
livro1 = ("Aprendendo Haskell", "Autor Desconhecido", Nothing)

livro2 :: Livro
livro2 = ("Programacao Funcional", "Prof. Romildo", Just 2024)

obterTitulo :: Livro -> Titulo
obterTitulo (t, _, _) = t -- casamento padrão

obterAutor :: Livro -> Autor 
obterAutor (_, a, _) = a  

--- Tarefa 6 
type Biblioteca = [Livro]

minhaBiblioteca :: Biblioteca
minhaBiblioteca = [livro1, livro2]

-- obterTitulo (head minhaBiblioteca) -- obter titulo do primeiro livro na biblioteca