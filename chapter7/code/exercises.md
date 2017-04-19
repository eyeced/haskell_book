# Exercises Chapter 7

## Grab Bag

1. a), b), c), d) all are equivalent
2. Type of mTh 3 ?
```haskell
Prelude> :t mTh 3
Num a => a -> a -> a
```
3. Rewrite functions
..1. Rewrite function f
```haskell
addOneIfOdd = case odd n of
  True -> f n
  False -> n
  where f = \n -> n + 1
```
..2. rewrite with anonymous functions
```haskell
addFive x y = (if x > y then y else x) + 5
addFive = \x -> \y -> (if x > y then y else x) + 5
```
..3. Rewrite without anonymous function
```haskell
mFlip f = \x -> \y -> f y x
mFlip f x y = f y x
```

## Variety Pack
1.
..1.
```haskell
k :: (x, y) -> x
```
..2. String, No not equal to k1 and k3
..3. k3

2.
```haskell
f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f (a, _, c) (d, _, f) = ((a, d), (c, f))
```

## Case Practice
1.
```haskell
functionC x y = if (x > y) then x else y
functionC' x y =
  case x > y of
    True  -> x
    False -> y
```
2.
```haskell
ifEvenAdd2 n = if even n then (n + 2) else n
ifEvenAdd2' n =
  case even n of
    True  -> n + 2
    False -> n
```
3.
```haskell
nums x =
  case compare x 0 of
    LT -> -1
    GT -> 1
    EQ -> 0
```

## Guard Duty
1. If we put otherwise at the top, then the function always returns the otherwise statement as it is always true.

2. Reordering the guards would give wrong result, because we have x >= 0.7, if this statement comes before x >= 0.9 then it would be always true and we would never see x >= 0.9 to be used.

```haskell
pal xs
  | xs == reverse = True
  | otherwise     = False
```
3. c) True when xs is a palindrome

4. It can take only a list as a parameter

5. 
```haskell
pal :: [a] -> Boolean
```

6.
```haskell
numbers x
  | x < 0  = -1
  | x == 0 = 0
  | x > 0  = 1
```
c) an indication of whethere its argument is a positive or negative number or zero

7. Num

8. numbers Num a => a -> a

## Chapter Exercises
1. d) may resolve to values of different types, depending on inputs
2. b) Char -> [String]
3. d) (Ord a, Num a) => a -> Bool
4. b) is a higher order function
5. a) f True :: Bool
