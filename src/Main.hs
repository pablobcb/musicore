-- | Main entry point to the application.
module Main where

import Interval
-- | Notes
data Note = C | Db | D | Eb | E | F | Gb | G | Ab | A | Bb | B
          deriving (Show, Eq, Ord, Enum)

next :: Note -> Note
next B = C
next n = succ n

previous :: Note -> Note
previous C = B
previous n = pred n



-- | Scale
newtype Scale a = Scale [a]
          deriving (Show, Eq, Ord)

instance Functor Scale where
    fmap _ (Scale []) = Scale []
    fmap f (Scale (x:xs)) = Scale $ f x : fmap f xs

newtype Chord a = Chord [a]
          deriving (Show, Eq, Ord)



-- | The main entry point.
main :: IO ()
main = do
    print minorThird
