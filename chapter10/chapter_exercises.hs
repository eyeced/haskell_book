-- 1. a)
stopVowelStop stops vowels = [(s, v, s') | s <- stops, v <- vowels, s' <- stops]

-- 1. b)
stopVowelStopP stops vowels = [(s, v, s') | s <- stops, v <- vowels, s' <- stops, s == 'p']

-- 1. c)
nouns = ["apple", "banana", "orange", "grapes"]
verbs = ["eats", "burns", "cleans"]

nounVerbNoun nouns verbs = [(n, v, n') | n <- nouns, v <- verbs, n' <- nouns]

-- 2.
seekritFunc x =
  div (sum (map length (words x)))
      (length (words x))
-- This function returns the average length of the words in a sentence
--
-- 3.
seekritFunc' x =
  fromIntegral (sum (map length (words x))) / fromIntegral (length (words x))


-- Rewrite using fold functions
--
-- 1.
myOr :: [Bool] -> Bool
myOr = foldr (||) False

-- 2.
myAny :: (a -> Bool) -> [a] -> Bool
myAny f = foldr ((||) . f) False

-- 3.
myElem :: Eq a => a -> [a] -> Bool
myElem x =  foldr ((||) . (==) x) False

myElem' :: Eq a => a -> [a] -> Bool
myElem' x = myAny $ (==) x

-- 4.
myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []

-- 5.
myMap :: (a -> b) -> [a] -> [b]
myMap f = foldr ((:) . f) []

-- 6.
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter pr = foldr f []
  where f a b
          | pr a      = a : b
          | otherwise = b

-- 7.
squish :: [[a]] -> [a]
squish = foldr (++) []

-- 8.
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap f = foldr ((++) . f) []

-- 9.
squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

-- 10.
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy  _ []       = undefined
myMaximumBy  _ [x]      = x
myMaximumBy f (x : xs)  = foldl fo x xs
  where fo a b
          | f a b == GT = a
          | otherwise   = b

-- 11.
--
