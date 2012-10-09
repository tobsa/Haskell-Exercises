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







