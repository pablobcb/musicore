module Scale
( Scale
, Degree
, makeScale
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

makeScale :: [Interval] -> Note -> Scale
makeScale intervals root =
  root : map (resolveInterval root Ascending) intervals

--chromaticScale :: Note -> Scale
--chromaticScale root = makeScale

makeMode :: Mode -> Note -> Scale
makeMode mode root =
  take (length scale) $ drop (mode -1) $ cycle scale
  where
    scale = makeScale
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