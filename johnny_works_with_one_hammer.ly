
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Johnny Works With One Hammer"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  c2. c2. g2. c2. c2. g2. c2.
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
  \time 6/8
  \key c \major

  c4 c8 c4 e8 
  g4 c,8 c4.
  d4 d8 g4.
  e4 c8 c4.
  \break
  c4 c8 c4 e8 
  g4 c,8 c4.
  d4 d8 g4 g8
  c,4. r4.
  
   
}
\addlyrics {
John- ny works with one ham- mer, 
one ham- mer, one ham- mer.
John- ny works with one ham- mer,
Then he works with two.
}
>>
