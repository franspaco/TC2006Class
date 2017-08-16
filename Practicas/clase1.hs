import Data.Char

-- Ejercicio #1
pares = [(x,y,z) | x<-[1..100], y<-[1..100], z<-[1..100], z^2==x^2+y^2]

-- Ejercicio #2
cant = length(filter(>0)[-1000..1000])

-- Ejercicio #3
oddNum x = mod x 2 == 1
suma = sum(filter(oddNum)[1..1000000])

-- Ejercicio #4
uppercase x = [str | char<-x, let str = toUpper char]

-- Ejercicio #5
fac 0 = 1
factorial x = x * (fac (x-1))

--ultimos [] n = error
--ultimos a 0 = error
ultimos a 1 = last a
ultimos a n = (ultimos( (init a) (n - 1))) ++ (last a)
