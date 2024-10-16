-- ConcatComprehension.hs
import Criterion.Main (bench, bgroup, defaultMain, whnf)

-- Definición de la función concat_3 usando comprensión de listas
concat_3 :: [[a]] -> [a]
concat_3 xss = [x | xs <- xss, x <- xs]

-- Función principal para ejecutar el benchmark
main :: IO ()
main = do
    let lista = [[1, 2, 3], [4, 5], [], [1, 2]]
    print (concat_3 lista)  -- Imprime el resultado de concat_3

    -- Aquí se realiza el benchmark
    defaultMain
        [ bgroup "Concatenación"
            [ bench "concat_3" $ whnf concat_3 lista  -- Medir concat_3
            ]
        ]
