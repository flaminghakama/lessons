
\version "2.19.83"

pattern = \relative c''' {
    \key f \major
    r16 [ b8-^ 16-^ ]  r16 [ b16-^ 8-^ ]  r16 [ b8-^ 16-^ ]  r [ b16-^ 8-^ ]
}

\score {
    <<
        \new Staff << 
            \pattern 
        >>
    >>
    \layout { }
}

