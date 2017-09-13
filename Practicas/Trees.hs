
data Tree x = Empty | Node x (Tree x) (Tree x) deriving (Show)

insertt l (Empty) = Node l Empty Empty
insertt l (Node n left right)
        | l == n    = Node n left right
        | l > n     = Node n left (insertt l right)
        | otherwise = Node n (insertt l left) right

revList x = rev [] x
        where rev destino origen
                | length origen == 0  = destino
                | otherwise           = rev ( head origen : destino) (drop 1 origen)

inslist l = insertList l Empty
        where insertList l arbol
                | length l == 0 = arbol
                | otherwise     = insertList (drop 1 l) (insertt (head l) arbol)
