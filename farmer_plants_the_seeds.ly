
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "The Farmer Plants The Seeds"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  s2. c1. c c g2. c2.
}

chorusChords = \chordmode {
  c1. c2. g g1. g2. c2. 
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
  
  s4. s4 
  g8 c4 c8 c4 c8 c4. (c4)
  d8 e4 e8 e4 e8 e4. r4.
  g4. g4 a8 g4 e8 c4 d8 e4 e8 d4 d8 c4. r4.

  
}
\addlyrics {
The far- mer plants the seeds,
the far- mer plants the seeds.
Hi, Ho, the Der- ry- o,
the far- mer plants the seeds.
}
>>
