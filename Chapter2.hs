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

-- 3. The script below contains three syntactic errors. Correct these errors and then check that your script works properly using GHCi.
{-

N = a 'div' length xs
  where
    a = 10
    xs = [1,2,3,4,5]
-}

n = a `div` length xs
  where
    a = 10
    xs = [1, 2, 3, 4, 5]

{-
4. The library function last selects the last element of a non-empty list; for example, last [1,2,3,4,5] = 5.
 Show how the function last could be defined in terms of the other library functions introduced in this chapter.
 Can you think of another possible definition?
-}

otherLast xs = head (reverse xs)

{-
5. The library function init removes the last element from a non-empty list; for example, init [1,2,3,4,5] = [1,2,3,4].
 Show how init could similarly be defined in two different ways.
-}

otherInit1 xs = reverse (tail (reverse xs))

otherInit2 xs = take (length xs - 1) xs
