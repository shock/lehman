
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Wind The Bobbin"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  bes2 bes bes bes ees bes f bes bes
  bes2 bes bes bes ees bes f bes bes
  f f bes bes ees b f f   
  bes2 bes bes bes ees bes f bes bes

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
  \key bes \major

  f4 f f8. d16 bes8 d 
  f4 f f8. d16 bes8 d 
  ees2 d c4 c bes2 r2  
  
  f'4 f f8. d16 bes8 d 
  f4 f f8. d16 bes8 d 
  ees2 d c4 c bes2 r2  
  
  c4 c f, f bes8 d8 r8 f8 r2
  ees8 ees r4 d d bes f' f r4
  
  f4 f f8. d16 bes8 d 
  f4 f f8. d16 bes8 d 
  ees2 d c4 c bes2 r2  
  
}
\addlyrics {
Wind, wind, wind the bob- bin,
wind, wind, wind the bob- bin,
pull, pull,
tap, tap, tap.

Wind, wind, wind the bob- bin,
wind, wind, wind the bob- bin,
pull, pull,
tap, tap, tap.

Now our dai- ly work is done,
come on now lets have some fun.

Wind, wind, wind the bob- bin,
wind, wind, wind the bob- bin,
pull, pull,
tap, tap, tap.
}
>>
