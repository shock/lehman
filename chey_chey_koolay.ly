
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Chey Chey Koolay"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  d
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
  \time 4/4
  \key c \major

  d4 d c8 d8 (d4)
  d4 d c8 d8 (d4)

  d8 d r8 c8 d4 c
  d8 d r8 c8 d4 c

  r8 g a g a4 a
  r8 g a g a4 a
  
  a8 a c a8 (r8) a8 (r4)
  a8 a c a8 (r8) a8 (r8) d,8

  d'4 c8 d8 (d4) r8 d,8
  d'4 c8 d8 (d4) r8 d,8

  d'4 c8 d8 (d8) 
  \headCross d8 (r8) 
  d,8
  d'4 c8 d8 (d8) 
  \headCross d8 (r4) 
  
}
\addlyrics {
  \override LyricText #'font-shape = #'normal
Chey, chey koo- lay,
  \override LyricText #'font-shape = #'italic
Chey, chey koo- lay,

  \override LyricText #'font-shape = #'normal
Chey, chey, ko- fi- sa,
  \override LyricText #'font-shape = #'italic
Chey, chey, ko- fi- sa,

  \override LyricText #'font-shape = #'normal
Ko- fi, su- lan- ga,
  \override LyricText #'font-shape = #'italic
Ko- fi, su- lan- ga,

  \override LyricText #'font-shape = #'normal
Ca- ca, sha- lan- ga,
  \override LyricText #'font-shape = #'italic
Ca- ca, sha- lan- ga,

  \override LyricText #'font-shape = #'normal
Koom- ma, dee- day.
  \override LyricText #'font-shape = #'italic
Koom- ma, dee- day.

  \override LyricText #'font-shape = #'normal
Koom- ma, dee- day.  Hey!
  \override LyricText #'font-shape = #'italic
Koom- ma, dee- day.  Hey!
}
>>
