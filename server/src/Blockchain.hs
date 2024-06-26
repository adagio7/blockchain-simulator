module Blockchain 
    ( Block, Transaction ) where

import Data.time.Clock (UTCTime)
import Data.time.Clock.POSIX (getPOSIXTime)

data Block = Block {
    index :: Int,
    timestamp :: UTCTime,
    transactions :: [Transaction],
    prevHash :: String,
    nonce :: Int,
    merkleRoot :: Int
} deriving (Show)

data Transaction = Transaction {
    sender :: String,
    recipient :: String,
    amount :: Float
} deriving (Show)
