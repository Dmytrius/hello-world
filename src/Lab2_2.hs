-- Написати функції для виконання завдань:
-- а) не застосовуючи вбудованих функцій;
-- б) з використанням вбудованих функцій;
-- в) з використанням (можливо власних) функцій вищого порядку.
-- Передбачити обробку списку вхідних даних.

-- 21.Визначити, чи є число простим.

module Lab2_2 where

isPrime :: Int -> String
isPrime n
    | length (divisors n) == 1 = "This digit is prime"
    | otherwise = "This digit isn't prime"

-- algorithm sieve Erathosphen
divisors :: Integral a => a -> [a]
divisors n = [x | x <- [1..(n - 1)], rem n x == 0]