-- exercise2.hs
module Exercise2 where

addExcl :: String -> String
addExcl x = x ++ "!"

fourthStr :: String -> String
fourthStr x = x !! 4 : ""

dropNine :: String -> String
dropNine x = drop 9 x
