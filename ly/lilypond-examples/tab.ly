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
}
