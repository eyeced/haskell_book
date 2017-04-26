module OwnFuntions where

myOr :: [Bool] -> Bool
myOr []       = True
myOr (x : xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny f []        = False
myAny f (x : xs)  = f x || myAny f xs

myElem :: Eq a => a -> [a] -> Bool
myElem x xs = myAny (\y -> x == y) xs

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x : xs) = myReverse xs ++ [x]

squish :: [[a]] -> [a]
squish [] = []
squish (xs : xss) = xs ++ squish xss

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f [] = []
squishMap f (x : xs) = f x ++ squishMap f xs

squishAgain :: [[a]] -> [a]
squishAgain = squishMap (\x -> x)

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy f [x]             = x
myMaximumBy f (x : (x' : xs)) = case f x x' of
  GT -> myMaximumBy f (x : xs)
  EQ -> myMaximumBy f (x' : xs)
  LT -> myMaximumBy f (x' : xs)

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy f [x]             = x
myMinimumBy f (x : (x' : xs)) = case f x x' of
  GT -> myMinimumBy f (x' : xs)
  EQ -> myMinimumBy f (x : xs)
  LT -> myMinimumBy f (x' : xs)
