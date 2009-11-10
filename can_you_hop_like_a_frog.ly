
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Can You Hop Like A Frog"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  s1 
  d4 d d d a a d d d d d d d a d d
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

\transpose c d \relative c'' {
  \time 4/4
  \key c \major
  s2. s8 g16 g 
  c4 c c8 c16 c c4 
  d4 d e8 d16 d c8 g16 g 
  c4 c c8 c16 c c8 c16 c
  e8 e16 d16 (d16) d8 r16 c2 
  
}
\addlyrics {
Can you hop, hop, hop like a frog.
Hop, hop, hop like a frog.
Can you hop, hop, hop like a frog.
Let me see you do it now.
}
>>
