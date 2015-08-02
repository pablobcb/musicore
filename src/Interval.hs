module Interval
( Interval
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
) where

-- | Intervals
type Interval = Int -- measured in semitones

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