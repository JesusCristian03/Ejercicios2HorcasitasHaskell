-- ConcatFold.hs
concat_2 :: [[a]] -> [a]
concat_2 = foldr (++) []

main :: IO ()
main = do
    let lista = [[1,2,3],[4,5],[],[1,2]]
    print (concat_2 lista)
