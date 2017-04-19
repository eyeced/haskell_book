module ThyFearfulSymmetry where

myWords :: [Char] -> [[Char]]
myWords [] = []
myWords s = [x] ++ myWords z
  where x = takeWhile (/=' ') s
        y = dropWhile (/=' ') s
        z = dropWhile (==' ') y
