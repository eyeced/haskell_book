module Reverse where

rvrs :: String -> String
rvrs x = drop 9 x ++ " " ++ drop 6 (take 8 x) ++ " " ++ take 5 x

main :: IO ()
main = print $ rvrs "Curry is awesome"
