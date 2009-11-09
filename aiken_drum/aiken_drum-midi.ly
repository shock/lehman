% Lily was here -- automatically converted by /usr/bin/midi2ly from aiken_drum.mid
\version "2.7.18"


trackAchannelA = \relative c {
  
  % [COPYRIGHT_NOTICE] Copyright © 2006 by 
  
  % [TEXT_EVENT] Bill Doughty
  
  \time 4/4 
  

  \key c \major
  
  \tempo 4 = 104 
  s8*7 g''16 |
  % 2
  e' e e c f8 f f8 s8 |
  % 3
  e e e8 s8 d d d s8 g,16 |
  % 4
  e' e e c f8 f f g f |
  % 5
  e c d b c8. 
}

trackA = <<
  \context Voice = channelA \trackAchannelA
>>


\score {
  <<
    \context Staff=trackA \trackA
  >>
}
