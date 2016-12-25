module Syntax1 where

x = (+)

f :: String -> Int
f xs = w `x` 1
  where w = length xs
