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

\header{
  title = "Row Your Boat"
}

\paper {
indent=0.
}

<<
\new ChordNames \chords { 
  \popChords
         \set chordChanges = ##t
  \set fontSize = 0
  c2.*6 c4. g c2.
}

\new Staff 

\relative c' {
  \time 6/8
  c4. c 
  c4 d8 e4.
  e4 d8 e4 f8 
  g2.
  c8 c c g g g
  e e e c c c
  g'4 f8 e4 d8
  c2.
}
\addlyrics {
 Row, row,
 row your boat,
 gent ly down the 
 stream.
 Mer ri ly, mer ri ly,
 mer ri ly, mer ri ly,
 Life is but a 
 dream.
}
>>
