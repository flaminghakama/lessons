<<<<<<< HEAD
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
=======
\version "2.19.81"

guitarNotes = \relative c' {
  a8 a' <c e> a
  d,8 a' <d f> a
}

bassNotes = \relative c' { 
  a4 g d a
}

\book {
    \score {
        <<
            \new StaffGroup <<
                \new Staff {
                    \clef treble
                    \guitarNotes
                }
                \new TabStaff \guitarNotes
            >>
            \new StaffGroup <<
                \new Staff {
                    \clef bass
                    \bassNotes
                }
                \new TabStaff \bassNotes
            >>
        >>
    }
>>>>>>> 235ebc7688568cd2298b66ce6b2c1f38a382973b
}
