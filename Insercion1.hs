-- Función auxiliar para insertar un elemento en la posición correcta de una lista ordenada
inserta :: Ord a => a -> [a] -> [a]
inserta x [] = [x]
inserta x (y:ys)
    | x <= y    = x : y : ys
    | otherwise = y : inserta x ys

-- Definición recursiva de ordena_por_inserción
ordena_por_inserción_1 :: Ord a => [a] -> [a]
ordena_por_inserción_1 [] = []
ordena_por_inserción_1 (x:xs) = inserta x (ordena_por_inserción_1 xs)
