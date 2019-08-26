-- These aren't necessarily solutions to the exact questions asked 

import Data.List (union, sort)
-- Numbers under 1000 that are divisible by 3 or 5 (or both) without repetition
problem_1 = sort (union [3,6..999] [5,10..999])

-- Even fibonnaci numbers less than 1000000
problem_2 = [ x | x <- takeWhile (<= 1000000) fibs, even x]
  where
    fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

-- Prime factorization
-- List starts with 2 then goes throgh odd numbers filtering by
--     the ones that have no tail portion for their list of prime 
--     factors
primes = 2 : filter (null . tail . primeFactors) [3,5..]

-- Prime factorization found recursively
primeFactors n = factor n primes
  where
    factor n (p:ps) 
        | p*p > n        = [n]
        | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
        | otherwise      =     factor n ps

problem_3 = primeFactors 600851475143

-- Products of pairs of three digit numbers
-- Then "show" is used to make it a string a reverse to check if it is a palindrome
problem_4 = maximum [x | y<-[100..999], z<-[y..999], let x=y*z, let s=show x, s==reverse s]