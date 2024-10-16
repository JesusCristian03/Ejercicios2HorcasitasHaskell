-- Función auxiliar para insertar un elemento en la posición correcta de una lista ordenada
inserta :: Ord a => a -> [a] -> [a]
inserta x [] = [x]
inserta x (y:ys)
    | x <= y    = x : y : ys
    | otherwise = y : inserta x ys

-- Definición por plegado por la derecha
ordena_por_inserción_2 :: Ord a => [a] -> [a]
ordena_por_inserción_2 = foldr inserta []
