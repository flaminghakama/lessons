\version "2.24.0"
\language "english"

global = {
  \time 12/8
  \key f \major
}

rightHand = \relative {
  \global 
  d''4.~\startTrillSpan d16\stopTrillSpan c bf a g f  bf8 g' e!  c bf g' | 
  \noBreak 
  a,16 g f e f a  d, f d bf g e'  f bf, a g a c  f,4 r8 |
}

leftHand = \relative {
  \global
  \clef bass
  f16 d bf a bf d  f, bf d f e! d  e c bf a bf c  g bf e g f e |
  f8 a, d  bf8.\trill a32 bf c8  f,4 r8  r16 c' a c f,8 |
}

\score {
  \new PianoStaff <<
    \new Staff \rightHand
    \new Staff \leftHand
  >>
  \layout {
    indent = 0
    \context {
      \Score
      % defaults = #'(3.26 3.5 3.6)
      \override Stem.details.beamed-lengths = #'(3.5 4.1)
      % defaults = #'(1.83 1.5 1.25)
      %\override Stem.details.beamed-minimum-free-lengths = #'(1.83 3.33)
      % defaults = #'(1.0 0.5 0.25)
      %\override Stem.details.stem-shorten = #'(1.0 0.5 0.25)
    }
  }
}


\score {
  \new PianoStaff <<
    \new Staff {
      \override Stem.length-fraction = #(magstep 1.2)
      \rightHand
    }
    \new Staff {
      \override Stem.length-fraction = #(magstep 1.2)
      \leftHand
    }
  >>
  \layout {
    indent = 0
    \context {
      \Score
      % defaults = #'(3.26 3.5 3.6)
      \override Stem.details.beamed-lengths = #'(3.5 4.1)
      % defaults = #'(1.83 1.5 1.25)
      %\override Stem.details.beamed-minimum-free-lengths = #'(1.83 3.33)
      % defaults = #'(1.0 0.5 0.25)
      %\override Stem.details.stem-shorten = #'(1.0 0.5 0.25)
    }
  }
}