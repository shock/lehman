
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Down On Grandpa's Farm"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  c1 c4 g c2 
  c1 c4 g c2 
  c1 g g c 
}

chorusChords = \chordmode {
  c1 c2 g g1 g2 c2 
}

<<
\new ChordNames { 
  \popChords
         \set chordChanges = ##t
  \set fontSize = 0
  \verseChords 
  \chorusChords
}

\new Staff 

\relative c'' {
  \time 4/4
  \key c \major

  c8 c c c c8 r16 g16 c8 d e4 d c2
  e8 e e e e8 r16 c16 e8 f g4 f e4 r8 
  g8
  g4 r8 g8 a8. g16 f8 e f4 
  \headCross f4 \headCross f4 
  r8 f8
  f4 r8 f8 g8. f16 e8 d e4 
  \headCross e4 \headCross e4 
  r8 g,8
  
  ^\chorus
  g16 g8 g16 g4 g'16 g8 g16 g8 g16 g a8 g f e d4 r4
  g,16 g8 g16 g4 g'16 g8 g16 g8 g16 g a8 g f d c2
  
}
\addlyrics {
  \override LyricText #'font-shape = #'normal
Down on Grand- pa’s farm there is a spot- ted dog,
Down on Grand- pa’s farm there is a spot- ted dog.
The dog it goes a lot like this: 
  \override LyricText #'font-shape = #'italic
arf arf!
  \override LyricText #'font-shape = #'normal
The dog it goes a lot like this: 
  \override LyricText #'font-shape = #'italic
arf arf!

  \override LyricText #'font-shape = #'normal
Oh, we’re on the way, we’re on the way,
on the way to Grand- pa’s farm.
We’re on the way,
we’re on the way,
on the way to Grand- pa’s farm.
}
>>
