# Chapter 6 Notes

## Typeclasses
* How a set of types are consumed or used in computations. 
* It can also be defined as constrained polymorphism.

## Back to Bool

```haskell
Prelude> :info Bool
instance Bounded Bool -- Defined in ‘GHC.Enum’
instance Enum Bool -- Defined in ‘GHC.Enum’
instance Eq Bool -- Defined in ‘GHC.Classes’
instance Ord Bool -- Defined in ‘GHC.Classes’
instance Read Bool -- Defined in ‘GHC.Read’
instance Show Bool -- Defined in ‘GHC.Show’
```

Each of these instances is a typeclass that Bool implements, and the instances are the unique specification of how Bool makes use of the methods from that typeclass.

* instance Bounded Bool - Bounded for types that have an upper and lower bound
* instance Enum Bool - Enum for things that can be enumerated
* instance Eq Bool - Eq for things that can be tested for equality
* instance Ord Bool - Ord for things that can be put into a sequential order
* instance Read Bool - Read parses strings into things
* instance Show Bool - Show renders things into strings


## Eq

```haskell
Prelude> :info Eq
class Eq a where
  (==) :: a -> a -> Bool
  (/=) :: a -> a -> Bool
  {-# MINIMAL (==) | (/=) #-} -- Defined in ‘GHC.Classes’
instance (Eq a, Eq b) => Eq (Either a b) -- Defined in ‘Data.Either’
instance Eq a => Eq [a] -- Defined in ‘GHC.Classes’
instance Eq Word -- Defined in ‘GHC.Classes’
instance Eq Ordering -- Defined in ‘GHC.Classes’
instance Eq Int -- Defined in ‘GHC.Classes’
instance Eq Float -- Defined in ‘GHC.Classes’
instance Eq Double -- Defined in ‘GHC.Classes’
instance Eq Char -- Defined in ‘GHC.Classes’
instance Eq Bool -- Defined in ‘GHC.Classes’
```

```haskell
(==) :: Eq a => a -> a -> Bool
(/=) :: Eq a => a -> a -> Bool
```

These two functions say that they can only be applied to 2 parameters if ther are of the same type `a`

for tuples equality of two tuples (a, b) depends of the equality of the constituent values a and b that's why

```haskell
Prelude> (1, 'a') == (2, 'b')
False
-- Next call would throw an error as instance (Eq a, Eq b) = Eq (a, b)
Prelude> ('a', 'b') == (1, 2)
<interactive>:18:16: error:
    • No instance for (Num Char) arising from the literal ‘1’
    • In the expression: 1
      In the second argument of ‘(==)’, namely ‘(1, 2)’
      In the expression: ('a', 'b') == (1, 2)
```

## Writing typeclasses

Suppose we write a type like this
```haskell
data Identity a =
	Identity a

instance Eq (Identity a) where
	(==) (Identity v) (Identity v') = v == v'
```
Now v and v' are supposidely are not of Eq type so it can throw an error for fixing that we should declare the equal function like this. 

```haskell
instance Eq a => Eq (Identity a) where
  (==) (Identity v) (Identity v') = v == v'
```
Now as a is also of Eq type so Haskell compiler would throw a compile time error if a is not of Eq type

## Ord instances

In the DayOfWeek example 
```haskell
data DayOfWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun
  deriving (Ord, Show)
```
this would implement the Ord functionality, as previously we already had Eq instance hence we can derive the Ord as well, for Ord Eq is mandatory.
We can also have the definition like this as well, and to make Fri always greater we can also have the implementation of the Ord instance as well
```haskell
data DayOfWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun
  deriving (Eq, Show)

instance Ord DayOfWeek where
  compare Fri Fri = EQ
  compare Fri _   = GT
  compare _ Fir   = LT
  compare _ _     = EQ
```
in this implementation Fri is always the greatest, but all other comparisons are not working

## Ord implies Eq
Eq is a superclass of Ord, so if in any function we say Ord a then it implies that it is also an Eq a nad we can do a == a'

## Instances are dispatched by type
Typeclass instances are unique pairings of the typeclass and a type, they define the ways to implement the typeclass methods for that type.
* a typeclass defines a set of functions and / or values
* types have instances of the typeclass
* the instances specify the ways that type uses the functions of the typeclass..

