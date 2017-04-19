module PoemLines2 where

splitBy :: Char -> [Char] -> [[Char]]
splitBy c [] = []
splitBy c s = [x] ++ myWords z
  where x = takeWhile (/=c) s
        y = dropWhile (/=c) s
        z = dropWhile (==c) y

myWords :: [Char] -> [[Char]]
myWords = splitBy ' '

myLines :: [Char] -> [[Char]]
myLines = splitBy '\n'
