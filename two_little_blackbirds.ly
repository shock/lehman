
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Two Little Blackbirds"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  bes4 bes bes bes bes bes bes g:m
  bes bes bes bes 
  g:m g:m g:m bes
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

  f8 f16 f g8 f d16 d d d bes4
  f'8 f g g16 f d d d (bes) g4
  f'16 f f8 g4 d16 d d8 bes4
  g8 bes8 bes4 g8 bes8 bes4
}
\addlyrics {
Two lit- tle black- birds sit- ting on a hill,
One named Jack and the o- ther named Jill,
Fly a- way Jack.
Fly a- way Jill.
Come back Jack.
Come back Jill.
}
>>
