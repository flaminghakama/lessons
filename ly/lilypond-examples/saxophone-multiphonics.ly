\version "2.24.0"


fingeringOne = \markup \center-align \line {
    "   "
    \center-column \pad-markup #1 {
        \translate #'(0 . 0) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (low-bes))
            (cc . (one two three four five six))
            (rh . ())
        )
    }
}

fingeringTwo = \markup \center-align \line {
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 0) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (b))
            (cc . (one two three four five))
            (rh . (low-c))
        )
    }
}

fingeringThree = \markup \center-align \line {
    "   "
    \center-column \pad-markup #1 {
        \translate #'(0 . 0) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (b))
            (cc . (one two three four five six))
            (rh . (low-c ees))
        )
    }
}

fingeringFour = \markup \center-align \line {
    "   "
    \center-column \pad-markup #1 {
        \translate #'(0 . 0) \override #'(size . 0.6) \woodwind-diagram #'saxophone #'(
            (lh . (low-bes))
            (cc . (one two three four five six))
            (rh . (low-c ees))
        )
    }
}

notes = \relative c' { 

    <>_\fingeringOne
    <d bes' d bes' ees>1

    <>_\fingeringTwo
    <e f' ces'>

    <>_\fingeringThree
    <ees d' b' e>

    <>_\fingeringFour
    <ees d' bes' e>  
}


%  Doing it by hand 

\score {
    <<
        \notes
    >>
}
