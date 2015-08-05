-- | Main entry point to the application.
module Main where

import Interval
import Note


-- | The main entry point.
main :: IO ()
main = do
    print $ resolveAscendingInterval 3 C
    print $ resolveDescendingInterval 3 C