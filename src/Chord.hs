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
  [ scale !! (i   + degree')
  , scale !! (iii + degree')
  , scale !! (v   + degree')
  ]
  where degree' = degree - 2

makeTetrad :: Scale -> Degree -> Chord
makeTetrad scale degree =
  makeTriad scale degree ++ [scale !! (vii + degree - 2)]

makeChord :: Note -> [Interval] -> Chord
makeChord root intervals =
  root : map (resolveInterval root Ascending) intervals

majorTriad :: Note -> Chord
majorTriad root = makeTriad (majorScale root) i

minorTriad :: Note -> Chord
minorTriad root = makeTriad (minorScale root) i

--TODO: diminished chords