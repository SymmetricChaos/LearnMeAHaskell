-- Create a type called Shape
-- It has values Circle and Rect
data Shape = Circle Float Float Float
           | Rect Float Float Float Float deriving (Show)

-- Define a function that accepts a Shape
surface :: Shape -> Float
surface (Circle _ _ r) = pi * r ^ 2
surface (Rect x0 x1 y0 y1) = (x1 - x0) * (y1-y0)

-- Create a type called Person with a value also called Person
-- the names of each argument are provided
data Person = Person { firstName :: String
                     , lastName :: String
                     , age :: Int
                     , height :: Float
} deriving (Show)

me = Person "Sym" "Chaos" 10 3.5

describePerson :: Person -> String
describePerson (Person {firstName = f, lastName = l, age = a, height = h}) = "This is " ++ f ++ " of the house " ++ l ++ " who stands " ++ show h ++ " feet tall at the age of " ++ show a

main :: IO()
main =    
    mapM_
    putStrLn
    ["\nCircle 1 2 5"
    ,show $ Circle 1 2 5
    ,"\nsurface $ Circle 1 2 5"
    ,show $ surface $ Circle 1 2 5
    ,"\nsurface $ Rect 1 3 5 9"
    ,show $ surface $ Rect 1 3 5 9
    ,"\nme = Person \"Sym\" \"Chaos\" 10 3.5"
    ,show $ me
    ,"\nage me"
    ,show $ age me
    ,show $ describePerson me
    ]