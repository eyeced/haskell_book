module Exercise where

import Data.Char

filterUpper = filter isUpper

capitalizeFst :: [Char] -> [Char]
capitalizeFst [] = []
capitalizeFst (x : xs) = toUpper x : xs

capitalize :: [Char] -> [Char]
capitalize [] = []
capitalize (x : xs) = toUpper x : capitalize xs

head' :: [Char] -> Char
head' (x : xs) = x
