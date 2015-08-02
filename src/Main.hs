-- | Main entry point to the application.
module Main where

-- | Notes
data Note = C | Db | D | Eb | E | F | Gb | G | Ab | A | Bb | B
          deriving (Show, Eq, Ord, Enum)

next :: Note -> Note
next B = C
next n = succ n

previous :: Note -> Note
previous C = B
previous n = pred n

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
    let note = previous C
    print note
