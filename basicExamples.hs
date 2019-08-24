lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY!"
lucky x = "unlucky"

removeLower :: [Char] -> [Char]
removeLower st = [c | c <- st, c `elem` ['A'..'Z']]