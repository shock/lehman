\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "The Bear Went Over The Mountain"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  s2. g4. g c g d d g g g g c c c c d d g g
  g c g g g c g g
  g g c c c c d d g
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
  \time 6/8
  \key g \major
  
  s4. s8. g
  b4 b8 b8 a b c4. b4 b8
  a4 a8 a g a b4. g4 g8
  b4 b8 b a b c4 (d8) e4. (e4. e8) r8 e8
  d4 d8 b4 a8 g4. r4 g8
  d'4 d8 e4 e8 d4. r4 b8 
  d4 d8 e4 e8 d4. r4 c8 
  b4 b8 b a b c4 (d8) e4. (e4. e8) r8 e8
  d4 d8 b4 a8 g4. r4.  
}
\addlyrics {
The bear went ov- er the moun- tain,
The bear went ov- er the moun- tain,
The bear went ov- er the moun- tain,
To see what he could see.

To see what he could see,
To see what he could see.

The bear went ov- er the moun- tain,
To see what he could see.
}
>>
