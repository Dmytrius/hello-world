-- Для представлених далі задач:
    -- а) визначте типи;
    -- б) визначте вказані функції;
    -- в) визначте хоча б один оператор.
    -- Для демонстрації роботи функцій треба створити базу даних у формі
    -- списку. Запропонуйте кілька варіантів функції.
    -- Фігури на площині. 
    -- Використовуються такі фігури, як коло (центр та радіус),
    -- прямокутник (координати лівої верхньої та правої нижньої точок), трикутник
    -- (координати вершин) та мітка — label (координати лівої нижньої точки, шрифт
    -- та рядок). Доступні шрифти — Consolas, Lucida Console та Source Code Pro.
    -- Визначне функції для:
    -- 1. обчислення площі фігури (для мітки — через розмір одного символу та
    -- їх кількість);

module Lab3 where

data Point = Point {x::Int, y::Int} deriving (Eq, Show)

data Shape =
    Circle {center::Point, radius::Float}
    | Triangle {a::Point, b::Point, c::Point}
    | Rectangle {a::Point, d::Point}
    | Label {l::Point, font::String, row::Float}
        deriving (Eq, Show)

square :: Shape -> Int
square (Circle _ r) = toInt (pi * r**2)

square (Triangle a b c) 
            = toInt (sqrt (
                        fromIntegral (
                            (semiPerimetr a b c
                                * (semiPerimetr a b c - (lengthSegment a b)) 
                                    * (semiPerimetr a b c - (lengthSegment b c)
                                        * (semiPerimetr a b c - (lengthSegment c b)))
                            )
                        )
                    )
                )

square (Rectangle point1 point2) = ((x point1) - (x point2)) * ((y point1) - (y point2))

semiPerimetr :: Point -> Point -> Point -> Int
semiPerimetr a b c = ((lengthSegment a b) + (lengthSegment c b) + (lengthSegment a c))

lengthSegment :: Point -> Point -> Int
lengthSegment point1 point2
            = toInt (sqrt (
                fromIntegral (
                    ((diffOrd (x point1) (x point2))) ^ 2
                        + ((diffOrd (y point1) (y point2))) ^ 2)
                    )
            )

diffOrd :: Int -> Int -> Int
diffOrd o1 o2 = o1 - o2

toInt :: Float -> Int
toInt = round 