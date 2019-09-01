import Data.List

main :: IO()
main =    
    mapM_
    putStrLn
    ["elemIndex 2 [2,2,2,3,3,3,4,4,4]"
    , show $ elemIndex 2 [2,2,2,3,3,3,4,4,4]
    ]