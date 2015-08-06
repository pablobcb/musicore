-- | Main entry point to the application.
module Main where

import Interval
import Note
import Scale


-- | The main entry point.
main :: IO ()
main = do
    mapM print $ createMinorScale C
    return ()