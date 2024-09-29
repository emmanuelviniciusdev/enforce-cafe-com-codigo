-- Enables the use of text literals
{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty

import Data.Monoid (mconcat)

-- Main entry point 
main :: IO()

-- Initializes a web server on port 3000
main = scotty 3000 $ do
    -- HTTP routes
    get "/" $ do
        html "<h1>haskell-benchmarking-api</h1>"

    get "/largest-prime-factor" $ do
        -- TODO: Implement a solution to this problem: https://projecteuler.net/problem=3
        -- TODO: Implement a solution to this problem: https://projecteuler.net/problem=3
        -- TODO: Implement a solution to this problem: https://projecteuler.net/problem=3

        html "<h1>haskell-benchmarking-api</h1>"
