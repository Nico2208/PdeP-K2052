module Spec where
import PdePreludat
import Library
import Test.Hspec
import GHC.Num (Num)

correrTests :: IO ()
correrTests = hspec $ do
  describe "Test de ejemplo" $ do
    it "El pdepreludat se instaló correctamente" $ do
      doble 1 `shouldBe` 2
    it "Cantidad par de amigues, edad 25 y nivel de stress 10" $ do
      scoring (Persona "Nico" 25 10 ["Juan"] 2) `shouldBe` 250
    it "Una persona que se llama Paulina" $ do
      nombreFirme (Persona "Paulina" 25 10 [] 1) `shouldBe` True
    it "Una persona que se llama Rigoberta" $ do
      nombreFirme (Persona "Rigoberta" 25 10 [] 2) `shouldBe` False
    it "Una persona con 1 amigo" $ do 
      personaInteresante (Persona "a" 1 2 [] 1) `shouldBe` False
    it "Una persona con 2 amigos" $ do
      personaInteresante (Persona "b" 1 2 [] 2) `shouldBe` True
    









    
    -- it "Persona de 41 años y un amigue" $ do
    --   scoring "Pepa" 41 0 [ ] ["juan"] `shouldBe` 41
    
    -- it "Persona de 31 años y un amigue, llamada Rigoberta" $ do
    --   scoring "Rigoberta" 31 0 [ ] 1 `shouldBe` 18

    -- it "Una persona que se llama Paulina" $ do
    --   nombreFirme "Paulina" 1 2 "_" 3 `shouldBe` True
    
    -- it "Una persona que se llama Rigoberta" $ do
    --   nombreFirme "Rigoberta" 1 2 "_" 3 `shouldBe` False

    -- it "Una persona con 1 amigo" $ do
    --   personaInteresante "A" 1 2 "_" 1 `shouldBe` False

    -- it "Una persona con 2 amigos" $ do
    --   personaInteresante "A" 1 2 "_" 2 `shouldBe` True

    -- it "Una persona con 3 amigos" $ do
    --   personaInteresante "A" 1 2 "_" 3 `shouldBe` True
    



