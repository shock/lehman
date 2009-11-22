
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Five Green Apples"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  bes1 f2 bes2 
  bes1 ees2 bes2 
  ees2 bes2 c2 bes1
  bes1 f2 bes1 
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

   bes8 bes16 bes16 (bes8) c8 
   d8 d16 d16 (d16) bes16 (bes8) 
   c8 c16 bes16 (bes8) a8 
   bes8 r8 r4

   d8 d16 d16 (d8) ees8 
   f8 f16 f16 (f16) d16 (d8) 
   ees8 g16 f16 (f8) ees8 
   d8 r8 bes8 bes
   
   g'8 r8 g4 f16 d16 (d8) r8 d8
   c8 c d e f2 r2
  
   bes,4 bes bes16 f'16 (f8) r8 ees8
   d8 bes c a bes2 r2
}
\addlyrics {
Far- mer Brown had five green ap- ples,
hang- ing on the tree.
Far- mer Brown had five green ap- ples,
hang- ing on the tree.
Then he picked one ap- ple,
and ate it hun- gri- ly.
Four green ap- ples, 
a- hang- ing on the tree.
}
>>
