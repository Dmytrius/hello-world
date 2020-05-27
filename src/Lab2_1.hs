-- Написати функції для виконання завдань:
-- а) не застосовуючи вбудованих функцій;
-- б) з використанням вбудованих функцій;
-- в) з використанням (можливо власних) функцій вищого порядку.
-- Передбачити обробку списку вхідних даних.

-- 1.Знайти останній елемент списку.

module Lab2_1 where

lastNumberMyFunction :: Ord x => [x] -> x
lastNumberMyFunction [] = error "this list not exist digits"
lastNumberMyFunction [x] = x
lastNumberMyFunction (_:xs) = lastNumberMyFunction (xs)

lastNumber ::  Num x => [x] ->  x
lastNumber [] = error "this list not exist digits"
lastNumber [x] = x
lastNumber (_:xs) = last xs

lastNumberMyFunction' :: Num x => [x] -> x
lastNumberMyFunction' (x:xs) 
                        | length [x] == 0 = error "this list not exist digits"
                        | length [x] >= 1 = last (xs)