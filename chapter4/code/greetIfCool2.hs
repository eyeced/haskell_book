module GreetIfCool2 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool coolness
     then print "eyyyyy, What's shakin"
  else
     print "pshhh."
       where cool v = v == "downright frosty yo"
