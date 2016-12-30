## Multiple Choice

1. A value of type [a] is : c) a list whose elements are all of some type a
2. A function of type [[a]] -> [a] could : a) take a list of strings as an argument
3. A function of type [a] -> Int -> a : b) returns one element of type a from a list
4. A function of type (a, b) -> a : c) takes a tuple argument and returns the first value

## Determine the type

```haskell
-- 1
-- a)
Prelude> (* 9) 6
54 :: Num

-- b)
Prelude> head [(0, "doge"), (1, "kitteh")]
(0, "doge") :: (Num, [Char])

-- c)
Prelude> head [(0 :: Integer, "doge"), (1, "kitteh")]
(0, "doge") :: (Integer, [Char])

-- d)
Prelude> if False then True else False
False :: Bool

-- e)
Prelude> length [1, 2, 3, 4, 5]
5 :: Int

-- f) (length [1, 2, 3, 4]) > (length "TACOCAT")
False :: Bool


-- 2
Num

-- 3
Num a => a

-- 4
Fractional

-- 5
[Char]
```

## Does it compile

```haskell
-- 1
bigNum = (^) 5 $ 10
wahoo = bigNum * 10

-- 2
-- This one is correct
x = print
y = print "woohoo!"
z = x "hello world"

-- 3
a = (+)
b = 5
c = a b 10
d = a c 200

-- 4
a = 12 + b
where
b = 10000 * c
c = 10
```

## Type variable or specific type contructor

2. 
```haskell
f :: zed -> Zed -> Blah
--   [0]    [1]    [2]
```
[0] fully polymorphic
[1] concrete
[2] concrete

3.
```haskell
f :: Enum b => a -> b -> C
--             [0]  [1]  [2]
```
[0] fully polymorphic
[1] constrained polymorphic
[2] concrete

4.
```haskell
f :: f -> g -> C
--   [0]  [1]  [2]
```
[0] constrained polymorphic
[1] fully polymorphic
[2] concrete

## Write a type signature
1.
```haskell
functionH :: [a] -> a
functionH (x:_) = x
```

2.
```haskell
functionC :: Ord a => a -> a -> Bool
functionC x y = if (x > y) then True else False
```

3.
```haskell
functionS :: (a, b) -> b
functionS (x, y) = y
```

## Given a type write the function
```haskell
-- 1
i :: a -> a
-- this is an id function

-- 2
c :: a -> b -> a
c a _ = a
-- this can be represented as c :: a -> _ -> a

-- 3
c'' :: b -> a -> b
c'' b _ = b
-- function is the same as above

-- 4
c' :: a -> b -> b
c` _ b = b
-- this can be writen as c' :: _ -> b -> b as snd function

-- 5
r :: [a] -> [a]
-- this could be the tail function or reverse function
r a = tail a
r a = reverse a

-- 6
co :: (b -> c) -> (a -> b) -> a -> c
co = (.)

-- 7
a :: (a -> c) -> a -> a
a f x = x

-- 8
a' :: (a -> b) -> a -> b
a' = ($)
```
