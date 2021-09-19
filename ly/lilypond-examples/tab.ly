% LilyBin

songChords = \chordmode { c1 d:m }

\score {
    <<
        \new ChordNames \songChords
        \new Staff {
            \clef "treble_8"
            <c e g c' e'>1^\markup {
                \fret-diagram "6-x;5-3;4-2;3-o;2-1;1-o;"
            }
            <d a d' f'>1^\markup {
                \fret-diagram "6-x;5-x;4-o;3-2;2-3;1-1;"
            }
        }
        \new ChordNames \songChords
        \new Staff {
            \clef bass
            <c e g>1^\markup {
                \fret-diagram "w:4;4-x;3-3;2-2;1-o;"
            }
            <d a>1^\markup {
                \fret-diagram "w:4;4-x;3-x;2-o;1-2;"
            }
        }
    >>
    \layout{}
    \midi{}
}
