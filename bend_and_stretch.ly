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
  title = "The Bear Went Over The Mountain"
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
  s2. g4. g c g d d g g g g c c c c d d g g
  g c g g g c g g
  g g c c c c d d g
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
  \time 6/8
  \key g \major
  
  s4. s8. g
  b4 b8 b8 a b c4. b4 b8
  a4 a8 a g a b4. g4 g8
  b4 b8 b a b c4 (d8) e4. (e4. e8) r8 e8
  d4 d8 b4 a8 g4. r4 g8
  d'4 d8 e4 e8 d4. r4 b8 
  d4 d8 e4 e8 d4. r4 c8 
  b4 b8 b a b c4 (d8) e4. (e4. e8) r8 e8
  d4 d8 b4 a8 g4. r4.  
}
\addlyrics {
The bear went ov- er the moun- tain,
The bear went ov- er the moun- tain,
The bear went ov- er the moun- tain,
To see what he could see.

To see what he could see,
To see what he could see.

The bear went ov- er the moun- tain,
To see what he could see.
}
>>
