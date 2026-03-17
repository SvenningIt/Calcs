import Text.Read (readMaybe)
import Text.Printf

bereken :: Double -> String -> Double -> Double
bereken x "+" y = x + y
bereken x "-" y = x - y
bereken x "*" y = x * y
bereken x "/" y = if y /= 0 then x / y else 0
bereken _ _ _   = 0

main :: IO()
main = do
    putStrLn "Getal 1: "
    input1 <- getLine
    
    putStrLn "Operand (+, -, *, /): "
    operand <- getLine
    
    putStrLn "Getal 2: "
    input2 <- getLine
    
    let getal1 = read input1 :: Double
    let getal2 = read input2 :: Double
    
    let resultaat = bereken getal1 operand getal2
    
    printf "%.1f %s %.1f = %.2f\n" getal1 operand getal2 resultaat