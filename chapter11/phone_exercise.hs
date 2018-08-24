import Data.Char
import Data.List

data DaPhone = DaPhone [(Char, String)] deriving Show

convo :: [String]
convo = ["Wanna play 20 questions",
        "Ya",
        "U 1st haha",
        "Lol ok. Have u ever tasted alcohol lol",
        "Lol ya",
        "Wow ur cool haha. Ur turn",
        "Ok. Do u think I am pretty Lol",
        "Lol ya",
        "Haha thanks just making sure rofl ur turn"]

type Digit = Char

type Presses = Int

phone = DaPhone [('*', "^")
                , ('#', ".,")
                , ('0', " +_")
                , ('1', "")
                , ('2', "abc")
                , ('3', "def")
                , ('4', "ghi")
                , ('5', "jkl")
                , ('6', "mno")
                , ('7', "pqrs")
                , ('8', "tuv")
                , ('9', "wxyz")]

isInButton :: Char -> (Char, String) -> Bool
isInButton ch t@(c, s) = ch == c || elem ch s

getButton :: DaPhone -> Char -> (Char, String)
getButton ph@(DaPhone xs) c = head $ filter (isInButton c) xs

getPresses :: Char -> [Char] -> Presses
getPresses _ [] = 0
getPresses ch s@(c:cs) = if c == ch
                            then 1
                            else 1 + getPresses ch cs

getDigitPresses :: Char -> (Char, String) -> (Digit, Presses)
getDigitPresses ch t@(c, s) = if ch == c
                                 then (c, length s + 1)
                                 else (c, getPresses ch s)

reverseTaps :: DaPhone -> Char -> [(Digit, Presses)]
reverseTaps phone c = if isUpper c
                         then [('*', 1), getDigitPresses (toLower c) (getButton phone $ toLower c)]
                         else [getDigitPresses c $ getButton phone c]

cellPhonesDead :: DaPhone -> String -> [(Digit, Presses)]
cellPhonesDead ph [] = []
cellPhonesDead ph s@(c:cs) = reverseTaps ph c ++ cellPhonesDead ph cs

tapsForMessages :: DaPhone -> [String] -> [[(Digit, Presses)]]
tapsForMessages ph xs = map (cellPhonesDead ph) xs

fingerTaps :: [(Digit, Presses)] -> Presses
fingerTaps [] = 0
fingerTaps ts@(t@(d, p):tss) = p + fingerTaps tss

occurrences :: String -> Char -> Int
occurrences str ch = foldr (\a b -> if a == ch then b + 1 else b) 0 str

mostPopularLetter :: String -> Char
mostPopularLetter str@(s:ss) = foldr(\a b -> if occurrences str a > occurrences str b then a else b) s ss

mostPopularCost :: String -> Int
mostPopularCost str = fingerTaps (reverseTaps phone $ mostPopularLetter str)


