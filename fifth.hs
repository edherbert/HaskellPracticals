{- Week5.hs
 This file illustrates list patterns and recursion over lists.
-}

import Prelude hiding (fst, snd, head, tail, sum, concat, reverse, zip)

-- Definitions of the prelude functions fst and snd

fst (x,_)       = x
snd (_,y)       = y

-- Definitions of the prelude functions head and tail

head (x:_)      = x
tail (_:xs)     = xs

absFirst :: [Int] -> Int
absFirst []     = -1
absFirst (x:xs) = abs x

sum :: [Int] -> Int 
sum []     = 0
sum (x:xs) =   x + sum xs

doubleAll :: [Int] -> [Int]
doubleAll []      = []
doubleAll (x:xs)  = 2*x : doubleAll xs

concat :: [[a]] -> [a]
concat []         = []
concat (x:xs)     = x ++ concat xs

reverse :: [a] -> [a]
reverse []      = []
reverse (x:xs)  = reverse xs ++ [x]

zip :: [a] -> [b] -> [(a,b)]
zip (x:xs) (y:ys)  = (x,y) : zip xs ys
zip _ _            = []


--1
headPlusOne :: [Int] -> Int
headPlusOne [] = 0
headPlusOne x = (head x) + 1

--2
duplicateHead :: [a] -> [a]
duplicateHead [] = []
duplicateHead x = (head x):x

--3
rotate :: [Int] -> [Int] 
rotate a  
    | length a >= 2 = (a!!1):(a!!0):(drop 2 a) 
    | otherwise = a

--4
listLength :: [a] -> Int
listLength a 
    | null a = 0 
    | otherwise = (listLength (drop 1 a)) + 1 

--5
multAll :: [Int] -> Int
multAll [] = 1
multAll a = (head a) * (multAll (drop 1 a))

--6
andAll :: [Bool] -> Bool
andAll [] = True
andAll b
    | head b == True = andAll (drop 1 b)
    | otherwise = False

--7
contElems :: Int -> [Int] -> Int
contElems a b
    | a == head b = contElems (a + 1) (drop 1 b)
    | b == [] = 0
    | otherwise = contElems a (drop 1 b) 

--8
--removeAll :: Int -> [Int] -> [Int]
--removeAll a b
--    | a == head b = (removeAll a (drop 1 b)):


--9
listMarks :: String -> [StudentMark] -> [Int]
listMarks name marks
    | fst (head marks) == name = (listMarks name (drop 1 marks)):(sdn head marks)
    | otherwise = listMarks name (drop 1 marks)
