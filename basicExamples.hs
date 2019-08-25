lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY!"
lucky x = "unlucky"

removeLower :: String -> String
removeLower st = [c | c <- st, c `elem` ['A'..'Z']]

double :: Integer -> Integer
double x = 2*x

-- Simple function to generate primes
primes = [ n | n <- [2..], all ((> 0) . rem n) [2..(n-1)] ]

primesDouble = map double (take 20 primes)