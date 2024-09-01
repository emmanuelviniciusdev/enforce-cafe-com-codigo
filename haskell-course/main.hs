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
