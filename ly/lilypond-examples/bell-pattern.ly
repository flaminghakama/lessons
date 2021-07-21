
\version "2.19.83"

    
pattern = \drummode {
    \time 12/8
    <>^"A"
    sn4 sn8  r sn sn  r sn4  sn4 8 | 
    <>^"B"
    sn8 [ r sn ]  r sn sn  r sn r  sn [ r sn ] \break
}

\score {
    <<
        \new DrumStaff \with {
            \override StaffSymbol.line-count = #1
        } << 
            \pattern 
        >>
    >>
    \layout { }
}

