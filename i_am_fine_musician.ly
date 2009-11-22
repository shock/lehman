
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "I Am A Fine Musician"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  s2 
  c2 c g c c c g c
  f c f c c
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

   s4 s8 g8
   c8 c16 e16 (e8) e g4 e8 e8
   f8 f d d c4 r8 g8 
   c8 c16 e16 (e8) e g8 g e4 
   f8 f d d c4 r8 e8

   f16 f16 (f8) d8 d8
   e16 e16 (e8) c8 e8
   f8 (f16) f16 d8 d8
   e16 e16 (e8) c4 r2
   
   
}
\addlyrics {
I am a fine mu- si- cian,
I come from far a- way.
And e- very- bo- dy fol- lows me,
Just to hear me play,

My rhy- thm sticks,
My rhy- thm sticks,
They love to hear my rhy- thm sticks.

}
>>
