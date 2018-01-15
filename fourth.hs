--Base things from example
import Data.Char

type StudentMark = (String, Int)

betterStudent :: StudentMark -> StudentMark -> String
betterStudent (s1,m1) (s2,m2) 
    | m1 >= m2          = s1
    | otherwise         = s2

marks:: [StudentMark] -> [Int]
marks stMarks = [ mk | (st,mk) <- stMarks ]

pass :: [StudentMark] -> [String]
pass stMarks = [ st | (st,mk) <- stMarks, mk >= 40 ]

-- An example list of student marks
testData :: [StudentMark]
testData = [("John", 53), ("Sam", 16), ("Kate", 85), ("Jill", 65),
            ("Bill", 37), ("Amy", 22), ("Jack", 41), ("Sue", 71)]

addPairs :: [(Int,Int)] -> [Int]
addPairs pairList = [ i+j | (i,j) <- pairList ]

minAndMax :: Int -> Int -> (Int,Int)
minAndMax x y 
    | x <= y            = (x,y)
    | otherwise         = (y,x)







--1
sumDifference :: Int -> Int -> (Int,Int)
sumDifference first second = (first+second,first-second)

--2
grade :: StudentMark -> String 
grade mark
    | snd mark >= 70 = "A"
    | snd mark >= 60 && snd mark <= 69 = "B"
    | snd mark >= 50 && snd mark <= 59 = "C"
    | snd mark >= 40 && snd mark <= 49 = "D"
    | otherwise = "F"

--3
capMark :: StudentMark -> StudentMark
capMark mark 
    | snd mark > 40 = (fst mark, 40)
    | otherwise = mark

--4
firstNumbers :: Int -> [Int]
firstNumbers n = [0..n]

--5
firstSquares :: Int -> [Int]
firstSquares n = [n^2 | n <- [0..n]]

--6
capitalise :: String -> String
capitalise s = [toUpper n | n <- s]

--7
onlyDigits :: String -> String
onlyDigits s = [n | n <- s, isDigit n]

--8
capMarks :: [StudentMark] -> [StudentMark]
capMarks marks = [capMark n | n <- marks]

--9
--gradeStudents :: [StudentMark] -> [(String,Char)]
--gradeStudents marks = [(s,(head grade (s,m))) | (s,m) <- marks] 
--gradeStudents marks = [(fst n,head grade n) | n <- marks]

--10
duplicate :: String -> Int -> String
duplicate message count
    | count >= 0 = duplicate (message++message) (count-1)
    | otherwise = message

--11
divisors :: Int -> [Int]
divisors value = [x | x <- [1..value], mod value x==0]

--12
isPrime :: Int -> Bool
isPrime value
    | length (divisors value) > 2 = False
    | otherwise = True

--13
--split :: [(a,b)] -> ([a],[b])
--split original = [(x, n) | x <- original, fst x, n <- origin, snd n]
--split original = [(x,[]) | fst x] 






