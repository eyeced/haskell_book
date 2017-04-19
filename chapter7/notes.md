# Chapter 7 Notes

## Declaring Parameters

```haskell
myNum :: Num a => a
myNum = 1
```
This is not a function beacuse no parameters are named between the name of the declared value and the =

```haskell
myVal :: Num a => a -> a
myVal f = f + myNum
```
The function type is Num a => a -> a, If you assign the type Integer to myNum, myNum and myVal must change to the types Integer -> Integer respectively

```haskelll
stillAFunction :: [a] -> [a] -> [a] -> [a]
stillAFunction a b c = a ++ b ++ c
```
Here a b c represents parameters of the function which are arrays and of some type a

### Shadowing
```haskell
bindExp :: Integer -> String
bindExp x = let x = 10; y = 5 in
              "the interger was: " ++ show x
              ++ " and y was: " ++ show y
```
On running the above function any value we pass is the function would not matter as we are shadowing the value of x in the let expression, so on calling the function we would always get values x as 10 and y as 5 only

## Pattern Matching
```haskell
module RegisteredUser where

newtype Username = Username String
newtype AccountNumber = AccountNumber Integer

data User = UnregisteredUser
          | RegsiteredUser Username AccountNumber
```

## Higher Order Functions
```haskell
Prelude> :t flip
flip :: (a -> b -> c) -> b -> a -> c
```
```haskell
flip :: (a -> b -> c) -> b -> a -> c
flip f x y = f y x
```
* When we want to express function argument within a function type, we nest it within parentheses
* The argument f is the function (a -> b -> c)
* We apply f to y and then to x, but flip will flip the order of application.

How parentheses associate in type signatures
```haskell
returnLast :: a -> b -> c -> d -> d
returnLast _ _ _ d = d

returnLast' :: a > (b -> (c -> (d -> d)))
returnLast' _ _ _ d = d
```

## Function Composition
```haskell
Prelude> :t (.)
(.) :: (b -> c) -> (a -> b) -> a -> c
```
The composition can be said in the following manner
(f . g) x = f (g x)
g is applied to x and the result of that is being applied by the function f

## Pointfree style
With the function composition we can use functions to define behavior for a value and, here we compose functions without defining their values.
```haskell
Prelude> let f = negate . sum
Prelude> f [1, 2, 3, 4, 5]
-15
```
