-- | Main entry point to the application.
module Main where

import Interval
import Note


-- | The main entry point.
main :: IO ()
main = do
    print $ resolveInterval Ascending 3 C
    print $ resolveInterval Descending 3 C