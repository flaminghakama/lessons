
\version "2.19.83"

    
\relative {
  \compoundMeter #'((1 4) (3 8))
  \repeat unfold 5 c'8 \repeat unfold 10 c16
}

\relative {
  \compoundMeter #'((1 4 3 8))
  \repeat unfold 5 c'8 \repeat unfold 10 c16
}

