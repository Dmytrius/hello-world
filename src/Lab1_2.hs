-- Наведіть визначення та приклади використання такої функції:
-- Функція max3 – повертає найбільше із трьох чисел.

module Lab1_2 where


-- Проста реалізація, "найменша кількість коду"
maxNumber :: Ord a => a -> a -> a -> a
maxNumber a b c = max a (max b c)

-- Реалізація, здатна до масштабування задачі, коли, наприклад, потрібен пошук з більшої кількості елементів,
-- або невідомої на початку кількості елементів

maxNumberList :: Ord x => x -> x
maxNumberList []       = error ”maximum of empty list”
maxNumberList [x]      = x
maxNumberList (x:xs)   = max x (maxNumberList xs)