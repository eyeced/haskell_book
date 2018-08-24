-- 1
-- a) Weekday is a type with five data contructors

-- 2
-- c) f :: Weekday -> String

-- 3
-- b)

-- 4
-- c) delivers the final value of xs
--
import Data.Char

isSubsequenceOf :: (Eq a) => [a] -> [a] -> Bool
isSubsequenceOf [] []                 = False
isSubsequenceOf [] ys@(y:_)           = False
isSubsequenceOf xs@(x:_) []           = False
isSubsequenceOf [x] ys@(y:_)          = x == y
isSubsequenceOf xs@(x:xss) ys@(y:yss) = if x == y then isSubsequenceOf xss yss else isSubsequenceOf xss ys


capitalizeWord :: [Char] -> [Char]
capitalizeWord [] = []
capitalizeWord s@(x:xs) = [toUpper x] ++ xs

capitalizeWords' :: [String] -> [(String, String)]
capitalizeWords' [] = []
capitalizeWords' s@(x:xs) = [(x, capitalizeWord x)] ++ capitalizeWords' xs

capitalizeWords :: String -> [(String, String)]
capitalizeWords s = capitalizeWords' $ words s

capitalizeParagraph :: String -> String
capitalizeParagraph s = unwords $ map capitalizeWord $ words s
