lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY!"
lucky x = "unlucky"

removeLower :: String -> String
removeLower st = [c | c <- st, c `elem` ['A'..'Z']]

double :: Integer -> Integer
double x = 2*x

-- Simple function to generate primes
primes = [ n | n <- [2..], all ((> 0) . rem n) [2..(n-1)] ]

some_string = "iuMowrhjYqwSpoqEeCqweRvbdEfThg"

my_max :: (Ord a) => [a] -> a
my_max [] = error "empty list"
my_max [x] = x
my_max (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = my_max xs


main :: IO()
main =    
    mapM_
    putStrLn
    ["map double (take 20 primes)"
    , show $ map double (take 20 primes)
    , "\nsome_string"
    , show $ some_string
    , "removeLower some_string"
    , show $ removeLower some_string
    , "\nzipWith (*) [1,2,3] [2,4,6]"
    , show $ zipWith (*) [1,2,3] [2,4,6]
    , "\nzipWith (**) (repeat 5) [1..10]"
    , show $ zipWith (**) (repeat 5) [1..10]
    ] 