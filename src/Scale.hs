module Scale
( Scale
, Degree
, createScale
, ionianScale
, dorianScale
, phrygianScale
, lydianScale
, mixolydianScale
, aeolianScale
, locrianScale
, majorScale
, minorScale
) where

import Note
import Interval

type Scale = [Note]
type Degree = Int

type Mode = Int

createScale :: [Interval] -> Note -> Scale
createScale intervals root =
  root : map (resolveInterval root Ascending) intervals


makeMode :: Mode -> Note -> Scale
makeMode mode root =
  take 7 $ drop (mode -1) $ cycle $ createScale
    [ majorSecond
    , majorThird
    , perfectFourth
    , perfectFifth
    , majorSixth
    , majorSeventh
    ] root

ionianScale :: Note -> Scale
ionianScale = makeMode 1

dorianScale :: Note -> Scale
dorianScale = makeMode 2

phrygianScale :: Note -> Scale
phrygianScale = makeMode 3

lydianScale :: Note -> Scale
lydianScale = makeMode 4

mixolydianScale :: Note -> Scale
mixolydianScale = makeMode 5

aeolianScale :: Note -> Scale
aeolianScale = makeMode 6

locrianScale :: Note -> Scale
locrianScale = makeMode 7

minorScale :: Note -> Scale
minorScale root =
  aeolianScale $ resolveInterval root Ascending minorThird

majorScale :: Note -> Scale
majorScale = ionianScale