-- An L-sytem rule
rule :: Char -> String
rule 'A' = "AB"
rule 'B' = "A"


-- Crude L-sytem rule I made
l_system :: String -> [String]
l_system "" = [""]
l_system (x:xs) = rule x : l_system xs


-- Using concatMap
main :: IO()
main =    
    mapM_
    putStrLn
    [show $ concatMap rule "A"
    , show $ concatMap rule "AB"
    , show $ concatMap rule "ABA"
    ]