module ArtfulDodgy where

dodgy x y = x + y * 10
oneIsOne = dodgy 1
oneIsTwo = (flip dodgy) 2

main :: IO ()
main = do
  print $ dodgy 1 0
  print $ dodgy 1 1 -- 11
  print $ dodgy 2 2 -- 22
  print $ dodgy 1 2 -- 21
  print $ dodgy 2 1 -- 12
  print $ oneIsOne 1 -- 11
  print $ oneIsOne 2 -- 21
  print $ oneIsTwo 1 -- 21
  print $ oneIsTwo 2 -- 22
  print $ oneIsOne 3 -- 31
  print $ oneIsTwo 3 -- 23
