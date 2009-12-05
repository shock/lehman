
\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly.inc" 
\include "common.ly.inc" 

\header{
  title = "Way Up In The Sky"
}

\paper {
indent=0.
}

verseChords = \chordmode {
  bes2. bes bes bes bes f f f bes bes
  bes bes bes bes f f ees bes bes bes bes 
  bes bes bes bes bes bes f bes
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
  \time 3/4
  \key bes \major

  f2. 
  f4 d g f2 d4 d8 bes r4 ees d2 d4
  c a d c2 c4 c8 a r4 d bes2. r4 f' f
  f4 d g f2 bes,8 c d4 bes ees d2 d4
  c8 a r4 d c2. bes4 a g f2. r2. r f'2.
  f4 d (g) f2 d4 d bes ees d2 bes4
  f' bes, bes f' bes, bes f8 f8 r4 a 
  bes2.
  
  
}
\addlyrics {

Way up in the sky,
the lit- tle birds fly,

while down in their nest,
the lit- tle birds rest.
 
With a wing on the left,
and a wing on the right,
the lit- tle birds sleep,
 all through the night...

The sun comes up,
the dew falls a- way,
      
“Good mor- ning!
Good mor- ning!”,
the lit- tle birds say.
}
>>
