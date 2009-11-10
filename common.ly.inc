chorus = \markup {
  \sans
  \fontsize #-4.5
% \pad-around #1.0 {CHORUS}
  CHORUS
}

\layout {
  \context {
    \Lyrics
    \override LyricText #'font-size = #-2.5
    \override LyricText #'font-name = #"Arial"
  }
}


