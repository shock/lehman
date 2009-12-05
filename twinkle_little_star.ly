
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Twinkle Little Star"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  d4 d g d g d a d
  d g d a d g d a
  d4 d g d g d a d
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
  \key d \major

  d,8 d a' a b b a4
  g8 g fis fis e e d4
  a'8 a g g fis fis e4
  a8 a g g fis fis e4
  d8 d a' a b b a4
  g8 g fis fis e e d4
}
\addlyrics {

}
>>
