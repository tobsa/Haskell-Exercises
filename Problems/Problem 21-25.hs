--------------------------------------------------
-- Problem 21
--
-- Insert an element at a given position into a 
-- list.
--------------------------------------------------
insert' :: a -> [a] -> Int -> [a]
insert' k xs n = (take (n-1) xs) ++ [k] ++ (drop (n-1) xs)   

--------------------------------------------------
-- Problem 22
--
-- Create a list containing all integers within a 
-- given range.
--------------------------------------------------
-- Not solved --

--------------------------------------------------
-- Problem 23
--
-- Extract a given number of randomly selected 
-- elements from a list.
--------------------------------------------------
-- Not solved --

--------------------------------------------------
-- Problem 24
--
-- Lotto: Draw N different random numbers from 
-- the set 1..M.
--------------------------------------------------
-- Not solved --

--------------------------------------------------
-- Problem 25
--
-- Generate a random permutation of the elements 
-- of a list.
--------------------------------------------------
-- Not solved --