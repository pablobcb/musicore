module Note
( Note (..)
, next
, previous
) where

data Note = C | Db | D | Eb | E | F | Gb | G | Ab | A | Bb | B
          deriving (Show, Eq, Ord, Enum)

next :: Note -> Note
next B = C
next n = succ n

previous :: Note -> Note
previous C = B
previous n = pred n
