import Data.Char

mult10 = map (10*)

onlyLowerCase = filter (isLower)

--orAll = foldr (if)

square' :: Int -> Int
square' a = a * a

--sumSquares :: (Num a) => [a] -> a
sumSquares = foldr (square') 0
