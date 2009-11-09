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
  title = "All The Pretty Litte Horse"
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

songChords = \chordmode {
  e2:m a:m g4 b e2:m
}

<<
\new ChordNames { 
  \popChords
         \set chordChanges = ##t
  \set fontSize = 0
  \songChords 
  \songChords 
}

\new Staff 

\relative c' {
  \time 2/4
  \key e \minor
  \tempo 4 = 104

  e8 b' b4 | a8 g a4 |
  d8. c16 b a g fis 
}
\addlyrics {
  Hush now baby
}
>>
