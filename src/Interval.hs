module Interval
( Interval
, Direction (..)
, resolveInterval
, minorSecond
, majorSecond
, minorThird
, majorThird
, diminishedFourth
, perfectFourth
, augmentedFourth
, diminishedFifth
, perfectFifth
, augmentedFifth
, minorSixth
, majorSixth
, minorSeventh
, majorSeventh
, octave
, minorNinth
, majorNinth
, diminishedEleventh
, perfectEleventh
, augmentedEleventh
, minorThirteenth
, majorThirteenth
, i, ii, iii, iv, v, vi, vii
) where

import Note

type Interval = Int -- measured in semitones

data Direction = Ascending | Descending

minorSecond :: Interval
minorSecond = 1

majorSecond :: Interval
majorSecond = 2

minorThird :: Interval
minorThird  = 3

majorThird :: Interval
majorThird = 4

diminishedFourth :: Interval
diminishedFourth = majorThird

perfectFourth :: Interval
perfectFourth = 5

augmentedFourth :: Interval
augmentedFourth = 6

diminishedFifth :: Interval
diminishedFifth = augmentedFourth

perfectFifth :: Interval
perfectFifth = 7

augmentedFifth :: Interval
augmentedFifth = 8

minorSixth :: Interval
minorSixth = augmentedFifth

majorSixth :: Interval
majorSixth = 9

minorSeventh  :: Interval
minorSeventh = 10

majorSeventh :: Interval
majorSeventh = 11

octave :: Interval
octave = 12

minorNinth :: Interval
minorNinth = minorSecond

majorNinth :: Interval
majorNinth = majorSecond

diminishedEleventh :: Interval
diminishedEleventh = diminishedFourth

perfectEleventh :: Interval
perfectEleventh = perfectFourth

augmentedEleventh :: Interval
augmentedEleventh = augmentedFourth

minorThirteenth :: Interval
minorThirteenth = minorSixth

majorThirteenth :: Interval
majorThirteenth = majorSixth

resolveInterval :: Note -> Direction -> Interval -> Note
resolveInterval note _ 0 = note

resolveInterval note direction interval =
      resolveInterval note' direction interval'
        where
          note' = (case direction of
              Ascending  -> next
              Descending -> previous) note

          interval' = interval - 1

i :: Int
i = 1

ii :: Int
ii = 2

iii :: Int
iii = 3

iv :: Int
iv = 4

v :: Int
v = 5

vi :: Int
vi = 6

vii :: Int
vii = 7