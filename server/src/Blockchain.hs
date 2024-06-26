{-# LANGUAGE DeriveGeneric #-}

module Blockchain 
    ( Block, Transaction ) where

import GHC.Generics (Generic)
import Data.Aeson (FromJSON, ToJSON)
import Data.Time.Clock (UTCTime)
import Data.Time.Clock.POSIX (getPOSIXTime)

data Block = Block {
    index :: Int,
    timestamp :: UTCTime,
    transactions :: [Transaction],
    prevHash :: String,
    nonce :: Int,
    merkleRoot :: Int
} deriving (Show, Generic)

data Transaction = Transaction {
    sender :: String,
    recipient :: String,
    amount :: Float
} deriving (Show, Generic)

instance FromJSON Block
instance ToJSON Block

instance FromJSON Transaction
instance ToJSON Transaction
