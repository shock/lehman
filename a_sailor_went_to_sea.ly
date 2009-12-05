
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "A Sailor Went To Sea"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  s2
  g2 g g d d d d g 

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
  \time 2/4
  \key g \major

  s4 s8 d
  g d e d b b b d g d e f fis fis fis d 
  fis d e d c c c c16 b a b c d e8 fis g g g4
  
}
\addlyrics {
A sai- lor went to sea, sea, sea,
to see what he could see, see, see,
and all that he could see, see, see,
was the bot- tom of the deep blue sea, sea, sea.
}
>>
