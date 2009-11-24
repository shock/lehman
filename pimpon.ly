
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Pimpón"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  f
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
  \key f \major

  s2 s4 s8 c8
  f c a bes c4 c8 c8
  f c a bes c4 r8 c8
  \break
  f, g a bes c4 c8 d8
  c bes a g16 g f4 r4
}
\addlyrics {
Pim- pón es un mu- ñe- co,
con ma- nos de car- tón.
Se la- va la ca- ri- ta, 
con a- gua y con ja- bón.
}
>>
