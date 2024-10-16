
--3.3. Concatenación de una lista de listas

--Ejercicio 3.3. Redefinir la función concat tal que concat l es la concatenación de las lista de l. Por ejemplo,
--concat [[1,2,3],[4,5],[],[1,2]]  ⟶  [1,2,3,4,5,1,2]

--Solución: Presentamos distintas definiciones:
--1. Definición recursiva:

concat_1 :: [[a]] -> [a]
concat_1 [] = []
concat_1 (xs:xss) = xs ++ concat_1 xss

--2. Definición con plegados:
concat_2 :: [[a]] -> [a]
concat_2 = foldr (++) []

-- 3. Definición por comprensión:
concat_3 :: [[a]] -> [a]
concat_3 xss = [x | xs <- xss, x <- xs]

prop_equivalencia :: [[Int]] -> Bool
prop_equivalencia x = 
    concat_1 x == concat x && 
    concat_2 x == concat x &&
    concat_3 x == concat x

