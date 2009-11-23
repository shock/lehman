
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Little White Duck"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  s2 c4 c c g g g g c 
  f f c c d d g g
  c c c g g g c c
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
  \key c \major

  s4 s8 g16 g 
  c c e8 c4 e16 e d c b d16 r16 g,16
  b b d8 b4 d16 d c b c e16 r16 c16
  f8 a f a16 a g8 e e4
  d8 d d e16 fis g8 g, g16 g16 a b
  c c e8 c4 e16 e d c b d16 r8
  g8 r8 b, r c8 r8 r4
  
}
\addlyrics {
There's a lit- tle white duck,
sit- ting in the wa- ter,
a lit- tle white duck,
do- ing what he ought- ta.
He took a bite of the li- ly pad,
flapped his wings and he said,
I'm glad, that I'm a lit- tle white duck,
sit- ting in the wa- ter,
quack, quack, quack.
}
>>
