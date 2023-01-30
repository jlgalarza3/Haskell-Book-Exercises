{-

1. What are the types of the following functions?

['a','b','c'] :: [Char]
('a','b','c') :: (Char, Char, Char)
[(False,'0'),(True,'1')] :: [(Bool, Char)]
([False,True],['0','1']) :: ([Bool], [Char])

2. Write down definitions that have the following types; it does not matter what the definitions actually
 do as long as they are type-correct.

2.1 bools :: [Bool]
bools = [True, False]

2.2 nums :: [[Int]]
nums = [[1,2,3], [4,5,6]]

2.3 add :: Int -> Int -> Int -> Int                            Int -> (Int -> (Int -> Int))
add x y z = x + y + z

2.4 copy :: a -> (a,a)
copy x = (x,x)

2.5 apply :: (a -> b) -> a -> b
apply f x = f x

3. What are the types of the following functions?

3.1 second xs = head (tail xs)
second :: [a] -> a

3.2 swap (x,y) = (y,x)
swap :: (a,b) -> (b,a)

3.3 pair x y = (x,y)
pair :: a -> b -> (a,b)

3.4 double x = x*2
double :: Num a => a -> a

3.5 palindrome xs = reverse xs == xs
palindrome :: Eq a => [a] -> Bool

twice f x = f (f x)
twice :: (a -> a) -> a -> a

-}

-- 4. Check your answers to the preceding questions using GHCi.

-- 2.
bools = [True, False]

nums = [[1, 2, 3], [4, 5, 6]]

add x y z = x + y + z

copy x = (x, x)

apply f x = f x

-- 3.
second xs = head (tail xs)

swap (x, y) = (y, x)

pair x y = (x, y)

double x = x * 2

palindrome xs = reverse xs == xs

{-
5. Why is not feasible in general for function types to be instances of the Eq class? When is it feasible?
Hint: two functions of the same type are equal if they always return equal results when applied to equal arguments.
functions are not comparable in general because it is not possible to determine if they have the same behavior for all inputs.
-}