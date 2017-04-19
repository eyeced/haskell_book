module LetsWriteCode where

tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d     = xLast `mod` 10

tensDigit' :: Integral a => a -> a
tensDigit' x = snd d
  where xLast = x `div` 10
        d     = xLast `divMod` 10

hunsDigit :: Integral a => a -> a
hunsDigit x = snd d
  where xLast = x `div` 10
        d     = xLast `divMod` 10

foldBool :: a -> a -> Bool -> a
foldBool x y True  = x
foldBool x y False = y

foldBool1 :: a -> a -> Bool -> a
foldBool1 x y b = case b of
                   True  -> x
                   False -> y

foldBool2 :: a -> a -> Bool -> a
foldBool2 x y b
  | b         = x
  | otherwise = y

g :: (a -> b) -> (a, c) -> (b, c)
g f (x, y) = (f x, c)
