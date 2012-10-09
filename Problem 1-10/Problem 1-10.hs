--------------------------------------------------
-- Problem 1
-- 
-- Find the last element of a list
--------------------------------------------------
last' :: [a] -> a
last' [x]    = x
last' (x:xs) = last' xs

--------------------------------------------------
-- Problem 2
-- 
-- Find the last but one element of a list
--------------------------------------------------
lastButOne' :: [a] -> a
lastButOne' [x] = x
lastButOne' xs   = head (tail (reverse xs))

--------------------------------------------------
-- Problem 3
-- 
-- Find the K'th element of a list. The first
-- element in the list is number 1. 
--------------------------------------------------
find' :: [a] -> Int -> a
find' xs n = xs !! (n - 1)

--------------------------------------------------
-- Problem 4
-- 
-- Find the number of elements of a list
--------------------------------------------------
length' :: [a] -> Int
length' []     = 0
length' (x:xs) = 1 + length' xs

--------------------------------------------------
-- Problem 5
-- 
-- Reverse a list
--------------------------------------------------
reverse' :: [a] -> [a]
reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]

