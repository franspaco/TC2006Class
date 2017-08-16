-- Ejercicio #1
pares = [(x,y,z) | x<-[1..100], y<-[1..100], z<-[1..100], z^2==x^2+y^2]

-- Ejercicio #2
cant = length(filter(>0)[-1000..1000])

-- Ejercicio #3
odd x = mod x 2 == 1
suma = sum(filter(odd)[1..1000000])

-- Ejercicio #4
import Data.Char
uppercase x = [str | char<-x, let str = toUpper char]

-- Ejercicio #5
factorial x = fac x
fac 0 = 1
fac x = x * (fac (x-1))
