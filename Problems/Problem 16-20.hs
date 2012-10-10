--------------------------------------------------
-- Problem 16
-- 
-- Drop every N'th element from a list.
--------------------------------------------------
drop' :: [a] -> Int -> [a]
drop' [] _ = []
drop' xs n = (take (n-1) xs) ++ drop' (drop n xs) n

--------------------------------------------------
-- Problem 17
-- 
-- Split a list into two parts; the length of the first part is given.
--
-- Do not use any predefined predicates.
--------------------------------------------------
split' :: [a] -> Int -> ([a],[a])
split' [] _  = ([],[])
split' xs 0  = (xs,[])
split' xs n  = (take n xs, drop n xs)

--------------------------------------------------
-- Problem 18
-- 
--  Extract a slice from a list.
--
-- Given two indices, i and k, the slice is the 
-- list containing the elements between the i'th 
-- and k'th element of the original list (both 
-- limits included). Start counting the elements
-- with 1.
--------------------------------------------------
-- Not solved --

--------------------------------------------------
-- Problem 19
-- 
-- Rotate a list N places to the left.
--
-- Hint: Use the predefined functions length and 
-- (++).
--------------------------------------------------
-- Not solved --

--------------------------------------------------
-- Problem 20
-- 
-- Rotate a list N places to the left.
--
-- Remove the K'th element from a list.
--------------------------------------------------
-- Not solved --