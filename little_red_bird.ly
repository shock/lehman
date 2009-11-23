
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Little Red Bird"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  c1 g2 c2 c1 g2 c2 
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

  c16 e16 (e16) g16 (g8) g8 
  a8 g e4
  g8 f d4
  a'8 g e4
  \break
  c16 e16 (e16) g16 (g8) g8 
  a8 g e4
  g16 g16 (g16) d16 (d8) e8
  c4 r4
}
\addlyrics {
Lit- tle red bird
In the tree, in the tree, in the tree.
Lit- tle red bird in the tree,
Sing a song for me.
}
>>
