fib :: Integer -> Integer
fib x
  | x == 0 = 1
  | x == 1 = 1
  | otherwise = fib (x - 1) + fib (x - 2)

fibfib :: Integer -> Integer
fibfib = (fib . fib)

main :: IO ()
main =
    mapM_
    putStrLn
    ["The 6th fibonacci number is "
    ++ (show . fib) 6
    , "The 6th iterated fibonacci number is "
    ++ (show . fibfib) 6
    ]