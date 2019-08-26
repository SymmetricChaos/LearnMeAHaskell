-- These aren't necessarily solutions to the exact questions asked 

import Data.List (union, sort)
-- Numbers under 1000 that are divisible by 3 or 5 (or both) without repetition
problem_1 = sort (union [3,6..999] [5,10..999])

-- Even fibonnaci numbers less than 1000000
problem_2 = [ x | x <- takeWhile (<= 1000000) fibs, even x]
  where
    fibs = 1 : 1 : zipWith (+) fibs (tail fibs)