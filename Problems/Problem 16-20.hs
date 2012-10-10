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
slice' :: [a] -> Int -> Int -> [a]
slice' [] _ _  = []
slice' xs i k  = take k (drop (i-1) xs)

--------------------------------------------------
-- Problem 19
-- 
-- Rotate a list N places to the left.
--
-- Hint: Use the predefined functions length and 
-- (++).
--------------------------------------------------
rotate' :: [a] -> Int -> [a]
rotate' [] _ = []
rotate' xs 0 = xs
rotate' xs n 
    | n > 0 = (drop n xs) ++ (take n xs) 
    | n < 0 = (drop (len+n) xs) ++ take (len+n) xs
    where len = length xs

--------------------------------------------------
-- Problem 20
-- 
-- Rotate a list N places to the left.
--
-- Remove the K'th element from a list.
--------------------------------------------------
remove' :: [a] -> Int -> (a,[a])
remove' (x:xs) 1 = (x, xs)
remove' (x:xs) n = (lhs, x:rhs)
    where (lhs, rhs) = remove' xs (n-1)