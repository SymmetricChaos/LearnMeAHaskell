-- An L-sytem rule
rule :: Char -> String
rule 'A' = "AB"
rule 'B' = "A"

-- Using the concatMap function
l_system :: String -> String
l_system s = concatMap rule s

main :: IO()
main = putStrLn . show $ take 6 (iterate (l_system) "A")
