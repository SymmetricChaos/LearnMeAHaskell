import Data.List (maximumBy)
import Data.Ord (comparing)

collatz :: Int -> Int
collatz n
    | even n = n `div` 2
    | otherwise = 3 * n + 1

hailstone :: Int -> [Int]
hailstone = takeWhile (/= 1) . iterate collatz

longestChain :: Int
longestChain =
        fst $
        maximumBy (comparing snd) $ (,) <*> (length . hailstone) <$> [1 .. 1000]

--TEST--
main :: IO()
main =
    mapM_
    putStrLn
    ["Collatz sequence for 27: "
    , (show . hailstone) 27
    , "Which has length: " ++ (show . length . hailstone) 27
    , "\nThe number " ++ show longestChain
    ++ " has the longest hailstone sequence for an number less than 1000"
    , "The sequence has length: " ++ (show . length . hailstone $ longestChain)
    ]