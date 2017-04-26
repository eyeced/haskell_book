module Cipher where

import Data.Char

ceaser :: Char -> Int -> Char
ceaser c x = chr x' where
  start = if isUpper c then ord 'A' else ord 'a'
  modX  = mod x 26
  next  = mod (modX + ord c - start) 26
  x'    = start + next

unCeaser :: Char -> Int -> Char
unCeaser c x = chr x' where
  start = if isUpper c then ord 'A' else ord 'a'
  modX  = mod x 26
  next  = mod (modX - ord c - start)
