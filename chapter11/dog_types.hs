data Doggies a = Husky a | Mastiff a deriving (Eq, Show)

-- 1. It's a type constructor
-- 2. Doggies :: * -> *
-- 3. Doggies String :: *
-- 4. Husky 10 :: Num a => Doggies a
-- 5. Husky 10 :: Integer a => Doggies a
-- 6. Mastiff "Scooby Doo" :: [Char] a => Doggies a
-- 7. DogueDeBordeaux is a type constructor
-- 8. DogueDeBordeaux :: doge -> DogueDeBordeaux doge
-- 9. DogueDeBordeaux [Char]
