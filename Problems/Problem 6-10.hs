--------------------------------------------------
-- Problem 6
-- 
-- Find out whether a list is a palindrome. A 
-- palindrome can be read forward or backward;
-- e.g (x a m a x)
--------------------------------------------------
isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' []  = True
isPalindrome' [_] = True 
isPalindrome' xs = (head xs) == (last xs) && isPalindrome' (init (tail xs))

--------------------------------------------------
-- Problem 7
-- 
-- Transform a list, possibly holding lists as 
-- elements into a "flat" list by replacing each
-- list with its elements (recursivly)
--------------------------------------------------
-- Not Solved --

--------------------------------------------------
-- Problem 8
-- 
-- Eliminate consecutive duplicates of list 
-- elements.
--------------------------------------------------
compress' :: (Eq a) =>[a] -> [a]
compress' []     = []
compress' (x:xs) = x : dropWhile (x==) (compress' xs)

--------------------------------------------------
-- Problem 9
-- 
-- Pack consecutive duplicates of list elements
-- into sublists. If a list contains repeated
-- elements they should be placed in seperate
-- sublists.
--------------------------------------------------
pack' :: (Eq a) => [a] -> [[a]]
pack' []     = []
pack' (x:xs) = (x : takeWhile (x==) xs) : pack' (dropWhile (x==) xs) 



