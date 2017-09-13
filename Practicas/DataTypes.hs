
data Point = Point Float Float deriving (Show)
data Shape = Circle Float | Rectangle Point Point deriving (Show)

area (Circle r) = pi * r * r
area (Rectangle (Point x1 y1) (Point x2 y2))
 = abs ((x1-x1)*(y1-y2))


data Date = Date Int String Int deriving (Show)

data Fecha = Fecha {day::Int, month::String, year::Int} deriving (Show, Read)

data Pair key value = Mapa key Value

data Tree x = Empty | Node x (Tree x) (Tree x) deriving (Show)

let insertt l (Empty) = Node l Empty Empty

let insertt l (Node n left right)
        | l == n    = Node n left right
        | l > n     = Node l left (insertt l right)
        | otherwise = Node l (insertt l left) right
