introot :: Integer -> Integer -> Integer
introot a b = findAns $ iterate (\x -> (a1 * x + b `div` (x ^ a1)) `div` a) 1
    where
        a1 = a - 1
        findAns (x:xs@(y:z:_))
            | x == y || x == z min y z
            | otherwise = findAns xs

main :: IO ()
main = do
    print $ introot 3 8
    print $ introot 3 9
    print $ introot 2 (2 * 10 ^ 10)