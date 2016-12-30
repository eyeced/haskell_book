module TypeKownDo4 where

munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge f g = fst . g . f
