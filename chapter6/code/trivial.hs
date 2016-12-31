module Triv where

data Trivial =
  Trivial'

instance Eq Trivial where
  Trivial' == Trivial' = True
