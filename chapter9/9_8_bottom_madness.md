# Exercises: Bottom Madness

1. Bottom
2. Value - [1]
3. Bottom
4. Value - 3
5. Bottom
6. Value - 2
7. Bottom
8. Value - 1
9. Value - [1, 3]
10. Bottom

## Is it in normal form?

```haskell
-- 1. No
[1, 2, 3, 4, 5]

-- 2. No
1 : 2 : 3 : 4 : _

-- 3. No
enumFromTo 1 10

-- 4. Yes
length [1, 2, 3, 4, 5]

-- 5. Yes
sum (enumFromTo 1 10)

-- 6. No
['a'..'m'] ++ ['n'..'z']

-- 7. Yes
(_, 'b')

```
