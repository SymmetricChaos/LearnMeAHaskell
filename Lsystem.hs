rule :: Char -> String
rule 'A' = "AB"
rule 'B' = "A"



l_system :: String -> [String]
l_system "" = [""]
l_system (x:xs) = rule x : l_system xs

