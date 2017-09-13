-- Francisco Huelsz Prince A01019512

-- Nota, estoy definiendo ej1, ej2 y ej3 como los resultados de los ejercicios 1..3
-- Es seguro darle :load a este archivo y ver el contenido de estas variables

---------------------------------------------
-- Ej 1
-- respuesta: 232792560

-- Version 1
a = [x | x <-[100000000..1000000000], mod x 2 == 0, mod x 3 == 0, mod x 4 == 0,mod x 5 == 0, mod x 6 == 0, mod x 7 == 0, mod x 8 == 0, mod x 9 == 0, mod x 10 == 0, mod x 11 == 0, mod x 12 == 0, mod x 13 == 0, mod x 14 == 0, mod x 15 == 0, mod x 16 == 0, mod x 17 == 0, mod x 18 == 0, mod x 19 == 0, mod x 20 == 0]
-- a!!0

-- Version 2
n = [x | x <- [232000000..233000000], length [ y | y <- [2..20], mod x y == 0] == (20-1)]

-- Version 3
primesTo k = [ x | x <- [2..k], isPrime x]
prod xs = foldl (*) 1 xs
primeProduct k = prod (primesTo k)
minMult k = [x | n <- [1..], let u = primeProduct k, let x = n * u, length [ y | y <- [2..k], mod x y == 0] == (k-1)]!!0

ej1 = minMult 20

---------------------------------------------
-- Ej 2
-- respuesta: 104743

-- Version 1:
b = [x | x <- [1..], length [ y | y <- [2..x], mod x y == 0] == 1]!!10000
-- b!!10000

--Version 2:
isqrt c = ceiling(sqrt (fromIntegral c))::Int
isPrime k
        | k < 2      = False
        | k == 2     = True
        | otherwise  = length [ y | y <- [2..(isqrt k)], mod k y == 0] == 0
ej2 = [x | x <- [1..], isPrime x]!!10000
-- c!!1000

---------------------------------------------
-- Ej 3
-- respuesta: 906609
pal x = show (x) == reverse ( show (x) )
m = [z | x <- [100..999], y <- [100..999], let z = x * y, pal z]
ej3 =  maximum m


---------------------------------------------
-- Ej 4
data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

insertTree x EmptyTree = Node x (EmptyTree)(EmptyTree)
insertTree x (Node y left right)
        | x == y = Node x left right
        | x < y  = Node y (insertTree x left) right
        | x > y  = Node y left (insertTree x right)

inslist l = insertList l EmptyTree
        where insertList l arbol
                | length l == 0 = arbol
                | otherwise     = insertList (drop 1 l) (insertTree (head l) arbol)

-- Test
l = inslist [21,5,4,42,6,3,7,45,78,2,8,46,12,1,9]

printTree EmptyTree = ""
printTree (Node y left right) = (printTree left) ++ " " ++ (show y) ++ (printTree right)

treeToList EmptyTree = []
treeToList (Node y left right) = (treeToList left) ++ [y] ++ (treeToList right)
