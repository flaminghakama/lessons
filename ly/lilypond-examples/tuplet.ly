
\version "2.19.83"

    
pattern = \drummode {
    \time 4/4
    \tuplet 6/4 { 
        sn4 
        sn8 [ 8 ] 
        \tuplet 7/4 4 {
            sn8 [ 16. ] ~
        }
        \tuplet 7/4 4 {
            sn32 [ 16 16 16 ] 
        }
        sn16 [ 16 16 16 ]
        \tuplet 5/4 4 { 
            sn16 [ 16 16 16 16 ]
        }
    }
    \bar "||"
}

\score {
    <<
        \new DrumStaff \with {
            \override StaffSymbol.line-count = #1
        } << 
            \numericTimeSignature
            \pattern 
        >>
    >>
    \layout { }
}

