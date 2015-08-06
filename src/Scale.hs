module Scale
( Scale
, createScale
, createMinorScale
) where

import Note
import Interval

type Scale = [Note]

createScale :: Note -> [Interval] -> Scale
createScale root intervals =
  root : map (resolveInterval root Ascending) intervals

createMinorScale :: Note -> Scale
createMinorScale root = createScale root [ majorSecond
                                         , minorThird
                                         , perfectFourth
                                         , perfectFifth
                                         , minorSixth
                                         , minorSeventh ]
