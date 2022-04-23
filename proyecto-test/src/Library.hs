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



data Persona = Persona {
    nombre :: String,
    edad :: Number,
    stress :: Number,
    preferencias :: [String],
    cantAmigues :: [String]
}



scoring :: Persona -> Number

scoring persona | (even . length . cantAmigues)persona = stress persona * edad persona
                | edad persona > 40                   = (length .cantAmigues) persona * edad persona
                | otherwise                   = ((*2) . length . nombre)persona