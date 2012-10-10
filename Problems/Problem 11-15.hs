--------------------------------------------------
-- Problem 11
-- 
-- Modified run-length encoding.
-- Modify the result of problem 10 in such a way 
-- that if an element has no duplicates it is 
-- simply copied into the result list. Only 
-- elements with duplicates are transferred as 
-- (N E) lists.
--------------------------------------------------
-- Not solved --

--------------------------------------------------
-- Problem 12
-- 
-- Decode a run-length encoded list.
--
-- Given a run-length code list generated as 
-- specified in problem 11. Construct its 
-- uncompressed version.
--------------------------------------------------
-- Not solved --

--------------------------------------------------
-- Problem 13
-- 
-- Run-length encoding of a list (direct solution).
-- 
-- Implement the so-called run-length encoding 
-- data compression method directly. I.e. don't 
-- explicitly create the sublists containing the 
-- duplicates, as in problem 9, but only count 
-- them. As in problem P11, simplify the result 
-- list by replacing the singleton lists (1 X) 
-- by X.
--------------------------------------------------
-- Not solved --

--------------------------------------------------
-- Problem 14
--
-- Duplicate the elements of a list
--------------------------------------------------
duplicate' :: [a] -> [a]
duplicate' []     = []
duplicate' (x:xs) = x : (x : duplicate' xs) 

--------------------------------------------------
-- Problem 15
--
-- Replicate the elements of a list a given number
-- of times
--------------------------------------------------
replicate' [] _ = []
replicate' _ 0  = []
replicate' (x:xs) n = (replicate'' x n) ++ replicate' xs n
    where   replicate'' _ 0 = []
            replicate'' x n = [x] ++ replicate'' x (n-1)
