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
  title = "Ants Go Marching" 
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
  s2. d1.:m c d1.:m f f2. c d:m a d4.:m c bes a d1.:m
  d2.:m d2.:m a d:m a
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
  \key d \minor
  
  s4. s4 a'8 |
  d4 d8 d4 e8 f4 e8 f4 d8 c4.  r4 a8 c4.  r4 a8 
  d4 d8 d4 e8 f4 e8 f4 g8 a4.  r4 f8 a4.  r4 f8 
  a4 a8 a8 (g8) f8 g4 g8 g4 e8 f8 f8 f8 f8 (e8) d8 e4 e8 e8 f8 g8
  a4. g4. f4. e4. d4. r8 a8 c8 d4. r8 a8 c8 d4. r8 a8 c8 
  d4. a4. b4. cis4. d4. a4. b4. cis4. 


}
\addlyrics {
The ants go mar- ching one by one, hur- rah, hur- rah.
The ants go mar- ching one by one, hur- rah, hur- rah.
The ants go mar- ching one by one,
The lit- tle one stops to suck his thumb.
And they all go mar- ching 
Down to the ground,
To get out of the rain,
BOOM! BOOM! BOOM!
BOOM! BOOM! BOOM! BOOM!
}
>>
