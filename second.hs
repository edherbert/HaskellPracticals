--1
absolute :: Int -> Int
absolute val
    | val < 0 = val * (-1)
    | otherwise = val

--2
sign :: Int -> Int
sign val
    | val < 0 = -1
    | val > 0 = 1
    | otherwise = 0

--3
howManyEqual :: Int -> Int -> Int -> Int
howManyEqual x y z
    | x == y && y == z = 3
    | x == y || x == z || y == z = 2
    | otherwise = 0

--4
pythag :: Float -> Float -> Float
pythag a b = sqrt (a * a + b * b)

sumDiagonalLengths :: Float -> Float -> Float -> Float
sumDiagonalLengths a b c = pythag a a + pythag b b + pythag c c

--5
taxiFare :: Int -> Float
taxiFare distance
    | distance < 10 = 2.20 + (0.5 * fromIntegral distance)
    | otherwise = 2.20 + (0.3 * (fromIntegral distance - 10)) + 5

--6
--howManyAboveAverage :: Int -> Int -> Int -> Int
--Find the average of the ints first?
--One could be well above average
--Check to see if one of them is higher than the others.
--howManyAboveAverage x y z

--7
validDate :: Int -> Int -> Bool
validDate day month
    | month <= 0 || month > 12 = False
    | day <= 0 || day > 31 = False
    | otherwise = True

--8
--I don't really understand the question.
--At the moment I've just got a function that tells you how many days in each month.
--I don't understand the bit about the every four years there being a leap year.
daysInMonth :: Int -> Int -> Int
daysInMonth month year
    | month == 2 = 29
    | elem month [9, 4, 6, 11] = 30
    | otherwise = 31
