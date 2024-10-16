miNumero :: Int
miNumero = 42

miNumeroGrande :: Integer
miNumeroGrande = 12345678901234567890

miDecimal :: Float
miDecimal = 3.14

miDecimalPreciso :: Double
miDecimalPreciso = 3.141592653589793

miBooleano :: Bool
miBooleano = True

miCaracter :: Char
miCaracter = 'a'

miCadena :: String
miCadena = "Hola, Haskell!"

miListaEnteros :: [Int]
miListaEnteros = [1, 2, 3, 4, 5]

miListaCaracteres :: [Char]
miListaCaracteres = ['a', 'b', 'c']

miTupla :: (Int, Char, Bool)
miTupla = (42, 'a', True)

data Dia = Lunes | Martes | Miercoles | Jueves | Viernes | Sabado | Domingo

miDia :: Dia
miDia = Viernes

data Maybe a = Nothing | Just a 

--tipos con parámetros permiten crear tipos genéricos,  
--lo que significa que pueden trabajar con valores de distintos 
--tipos sin tener que definir un nuevo tipo específico para cada tipo de valor.

--miValor :: Maybe Int
--miValor = Just 5

--miValorEntero :: Maybe Int
--miValorEntero = Just 42  -- Just 42 es un valor de tipo Maybe Int

{-miValorTexto :: Maybe String
miValorTexto = Just "Hola"  -- Just "Hola" es un valor de tipo Maybe String

miValorNulo :: Maybe Int
miValorNulo = Nothing  -- Nothing es un valor de tipo Maybe Int (sin valor)
-}

data Forma = Circulo Float | Rectangulo Float Float

miForma :: Forma
miForma = Circulo 3.5

miFuncion :: Int -> Int
miFuncion x = x * 2 ; 

--Los tipos con múltiples constructores permiten definir un tipo de dato que puede tener más de una forma (o "constructor"). 
--Esto es útil cuando un tipo de datos puede tener varias representaciones.

resultadoExitoso :: Either String Int
resultadoExitoso = Right 42  -- Right 42 es un valor exitoso de tipo Either String Int

resultadoFallido :: Either String Int
resultadoFallido = Left "Error: Falló la operación"  -- Left contiene un mensaje de error

miresultado :: Int
miresultado = 5;

-- Programa Hola Mundo en Haskell
main :: IO ()
main = putStrLn "Hola, Mundo!"
