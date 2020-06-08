module Main where

import Lab1_1 (lab1_1)
import Lab1_2 (maxNumber,maxNumberList)
import Lab2_1 (lastNumber,lastNumberMyFunction,lastNumberMyFunction')
import Lab2_2 (isPrime)
import Lab3 (Point,Shape(Circle,Triangle,Rectangle),square)

point1 = Point 1 3 
point2 = Point 7 3
point3 = Point 7 7
point4 = Point 7 3 

main:: IO()
main = do 
    print "Lab 1.1"
    print lab1_1
    print "=================="
    print "Lab1_2"
    print "maxNumber 4 8 2"
    print $ maxNumber 4 8 2
    print "maxNumberList [4,8,2,6,12,4]"
    print $ maxNumberList [4,8,2,6,12,4]
    print "=================="
    print "Lab 2.1"
    print "lastElement [4,8,2,6,12,4]"
    print $ lastNumber [4,8,2,6,12,4]
    print "lastElement [9]"
    print $ lastNumber [9]
    print "$ lastElement []"
    -- print $ lastNumber []
    print "lastNumberMyFunction [4,8,2,6,12,4]"
    print $ lastNumberMyFunction [4,8,2,6,12,4]
    print "lastNumberMyFunction' [4,8,2,6,12]"
    print $ lastNumberMyFunction' [4,8,2,6,12]
    print "=================="
    print "Lab 2.2"
    print " is prime 10"
    print $ isPrime 10
    print " is prime 5"
    print $ isPrime 5
    print "=================="
    print "Lab 3"
    print "(square (Circle point1 6))"
    print (square (Circle point1 6))
    print "(square (Triangle point1 point2 point3))"
    print (square (Triangle point1 point2 point3))
    print "(square (Rectangle point1 point4))"
    print (square (Rectangle point1 point4))