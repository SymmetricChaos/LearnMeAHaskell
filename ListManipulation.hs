
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
    ]