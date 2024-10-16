--1. Ordenación por inserción

--Ejercicio 3.20. Definir la función ordena_por_inserción tal que ordena_por_inserción l es la lista l ordenada mediante inserción. Por ejemplo,

--ordena_por_inserción [2,4,3,6,3] ~> [2,3,3,4,6]

--Solución: Se presentan distintas definiciones:
inserta :: Ord a => a -> [a] -> [a]
inserta x [] = [x]
inserta x (y:ys)
    | x <= y    = x : y : ys
    | otherwise = y : inserta x ys

--Definición recursiva


ordena_por_inserción_1 :: Ord a => [a] -> [a]
ordena_por_inserción_1 []     = []
ordena_por_inserción_1 (x:xs) = inserta x (ordena_por_inserción_1 xs)

--Definición por plegado por la derecha

ordena_por_inserción_2 :: Ord a => [a] -> [a]
ordena_por_inserción_2 = foldr inserta []

--Definición por plegado por la izquierda

ordena_por_inserción_3 :: Ord a => [a] -> [a]
ordena_por_inserción_3 = foldl (flip inserta) []

--Las definiciones son equivalentes:

prop_equivalencia :: [Int] -> Bool
prop_equivalencia xs =
    ordena_por_inserción_2 xs == ordena_por_inserción_1 xs &&
    ordena_por_inserción_2 xs == ordena_por_inserción_1 xs