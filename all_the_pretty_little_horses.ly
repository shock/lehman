
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "All The Pretty Litte Horse"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  e2:m a:m g4 b e2:m
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
  \verseChords 
  \bridgeChords 
  \verseChords 
}

\new Staff 

\relative c' {
  \time 2/4
  \key e \minor

  e8 b'16 b (b4) | a8 g a4 |
  d8. c16 b a g fis | e4 e |
  e8 b' b4 | a8 g a4 |
  d8. c16 b a g fis | e4 e |
  
  d8 fis fis4 | g16 g b8 b4 |
  d8. c16 b (a) g fis | e4 e |
  e8 b'16 b (b4) | a8 g a4 |
  d8. c16 b a g fis | e4 e |

}
\addlyrics {
Hush- a- bye, don’t you cry,
Go to slee- py lit- tle ba- by.
When you wake, you shall have
All the pret- ty lit- tle hor- ses.

Black and bay, dap- ple and grey,
Coach and six lit- tle hor- ses,

Hush- a- bye, don’t you cry,
Go to slee- py lit- tle ba- by. 

}
>>
