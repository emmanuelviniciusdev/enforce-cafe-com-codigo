-- Create a function "isAsc" that returns True if the list given to it is a list
-- of ascending order.
-- Professor`s solution:
isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [_] = True
isAsc (x:y:xs) = (x <= y) && isAsc xs

-- My solution:
-- isAsc :: [Int] -> Bool
-- isAsc [] = True
-- isAsc [_] = True
-- isAsc (x:xs)
--     | x > head xs = False
--     | otherwise = isAsc xs

-- Create a function "nub" that removes all duplicates from a given list.
nub :: (Eq a) => [a] -> [a]
nub [] = []
nub (x:xs)
    | x `findElem` xs = nub xs
    | otherwise = x : nub xs

-- Create a function "findElem" that returns True if an element is in 
-- a given list and returns False otherwise.
findElem :: (Eq a) => a -> [a] -> Bool
findElem _ [] = False
findElem a (x:xs) = (a == x) || findElem a xs


-- List Patterns
myListSum :: [Int] -> Int
myListSum [] = 0
myListSum (x:xs) = x + myListSum xs

-- List comprehension
-- This multiplies all items from the list by 2
-- [ 2 * x | x <- [1, 2, 3] ]

-- This multiplies all items from the list by 2, applying a condition (item must be > 1)
-- [ 2 * x | x <- [1, 2, 3], x > 1 ]

-- Generating lists
myListGenerator :: Int -> Int -> [Int]
myListGenerator smallestNumber largestNumber
    | smallestNumber > largestNumber = []
    | smallestNumber == largestNumber = [smallestNumber]
    | smallestNumber < largestNumber = smallestNumber : myListGenerator (smallestNumber + 1) largestNumber

-- Accumulators
myFacUsingAccumulators n = aux n 1
    where
        aux n acc
            | n <= 1 = acc
            | otherwise = aux (n - 1) (n * acc)

-- Recursion (no "for" or "while" statements)
-- Recursion using Guards
myFacUsingGuards n
    | n <= 1 = 1
    | otherwise = n * myFacUsingGuards (n - 1)

-- "Bare" recursion
myFacBare n =
    if n <= 1 then
        1
    else
        n * myFacBare (n - 1)

-- Pattern matching (this is cool)
isZero 0 = True
isZero _ = False

-- Function definition
addTuples :: [(Int, Int)] -> [Int]
addTuples xs = [ x + y | (x, y) <- xs ]

multiplyTuples :: [(Int, Int)] -> [Int]
multiplyTuples xs = [ x * y | (x, y) <- xs ]
