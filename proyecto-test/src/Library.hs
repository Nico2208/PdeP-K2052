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
    cantAmigues :: Number 
}

--Parte 1 Scoring

scoring :: Persona -> Number

scoring persona | (even . cantAmigues)persona = stress persona * edad persona
                | edad persona > 40                    = cantAmigues persona * edad persona
                | otherwise                            = ((*2) . length . nombre)persona


--Parte 2 a) Nombre Firme

nombreFirme :: Persona -> Bool

nombreFirme = (==)'P' . head . nombre

--Parte 2 b) Persona Interesante

personaInteresante :: Persona -> Bool

personaInteresante persona = cantAmigues persona >= 2

--Parte 3
