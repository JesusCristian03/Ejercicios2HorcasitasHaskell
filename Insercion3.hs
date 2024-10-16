-- Función auxiliar para insertar un elemento en la posición correcta de una lista ordenada
inserta :: Ord a => a -> [a] -> [a]
inserta x [] = [x]
inserta x (y:ys)
    | x <= y    = x : y : ys
    | otherwise = y : inserta x ys

-- Definición por plegado por la izquierda
ordena_por_inserción_3 :: Ord a => [a] -> [a]
ordena_por_inserción_3 = foldl (flip inserta) []
