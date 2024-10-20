-- Enables the use of text literals
{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty

import Data.Monoid (mconcat)
import Data.Aeson (ToJSON, toJSON, object, (.=))

newtype LargestPrimeFactorOutput = LargestPrimeFactorOutput { value :: Int } deriving (Show)

instance ToJSON LargestPrimeFactorOutput where
    toJSON (LargestPrimeFactorOutput value) =
        object ["value" .= value]

primeFactors :: Int -> [Int]
primeFactors n = factor n 2
    where
        factor 1 _ = []
        factor m k
            | m `mod` k == 0 = k : factor (m `div` k) k
            | otherwise      = factor m (k + 1)

largestPrimeFactor :: Int -> Int
largestPrimeFactor n = maximum (primeFactors n)

-- Main entry point 
main :: IO()

-- Initializes a web server on port 3000
main = scotty 3000 $ do
    -- HTTP routes
    get "/" $ do
        html "<h1>haskell-benchmarking-api</h1>"

    get "/largest-prime-factor/:number" $ do
        number <- param "number" :: ActionM Int
        json $ LargestPrimeFactorOutput (largestPrimeFactor number)
