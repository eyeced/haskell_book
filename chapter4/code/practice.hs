module FPHaskell where

square :: Integer -> Integer
square x = x * x

twice :: (a -> a) -> (a -> a)
twice f x = f (f x)

quad :: Integer -> Integer
quad = twice square

quad2 :: Integer -> Integer
quad2 = square . square
