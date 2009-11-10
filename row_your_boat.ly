\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Row Your Boat"
}

\paper {
indent=0.
}

<<
\new ChordNames \chords { 
  \popChords
         \set chordChanges = ##t
  \set fontSize = 0
  c2.*6 c4. g c2.
}

\new Staff 

\relative c' {
  \time 6/8
  c4. c 
  c4 d8 e4.
  e4 d8 e4 f8 
  g2.
  c8 c c g g g
  e e e c c c
  g'4 f8 e4 d8
  c2.
}
\addlyrics {
 Row, row,
 row your boat,
 gent ly down the 
 stream.
 Mer ri ly, mer ri ly,
 mer ri ly, mer ri ly,
 Life is but a 
 dream.
}
>>
