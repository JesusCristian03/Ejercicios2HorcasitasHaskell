-- Concat.hs
concat_1 :: [[a]] -> [a]
concat_1 [] = []
concat_1 (xs:xss) = xs ++ concat_1 xss

main :: IO ()
main = do
    let lista = [[1,2,3],[4,5],[],[1,2]]
    print (concat_1 lista)
