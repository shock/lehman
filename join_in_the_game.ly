
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Join In The Game"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  s2. c4. f4. c c c4. f4. c c
  c c f f g g c c
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
  \time 6/8
  \key c \major

  s4. s4 g'8
  g8. a16 g8 f e d c4 \headCross c8 \headCross c4 g'8
  g8. a16 g8 f e d c4 \headCross c8 \headCross c4 g'8
  c8 c c8 g8 a8 bes8
  a4. r4 a8 
  g8. a16 g8 f e d 
  c4 \headCross c8 \headCross c4 r8
   
}
\addlyrics {
Let eve- ry- one clap hands like me. 
  \override LyricText #'font-shape = #'italic
clap clap
  \override LyricText #'font-shape = #'normal
Let eve- ry- one clap hands like me. 
  \override LyricText #'font-shape = #'italic
clap clap
  \override LyricText #'font-shape = #'normal
Come on and join in- to the game.
You’ll find that it’s al- ways the same. 
  \override LyricText #'font-shape = #'italic
clap clap
}
>>
