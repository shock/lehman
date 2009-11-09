%{
Welcome to LilyPond
===================

Congratulations, LilyPond has been installed successfully.

Now to take it for the first test run.

  1. Save this LilyPond file on your desktop with the name "test.ly".

  2. Pick it up from the desktop with your mouse pointer, drag and drop
     it onto the LilyPond icon.

  3. LilyPond automatically produces a PDF file from the musical scale
     below.

  4. To print or view the result, click on the newly produced file
     called

        test.PDF


That's it.

LilyPond's interface is text-based. Please read the documentation.

For more information, visit http://lilypond.org .
%}

\version "2.12.0"  % necessary for upgrading to future LilyPond versions.
\include "pop-chords.ly" 
\include "common.ly" 

\header{
  title = "Ahtcha Patcha Notcha"
}

\paper {
indent=0.
}

\layout {
  \context {
    \Lyrics
    \override LyricText #'font-size = #-1
  }
}

verseChords = \chordmode {
  d1. d1. d2. a2. d1. 
  d1. d1. d2. a2. d1. 
  g1. d1. a1. d1. 
  g1. d1. a1. d1. 
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

\relative c' {
  \time 6/8
  \key d \major
  
  d'4 d8 d4 d8 d4. fis4. 
  d4 d8 d4 d8 d4. fis4. 
  fis4. fis4 fis8 e4. e4 e8 d4 (e8) fis4 e8 d4. r4.

  d4 d8 d4 d8 d4. fis4. 
  d4 d8 d4 d8 d4. fis4. 
  fis4. fis4 fis8 e4. e4 e8 d4 (e8) fis4 e8 d4. r4.

  g2. (g2.) fis4. r4. r2.
  e2. (e2.) d4. r4. r2.

  g2. (g2.) fis4. r4. r2.
  e2. (e2.) d4. r4. r2.
}
\addlyrics {
Aht- cha pat- cha no- cha,
Aht- cha pat- cha no- cha,
Ay, mis a day, mis a day, mis a doe.

Aht- cha pat- cha no- cha,
Aht- cha pat- cha no- cha,
Ay, mis a day, mis a day, mis a doe.

Aaaah way, Aaaah way.
Aaaah way, Aaaah way.
}
>>
