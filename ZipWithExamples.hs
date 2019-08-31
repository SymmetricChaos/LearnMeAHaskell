main :: IO()
main =    
    mapM_
    putStrLn
    ["\nzipWith (*) [1,2,3] [2,4,6]"
    , show $ zipWith (*) [1,2,3] [2,4,6]
    , "\nzipWith (**) (repeat 5) [1..10]"
    , show $ zipWith (**) (repeat 5) [1..10]
    , "\nfoldr (zipWith (:)) (repeat []) [[1,2,3],[4,5,6],[7,8,9,10]]"
    , show $ foldr (zipWith (:)) (repeat []) [[1,2,3],[4,5,6],[7,8,9,10]]
    , "\nzipWith (:) [1,2,3] [[4],[5],[6]]"
    , show $ zipWith (:) [1,2,3] [[4],[5],[6]]
    ]