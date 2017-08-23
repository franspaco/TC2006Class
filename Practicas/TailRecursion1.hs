

factorialTail x = ft (x-1) x
                where ft n res
                        | n == 0    = res
                        | otherwise = ft (n-1) (res*n)


revList x = rev [] x
                where rev destino origen
                        | length origen == 0  = destino
                        | otherwise           = rev ( head origen : destino) (drop 1 origen)
