import Data.List (union, sort)
problem_1 = sort (union [3,6..999] [5,10..999])

problem_2 = [ x | x <- takeWhile (<= 1000000) fibs, even x]
  where
    fibs = 1 : 1 : zipWith (+) fibs (tail fibs)