{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeOperators #-}

module API 
    ( API ) where

import Servant 
import Blockchain (Block, Transaction)

type API = "blockchain" :> Get '[JSON] [Block]
        :<|> "mine" :> ReqBody '[JSON] String:>  Post '[JSON] Block
        :<|> "block" :> Capture "index" Int :> Get '[JSON] Block
        :<|> "transactions" :> ReqBody '[JSON] Transaction :> Post '[JSON] Block
        :<|> "transaction" :> "pending" :> Get '[JSON] [Transaction]
