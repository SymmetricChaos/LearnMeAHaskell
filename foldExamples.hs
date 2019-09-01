main :: IO()
main =    
    mapM_
    putStrLn
    ["\nfoldr (+) 0 [1,2,3,4,5]"
    , show $ foldr (+) 0 [1,2,3,4,5]
    , "\nscanl (+) 0 [1,2,3,4,5]"
    , show $ scanl (+) 0 [1,2,3,4,5]
    , "\nscanr (+) 0 [1,2,3,4,5]"
    , show $ scanr (+) 0 [1,2,3,4,5]
    ]