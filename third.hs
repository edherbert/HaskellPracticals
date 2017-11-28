
--2
ex0r :: Bool -> Bool -> Bool
ex0r True True = False
ex0r True False = True
ex0r False True = True
ex0r False False = False 

--3
ifThenElse :: Bool -> Int -> Int -> Int
ifThenElse True second third = second
ifThenElse False secodn third = third

--4
--Not fully sure about this one.
--It seems to me it would be simpler to use guards over pattern matching.
daysInMonth :: Int -> Int
daysInMonth 1 = 31
daysInMonth 2 = 28

--5
sumNumbers :: Int -> Int
sumNumbers n
    | n > 0 = sumNumbers (n - 1) + n
    | otherwise = n

--6
sumSquares :: Int -> Int
sumSquares n
    | n > 0 = sumSquares (n - 1) + (n * n) 
    | otherwise = n

--7
power :: Int -> Int -> Int
power n m
    | m > 1 = power (n + n) (m - 1)
    | otherwise = n

--8
sumForTo :: Int -> Int -> Int
sumForTo n m
    | n > m = 0
    | n == m = n
    | otherwise = sumForTo (n + 1) m + n

--9
gcdd :: Int -> Int -> Int
gcdd n m
    | n > m = n - m
    | m > n = m - n
    | otherwise = m
