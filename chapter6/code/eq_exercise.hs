module EqExercise where

data TisAnInteger =
  TisAn Integer

instance Eq (TisAnInteger) where
  (==) (TisAn i) (TisAn i') = i == i'

data TwoIntegers =
  Two Integer Integer

instance Eq (TwoIntegers) where
  (==) (Two a b) (Two a' b') = a == a' && b == b'

data StringOrInt =
  TisAnInt Int | TisAString String

instance Eq (StringOrInt) where
  (==) (TisAnInt i) (TisAnInt i') = i == i'
  (==) (TisAString s) (TisAString s') = s == s'

data Pair a =
  Pair a a

instance Eq a => Eq (Pair a) where
  (==) (Pair x y) (Pair x' y') = x == x' && y == y'


data Tuple a b =
  Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple x y) (Tuple x' y') = x == x' && y == y'


data Which a =
  ThisOne a | ThatOne a

instance Eq a => Eq Which a where
  (==) (ThisOne x) (ThisOne x') = x == x'
  (==) (ThatOne x) (ThatOne x') = x == x'


data EitherOr a b =
  Hello a | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello x) (Hello x') = x == x'
  (==) (Goodbye x) (Goodbye x') = x == x'
