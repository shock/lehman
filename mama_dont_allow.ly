
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Mama Don't Allow"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  e1 e e a e a e2 b e1
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
  \key e \major

  e16 e e e e8 e gis gis16 fis16 (fis) e16 e8 e2 r2
  e16 e e e e8 e gis gis16 fis16 (fis) e16 e8 fis2 g2
  gis8 e e cis e16 e e e gis4 
  e8 e16 e e8 cis8 e16 e8 cis16 (b4) 
  e16 e e e e8 e b b16 cis16 (cis) cis16 dis8 e2 r2
  
}
\addlyrics {
Ma- ma don’t al- low no ban- jo pic- kin’ 'round here.
Ma- ma don’t al- low no ban- jo pic- kin’ 'round here, oh.
We don’t care what Ma- ma don’t al- low,
We’re gon- na pick it an- y- how.
Ma- ma don’t al- low no ban- jo pic- kin’ 'round here.
}
>>
