

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
