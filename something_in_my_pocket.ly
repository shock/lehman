
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Something In My Pocket"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  s2
  c2 c f f g g g c c 
  c2 c f f g g g c c 
  c2 c c g c f c4 g c2 c
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

  s4 g8 g
  c c c c c c b c d8. d16 a8 a d4 r8 b8
  b8. b16 b8 g b b b b16 a g8 g a b c4 r4 r4 r8 g8
  c8. c16 b8 c c8. c16 b8 c d8. d16 a8 a d4 r8 d16 c
  b8 b b8. g16 b8 b b b16 a g8 g a b c4 r4 r2
  e8. e16 c8. c16 g8 c (c4)
  e8. e16 c8. c16 d8 d (d4)
  e8. e16 c8. c16 f8 f (f8) f
  e c d b c2
}
\addlyrics {
I’ve got some- thing in my pock- et
that be- longs a- cross my face.
I keep it ve- ry close to me
in a most con- ven- ient place.
I’m sure you could- n’t guess it
if you guessed a long, long, while.
So I’ll take it out and put it on,
it’s a great big hap- py smile!

I’m so ve- ry hap- py, 
I’m so ve- ry hap- py, 
I’m so ve- ry hap- py, 
Ha, ha, ha, ha, ha, ha!
}
>>
