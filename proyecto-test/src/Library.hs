module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero

f:: Number -> Number 
f x     = x * x

puedoAvanzar :: String -> Bool
puedoAvanzar color = color == "verde"