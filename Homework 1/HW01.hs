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
toRevDigits 0 = []
toRevDigits a
    | length (show a) == 1 = [a]
    | a < 0 = []
    | otherwise = lastDigit(a) : toRevDigits(dropLastDigit(a)) 
-- Exercise 3 -----------------------------------------

-- Double every second number in a list starting on the left.
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther [a,b] = [a*2,b]
doubleEveryOther (x:s:xs) = (x*2):s:doubleEveryOther(xs) 


-- Exercise 4 -----------------------------------------

-- Calculate the sum of all the digits in every Integer.
sumDigits :: [Integer] -> Integer
sumDigits a = foldr (+) 0 (map sumDigit a) 

sumDigit :: Integer -> Integer
sumDigit a
    | length(show(a)) == 1 = a
    | otherwise  = (a `div` 10) + (a `mod` 10) 

-- Exercise 5 -----------------------------------------

-- Validate a credit card number using the above functions.
luhn :: Integer -> Bool
luhn a
    | mod (sumDigits(reverse(doubleEveryOther(reverse(toRevDigits a))))) 10 == 0 = True
    | otherwise = False
-- Exercise 6 -----------------------------------------

-- Towers of Hanoi for three pegs
type Peg = String
type Move = (Peg, Peg)

hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi = undefined
