data Shape = Circle Float Float Float deriving (Show)

surface :: Shape -> Float
surface (Circle _ _ r) = pi * r ^ 2


main :: IO()
main =    
    mapM_
    putStrLn
    [show $ Circle 1 2 5,
    show $ surface $ Circle 1 2 5
    ]