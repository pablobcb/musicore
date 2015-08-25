module Chord
( makeTriad
, makeTetrad
, makeChord
, majorTriad
, minorTriad
) where

import Note
import Scale
import Interval

type Chord = [Note]

makeTriad :: Scale -> Degree -> Chord
makeTriad scale degree =
  [ scale !! (0 + degree - 1)
  , scale !! (2 + degree - 1)
  , scale !! (4 + degree - 1)
  ]

makeTetrad :: Scale -> Degree -> Chord
makeTetrad scale degree =
  makeTriad scale degree ++ [scale !! (6 + degree - 1)]

makeChord :: Note -> [Interval] -> Chord
makeChord root intervals =
  root : map (resolveInterval root Ascending) intervals

majorTriad :: Note -> Chord
majorTriad root = makeChord root [majorThird, perfectFifth]

minorTriad :: Note -> Chord
minorTriad root = makeChord root [minorThird, perfectFifth]