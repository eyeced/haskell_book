module UnderstandingFolds where

-- 1.
foldr (*) 1 [1..5]
-- would return the same result as
-- foldl (flip (*)) 1 [1..5]
-- foldl (*) 1 [1..5]

-- 2.
foldl (flip (*)) 1 [1..3]
-- (3 * (2 * (1 * 1)))

-- 3.
-- c) foldr, but not foldl, associates to the right

-- 4.
-- a) reduce structure

-- 5.
-- a)
foldr (++) "" ["woot", "WOOT", "woot"]
-- b)
foldr max 'a' "fear is the little death"
-- c)
foldr (&&) True [False, True]
-- d)
-- No
-- e)
foldl (flip ((++) . show)) "" [1..5]
-- f)
foldr (flip const) 'a' [1..5]
-- g)
foldl const 0 "tacos"
-- h)
foldr (flip const) 0 "burritos"
-- i)
foldr (flip const) 'z' [1..5]
