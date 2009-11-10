
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Bend And Stretch"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  bes2. bes ees bes 
  ees bes f bes
  bes2. bes ees bes 
  ees bes f bes
}

bridgeChords = \chordmode {
  g4 b:m c e:m g b e2:m
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
  \time 3/4
  \key bes \major
  
  d2 bes4 f'2.
  ees4 f g | f2.
  g2 a4 | bes f d 
  ees2 f4 d2.

  d2 bes4 f'2.
  ees4 f g | f2.
  g4 a4 bes | bes f d 
  ees2 c4 bes2.
}
\addlyrics {
Bend and stretch, 
Reach for the stars.
There goes Ju- pi- ter, there goes Mars.
Bend and stretch,
Reach for the sky,
Stand- ing on tip- py toes oh so high.
}
>>
