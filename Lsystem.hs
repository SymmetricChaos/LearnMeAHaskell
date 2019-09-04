rule :: Char -> String
rule "A" = "AB"
rule "B" = "A"
rule x = x

l_system :: String -> [String]
l_system "" = error "empty string"
l_system (x:xs) = rule x : l_system xs