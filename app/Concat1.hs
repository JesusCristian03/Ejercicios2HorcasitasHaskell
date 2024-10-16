-- Concat.hs
import Criterion.Main

-- Función para concatenar listas
concat_1 :: [[a]] -> [a]
concat_1 [] = []
concat_1 (xs:xss) = xs ++ concat_1 xss

-- Punto de entrada para el benchmark
main :: IO ()
main = defaultMain [
    bgroup "concat_1" [
        bench "pequeña"  $ whnf concat_1 (replicate 10 [1..100]),
        bench "mediana"  $ whnf concat_1 (replicate 100 [1..100]),
        bench "grande"   $ whnf concat_1 (replicate 1000 [1..100])
    ]
    ]
