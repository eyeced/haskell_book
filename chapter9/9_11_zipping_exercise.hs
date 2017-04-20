module Zipping where

myZip :: [a] -> [b] -> [(a, b)]
myZip [] []             = []
myZip [_] []            = []
myZip [] [_]            = []
myZip (x : xs) (y : ys) = (x, y) : myZip xs ys

myZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myZipWith f [] []             = []
myZipWith f [_] []            = []
myZipWith f [] [_]            = []
myZipWith f (x : xs) (y : ys) = f x y : myZipWith f xs ys

myZip' = myZipWith (,)
