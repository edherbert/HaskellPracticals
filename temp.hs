maximum' :: (Ord a) => [a] -> a  
maximum' [] = error "maximum of empty list"  
maximum' [x] = x  
maximum' (x:xs)   
    | x > maxTail = x  
    | otherwise = maxTail  
    where maxTail = maximum' xs


replicate' :: (Num i, Ord i) => i -> a -> [a]
replicate' n x
    | n <= 0 = []
    | otherwise = x:replicate' (n-1) x

--test :: Int -> [a] -> Int 
--test a [] = 0
--test a _ 
--    | a <= 0 = 0
--test a (x:xs) = x

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

values :: [Int] 
values = [x | x <- [0..10], mod x 10 == 0]

bools :: [Bool]
bools = [if mod x 2 == 0 then True else False | x <- [0..10]]

tuples :: [(String,Int)] -> [Int]
tuples [] = []
tuples (x:xs) = [snd n | n <- (x:xs)]

zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys
