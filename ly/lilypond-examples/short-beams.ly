\version "2.24"
\include "english.ly"


shortBeams = { 
    \override Stem.length-fraction = #(magstep 0.5) 
}
normalBeams = { 
    \override Stem.length-fraction = #(magstep 1.2) 
}

short = \relative c' {
  \time 6/8
  \override Stem.length-fraction = #(magstep 0.5) 
  s2.*4 |

  \section
  s4. s4 d8 | 
  d8 b cs s4. |
  s4. s4 c8 ~ | 
  c8 a b \laissezVibrer 
}

long = \relative c' {
  \time 6/8
  \override Stem.length-fraction = #(magstep 1.2) 

  e'4 d8 cs4 d8 | 
  d8 b cs d e e | 
  d4 c8 b4 c8 ~ | 
  c8 a b ~ 8 d c |
  
  \section
  e4 d8 cs4 d8 |
  s4. d8 e8 e8 |
  d4 c8 b4 s8  | 
  s4. b8 d c
}

<<
    \short 
    \long
>>