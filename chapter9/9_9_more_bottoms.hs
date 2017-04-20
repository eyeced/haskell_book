-- 1. take 1 $ map (+1) [undefined, 2, 3]
-- Bottom
--
-- 2. Yes it would return a value - [2]
take 1 $ map (+1) [1, undefined, 3]

-- 3. No, it would not return a value, though it would print 2 and then undefined exception
take 2 $ map (+1) [1, undefined, 3]

-- 4. This function takes a [Char]  and then when evaluated would return whether that Char is a vowel or not
itIsMystery xs = map (\x -> elem x "aeiou") xs
