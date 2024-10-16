-- ConcatComprehension.hs
concat_3 :: [[a]] -> [a]
concat_3 xss = [x | xs <- xss, x <- xs]

main :: IO ()
main = do
    let lista = [[1,2,3],[4,5],[],[1,2]]
    print (concat_3 lista)
