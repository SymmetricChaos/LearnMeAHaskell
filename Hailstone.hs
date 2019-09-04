-- http://rosettacode.org/wiki/Hailstone_sequence#Haskell

import Data.List (maximumBy)
import Data.Ord (comparing)

-- The basic operation of the collatz sequence
-- Takes an integer and returns an integer
-- Either divives by 2 or multiplies by three and adds 1
collatz :: Int -> Int
collatz n
    | even n = n `div` 2
    | otherwise = 3 * n + 1

-- A function to create the list of values in the sequence
-- Takes an integer and returns an integer list
hailstone :: Int -> [Int]
hailstone = takeWhile (/= 1) . iterate collatz

longestChain :: Int
longestChain =
        fst $
        maximumBy (comparing snd) $ (,) <*> (length . hailstone) <$> [1 .. 100000]

--TEST--
main :: IO()
main =
    mapM_
    putStrLn
    ["Collatz sequence for 27: "
    , (show . hailstone) 27
    , "Which has length: " ++ (show . length . hailstone) 27
    , "\nThe number " ++ show longestChain
    ++ " has the longest hailstone sequence for a number less than 100000"
    , "The sequence has length: " ++ (show . length . hailstone $ longestChain)
    ]