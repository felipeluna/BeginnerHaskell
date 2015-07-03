{-# OPTIONS_GHC -Wall #-}
module HW01 where

-- Exercise 1 -----------------------------------------

-- Get the last digit from a number
lastDigit :: Integer -> Integer
-- (show a) transforms the integer into string, so we can use
-- the function drop to drop the last character (lenght(number)-1)
lastDigit a  = read (drop (length(show a)-1) (show a))
-- Drop the last digit from a number
dropLastDigit :: Integer -> Integer
-- if length == 1 then drop the only digit and get zero, otherwise take everything up to the last digit
dropLastDigit a 
    | length (show a) == 1 = 0
    | otherwise = read (take (length(show a)-1) (show a))

-- Exercise 2 -----------------------------------------

toRevDigits :: Integer -> [Integer]
toRevDigits a
    | length (show a) == 1 = [a]
    | otherwise = lastDigit(a) : toRevDigits(dropLastDigit(a)) 
-- Exercise 3 -----------------------------------------

-- Double every second number in a list starting on the left.
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther = undefined

-- Exercise 4 -----------------------------------------

-- Calculate the sum of all the digits in every Integer.
sumDigits :: [Integer] -> Integer
sumDigits = undefined


-- Exercise 5 -----------------------------------------

-- Validate a credit card number using the above functions.
luhn :: Integer -> Bool
luhn = undefined

-- Exercise 6 -----------------------------------------

-- Towers of Hanoi for three pegs
type Peg = String
type Move = (Peg, Peg)

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi = undefined
