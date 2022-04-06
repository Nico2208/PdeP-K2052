module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero

f:: Number -> Number 
f x     = x * x

puedoAvanzar :: String -> Bool
puedoAvanzar color = color == "verde"


cuadrado :: Number -> Number 
cuadrado numero = numero * numero

dobleDelCuadrado :: Number -> Number
dobleDelCuadrado numero = doble (cuadrado numero)
