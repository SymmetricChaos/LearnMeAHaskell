import Data.Maybe
import Data.Char

nothing_ex = Nothing :: Maybe String
just_ex = Just "Hello, world!" :: Maybe String

main = do
    print nothing_ex
    print just_ex

    print $ isNothing nothing_ex
    print $ isNothing just_ex

    print $ isJust nothing_ex
    print $ isJust just_ex

    case nothing_ex of
        Nothing -> print "Nothing"
        Just x -> print x

    case just_ex of
        Nothing -> print "Nothing"
        Just x -> print x

    print $ maybe "Default" (map toUpper) nothing_ex
    print $ maybe "Default" (map toUpper) just_ex

    print $ fromJust just_ex

    print $ fromMaybe "Default" nothing_ex
    print $ fromMaybe "Default" just_ex

    print $ listToMaybe ([] :: [Int])
    print $ listToMaybe [1, 2, 3]

    print $ maybeToList nothing_ex
    print $ maybeToList just_ex

    print $ catMaybes [nothing_ex, just_ex]

    print $ mapMaybe (\_ -> (Nothing :: Maybe Int)) [1, 2, 3]
    print $ mapMaybe (\x -> Just x) [1, 2, 3]