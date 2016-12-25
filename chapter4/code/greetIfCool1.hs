module GreetIfCool1 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool
     then print "eyyyyy, What's shakin"
  else
     print "pshhh."
  where cool = coolness == "downright frosty yo"
