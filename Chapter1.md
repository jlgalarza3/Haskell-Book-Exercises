1. Give another possible calculation for the result of double (double 2) // double x = x + x

double (double 2 + 0) 
double double 2 + double 0
double (4) + 0
8

2. Show that sum[x] = x for any number x

sum(n:ns) = n + sum ns 
sum [x] = x + sum 0
sum [x] = x // LQQD

3. Define a function product that produces the product of a list of numers, and show using your definition
that product [2,3,4] = 24

product [] = 1
product(x:xs) = [x] * product[xs]
product [2,3,4] = 2 * product[3,4]
                = 2 * 3 * product[4]
                = 2 * 3 * 4 * product[0]
                = 2 * 3 * 4 * 1 
                = 24

4. How should the definition of the function qsort be modified so that it produces a reverse sorte version of a list?

qsort [] = []
qsort (x:xs) = qsort larger ++ [x] ++ qsort smaller
            where
                smaller = [a | a <- xs, a <= x]
                larger = [b | b <- xs, b > x]

example with qsort [3,5,1,4,2]
qsort [5,4] ++ [3] ++ qsort [1,2]
( qsort [] ++ [5] ++ qsort [4] ) ++ [3] ++ ( qsort [2] ++ [1] ++ qsort [] )
( [5] ++ [4] ) ++ [3] ++ ( [2] ++ [1] )
[5] ++ [4] ++ [3] ++ [2] ++ [1]
[5,4,3,2,1]

5.What would be the effect of replacing <= by < in the original definition of qsort? Hint: Consider the example qsort [2,2,3,1,1]

qsort [2,2,3,1,1]
= qsort [2] ++ [2] ++ qsort [3,1,1]
= [2] ++ [2] ++ ( qsort [1,1] ++ [3] ++ qsort [] )
= [2] ++ [2] ++ ( [1,1] ++ [3] ++ [] )
= [2] ++ [2] ++ [1,1] ++ [3]
= [2] ++ [2] ++ [1,1,3]

Answer: The function would not properly handle duplicate elements in the input list. 
The function does not return a properly sorted list, it returns the input list in the same order as it was passed.

This is because the < operator only considers elements that are strictly less than the pivot, while <= considers elements that are less than or equal to the pivot. So if there are duplicates in the input list, they will not be properly handled by the function when using < in place of <=.
