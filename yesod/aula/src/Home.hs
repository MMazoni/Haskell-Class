{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Home where

import Foundation
import Yesod.Core

getHomeR :: Handler Html
getHomeR = defaultLayout $ do
    [whamlet|
        <h1>
            Página Principal
        <a href=@{OlaR}>
            Olá
    |]

getOlaR :: Handler Html
getOlaR = defaultLayout $ do
    [whamlet|
        <h1>
            Olá Mundo!
    |]