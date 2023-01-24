-- 1. Work through the examples in this chapter using GHCi.
{-

Select the first element of a non-empty list
head [1,2,3,4,5]
-> 1

Remove the first element of a non-empty list
tail [1,2,3,4,5]
-> [2,3,4,5]

Select the nth element of a list (counting from zero)
[1,2,3,4,5] !!2
-> 3

Select the first n elements from a list
take 3 [1,2,3,4,5]
-> [1,2,3]

Remove the first n elements from a list
drop 3 [1,2,3,4,5]
-> [4,5]

Calculate the length of a list
length [1,2,3,4,5]
-> 5

Calculate the sum of a list of numbers
sum [1,2,3,4,5]
-> 15

Calculate the product of a list of numbers
product [1,2,3,4,5]
-> 120

Append two lists
[1,2,3] ++ [4,5,6]
[1,2,3,4,5,6]

Reverse a list
reverse [1,2,3,4,5]
[5,4,3,2,1]

-}

double x = x + x

quadruple x = double (double x)

factorial n = product [1 .. n]

average ns = sum ns `div` length ns

-- 2. Parenthesise the following arithmetic expressions:
{-

2^3*4
-> 2^(3*4)

2*3+4*5
-> (2*3)+(4*5)

2+3*4^5
-> 2+(3*(4^5))

-}
