-- the first line defines the structure of the function, so what it takes and what it outputs.
mult2 :: Int -> Int
-- The second line actually implements the function.
mult2 x = 2 * x


-- Exercises

-- 1
timesTen :: Int -> Int
timesTen x = x * 10

-- 2
sumThree :: Int -> Int -> Int -> Int
sumThree x y z = x + y + z

-- 3
areaOfCircle :: Float -> Float
areaOfCircle radius = pi * (radius^2) 
-- 4
volumeOfCylinder :: Float -> Float -> Float
volumeOfCylinder length rad = pi * (rad^2) * length

-- 5
distance :: Float -> Float -> Float -> Float -> Float
distance x1 x2 y1 y2 = sqrt ((y1 - y2)^2 + (x1 - x2)^2)

--6
--threeDifferent :: Int -> Int -> Int -> Bool

-- 7
divisibleBy :: Int -> Int -> Bool 
divisibleBy x y = if mod x y == 0
    then True
    else False 

--8
isEven :: Int -> Bool
isEven num = if divisibleBy num 2 
    then True
    else False 

--9
averageThree :: Int -> Int -> Int -> Float
averageThree x y z = fromIntegral (x + y + z) / 3

--10
absolute :: Int -> Int
absolute val = if val < 0
    then val * (-1)
    else val
