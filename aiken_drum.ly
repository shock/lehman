
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Aiken Drum"
}

\paper {
indent=0.
}

songChords = {
  s2 c2 f2 c2 g2 c2 f2 c4 g4 c2
}

<<
\new ChordNames \chords { 
  \popChords
         \set chordChanges = ##t
  \set fontSize = 0
  \songChords 
  \songChords 
}

\new Staff 

\relative c' {
  \time 2/4
  \key c \major
  \tempo 4 = 104

  s4 s8. g'16 |
  e'8 e e c | f8. f16 f4 |
  e8. e16 e4 | c8. c16 c8. g16 |
  e'8 e e c | f8. f16 f8 g16 f |
  e8 c d b | c4 r4 
  r4 g'8^\chorus f |
  e8. e16 e8 c | f4 f8 d |
  e4 e8 c | d4 d8 g, |
  e'8. e16 e8 c | f8 f g f |
  e c d b | c2
}
\addlyrics {
There was a man lived in the moon, in the moon, in the moon.
There was a man lived in the moon, and his name was Ai- ken Drum.

And he played up- on the la- dle, the la- dle, the la- dle.
He played up- on the la- dle and his name was Ai- ken Drum.

}
>>
