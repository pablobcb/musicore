-- | Main entry point to the application.
module Main where

import Interval
import Note
import Scale
import Chord


-- | The main entry point.
main :: IO ()
main = do
    print $ makeTriad (minorScale C) iv
    print $ makeTetrad (majorScale C) v
    print $ makeChord C [3, 7]
    print $ majorTriad A
    return ()