{-# LANGUAGE FlexibleInstances #-}

class TooMany a where
  tooMany :: a -> Bool

instance TooMany (Int, Int) where
  tooMany (x, y) = (+) x y > 42
