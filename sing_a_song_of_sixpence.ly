
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Sing A Song Of Sixpence"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  g1 d d g
  g1 d d d2 g2
}

chorusChords = \chordmode {
}

<<
\new ChordNames { 
  \popChords
         \set chordChanges = ##t
  \set fontSize = 0
  \verseChords 
}

\new Staff 

\relative c'' {
  \time 4/4
  \key g \major

  d8 e d b g4 g'8 fis
  fis fis a, b c2
  c8 d c a fis4 e'4
  d4 g,8 a b4 r4
  d8 e d b g4 g'8 fis
  fis fis a, b c2
  c8 d e d c b a b c d e fis g2
}
\addlyrics {
Sing a song of six- pence,
A po- cket full of rye.
Four and twen- ty black- birds,
baked in a pie.
When the pie is o- pen,
the birds be- gan to sing,
Was- n't that a dain- ty dish,
to set be- fore the King?
}
>>
