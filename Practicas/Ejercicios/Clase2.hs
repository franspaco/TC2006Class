
revList x = rev [] x
                where rev destino origen
                        | length origen == 0  = destino
                        | otherwise           = rev ( head origen : destino) (drop 1 origen)

minMax [] = error "Empty List!"
minMax (h:t) = mm (h, h) t
                where mm tup arr
                        | length arr == 0     = tup
                        | head arr > fst tup  = mm (head arr, snd tup) (drop 1 arr)
                        | head arr < snd tup  = mm (fst tup, head arr) (drop 1 arr)
                        | otherwise           = mm tup (drop 1 arr)
