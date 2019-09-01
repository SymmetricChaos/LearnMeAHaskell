-- These aren't necessarily solutions to the exact questions asked 

import Data.List (union, sort)
import Data.Char (digitToInt)

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

-- Smallest number divisible by all numbers from 1 to 20
problem_5 = foldr1 lcm [1..20]

-- Sum of squares and square of sum for numbers from 1 to 100
sqsum = (sum [1..100])^2
sumsq= sum (map (^2) [1..100])
problem_6 = (sqsum - sumsq)

-- What is the ten-thousandth prime
-- The !! operator indexes a list, recall that "primes" is an infinite list
problem_7 = primes !! 10000


-- problem_8 = do
--    str <- readFile "number.txt"
--    print . maximum . map product
--          . foldr (zipWith (:)) (repeat [])
--          . take 13 . tail . map (fromIntegral . digitToInt)
--          . concat . lines $ str


problem_8 = do
   str <- readFile "number.txt"
   print $ take 13 . tail . map (fromIntegral . digitToInt) $ str

-- uses Euler's forumula to create triples
-- uses where to define a local variable to limit how many
-- are returned
-- the $ operator is used to make compoisition weakly binding
triplets l = [[a,b,c] | m <- [2..limit],
                        n <- [1..(m-1)], 
                        let a = m^2 - n^2, 
                        let b = 2*m*n, 
                        let c = m^2 + n^2,
                        a+b+c==l]
    where limit = floor . sqrt . fromIntegral $ l

problem_9 = product . head . triplets $ 1000

-- Sum up some primes
problem_10 = sum (takeWhile (< 1000000) primes)