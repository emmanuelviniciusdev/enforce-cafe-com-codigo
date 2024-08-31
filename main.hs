-- Accumulators
myFac n = aux n 1
    where
        aux n acc
            | n <= 1 = acc
            | otherwise = aux (n - 1) (n * acc)

-- Function definition
addTuples :: [(Int, Int)] -> [Int]
addTuples xs = [ x + y | (x, y) <- xs ]

multiplyTuples :: [(Int, Int)] -> [Int]
multiplyTuples xs = [ x * y | (x, y) <- xs ]
