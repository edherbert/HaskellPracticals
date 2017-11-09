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
