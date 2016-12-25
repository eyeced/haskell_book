module One where

helloWorld :: String
helloWorld = "Hello World!"

getHead :: String -> Char
getHead x = (head x)

main :: IO ()
main = do
  print $ getHead helloWorld
