addTuples :: [(Int, Int)] -> [Int]
addTuples xs = [ x + y | (x, y) <- xs ]

multiplyTuples :: [(Int, Int)] -> [Int]
multiplyTuples xs = [ x * y | (x, y) <- xs ]
