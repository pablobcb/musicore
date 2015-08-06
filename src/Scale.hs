module Scale
( Scale
, createScale
, createMinorScale
, createMajorScale
) where

import Note
import Interval

type Scale = [Note]

createScale :: [Interval] -> Note -> Scale
createScale intervals root =
  root : map (resolveInterval root Ascending) intervals

createMajorScale :: Note -> Scale
createMajorScale = createScale [ majorSecond
                               , majorThird
                               , perfectFourth
                               , perfectFifth
                               , majorSixth
                               , majorSeventh
                               ]

createMinorScale :: Note -> Scale
createMinorScale = createScale [ majorSecond
                               , minorThird
                               , perfectFourth
                               , perfectFifth
                               , minorSixth
                               , minorSeventh ]
