\version "2.19.81"

myChords = \chordmode { 
    c1 | d1:m9 | g:13 | g:m7 |
}

\score {
    <<
        \new ChordNames {
            \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 3
            \myChords 
        }
        \new Staff { c''1 d''1 e''1 f'' }     
    >>
}
\score {
    <<
        \new ChordNames {
            \myChords 
        }
        \new Staff { c''1 d''1 e''1 f'' }     
    >>
}
