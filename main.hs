main :: IO ()
main = do
    putStrLn "Hi everyone"
    putStrLn ("Take a look at those beautiful numbers: " ++ show (filter even [10..20]))
