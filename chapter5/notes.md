# Chapter 5 Notes

Compiler gives a value the type with the broadest applicability (most polymorphic) and says its a constrained polymorphic Num a => a value

```haskell
Prelude> :type 13
13 :: Num a => a
```

Defining a variable with a type can be done like this

```haskell
Prelude> let fifteen = 15
Prelude> let fifteenInt = fifteen :: Int
Prelude> let fifteenDouble = fifteen :: Double
```
Now in the top statements we cannot do fifteenDouble + fifteenInt due to type mismatch


### Exercises

```haskell
not :: Bool -> Bool

length :: [a] -> Int

concat :: [[a]] -> [a]

head :: [a] -> a

(<) :: Ord a => a -> a -> Bool
```

## Currying

## Sectioning

### Exercises

```haskell
-- 1
-- as x is applied over Char so the function representation now takes Char for all the parts
f x :: Char -> Char -> Char

-- 2
-- g :: a -> b -> c -> b is applied on g 0 'c' "woot" here a is 0 Int, b is Char and C is [Char]
-- and as the result is b so the type is Char
Char

-- 3
-- h :: (Num a, Num b) => a -> b -> b applied as h 1.0 2 here a is 1.0 (Fractional) and b is 2
-- which is still not defined so it comes so the resulting type is Num b => b
Num b => b

-- 4
-- h :: (Num a, Num b) => a -> b -> b applied on h 1 (5.5 :: Double) makes a as 1 (Num a => a) and b as Double, the result of the function is b hence answer is Double
Double

-- 5
-- jackal :: (Ord a, Eq b) => a -> b -> a applied on jackal "keyboard" "has the word" means a is
-- [Char] and b is [Char] as the result is a and [Char]  is if Ord type as well hence [Char]
[Char]

-- 6
-- jackal :: (Ord a, Eq b) => a -> b -> a applied on jackal "keyboard" which means a is [Char] 
-- which is of a type of Ord as well so now the type of this function is Eq b => b -> [Char]
Eq b => b -> [Char]

-- 7
-- kessel :: (Ord a, Num b) => a -> b -> a is applied on kessel 1 2 here a is 1 (Num a => a) so
-- now kessel 1 2 would be 
(Num a, Ord a) => a

-- 8
-- same as above explanation
(Num a, Ord a) => a

-- 9
-- now a is an Integer which is a type of Order hence the type should be computed to Integer now
Integer
```

## Polymorphic
We can use the additive nature of classes as Int can use methods of Integer and Num as both of them are super classes of Int
This inheritanec extends downward from a superclass to sub classes not the other way around
Function can be polymorphic with parameters of different types

### Exercise
```haskell
-- 1
f :: a -> a
f a = a

--2
f :: a -> a -> a
f a b = a
f a b = b

-- 3
-- Only one implementation is possible
f :: a -> b -> b
f a b = b
```

## Type inference
### Exercise

```haskell
-- 1
-- myConcat x = x ++ " yo" (++) applies to [Char]

-- 2
-- (*) now applies to Fractional as (x / 3) transforms Num to Fractional

-- 3
-- myTake make take apply to [Char] instead of [a] making it more specific

-- 4
-- [a] is now applied to [Int]

-- 5
-- a is now being used as Char
```

## Asseting types for declarations
