
my_func :: Int -> Int
my_func n = n^2 `div` 2 - 2

main :: IO()
main =
    mapM_
    putStrLn
    [ "\ntake 10 ( iterate (*2) 1 )"
    , show $ take 10 ( iterate (*2) 1 )
    , "\ntake 5 ( iterate (^2) 2 )"
    , show $ take 6 ( iterate (^2) 2 )
    , "\ntake 6 ( iterate (my_func) 4 )"
    , show $ take 6 ( iterate (my_func) 4 )
    , "\nconcat [[1,1,2],[2,3,4],[4,5,5]]"
    , show $ concat [[1,1,2],[2,3,4],[4,5,5]] 
    , "\ntakeWhile (>3) [6,5,4,3,2,1,2,3,4,5,4,3,2,1]"
    , show $ takeWhile (>3) [6,5,4,3,2,1,2,3,4,5,4,3,2,1]
    , "\ntakeWhile (/=7) [6,5,8,4,3,2,1,2,7,3,4,5,4,3,2,1]"
    , show $ takeWhile (/=7) [6,5,8,4,3,2,1,2,7,3,4,5,4,3,2,1]
    , "\nbreak (==4) [1,2,3,4,5,6,7]"
    , show $ break (==4) [1,2,3,4,5,6,7]
    , "\ntake 3 $ iterate (++ \"ha\") \"haha\""
    , show $ take 3 $ iterate (++ "ha") "haha"
    ]