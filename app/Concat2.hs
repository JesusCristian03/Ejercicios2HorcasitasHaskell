-- ConcatFold.hs
import Criterion.Main (bench, bgroup, defaultMain, whnf)

-- Definición de la función concat_2 usando foldr
concat_2 :: [[a]] -> [a]
concat_2 = foldr (++) []

-- Función principal para ejecutar el benchmark
main :: IO ()
main = do
    let lista = [[1, 2, 3], [4, 5], [], [1, 2]]
    print (concat_2 lista)  -- Imprime el resultado de concat_2

    -- Aquí se realiza el benchmark
    defaultMain
        [ bgroup "Concatenación"
            [ bench "concat_2" $ whnf concat_2 lista  -- Medir concat_2
            ]
        ]
