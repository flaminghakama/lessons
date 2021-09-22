\version "2.19.83"

\relative c'' {
    \override Staff.TimeSignature.stencil = #(lambda (grob)
        (parenthesize-stencil (ly:time-signature::print grob) 0.1 0.4 0.4 0.1 ))
    \compoundMeter #'((3 4) (6 8))
    a4 b8 c d4
}