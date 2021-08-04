\version "2.19.83"

voltaAllXButLast = \markup { \text \italic \large { All X but last } }
voltaLast = \markup { \text \italic \large { Last X } }

structure = \relative c' { 
    s1*4 \break
    \mark "Play 5X"
    \repeat volta 5 { 
        s1*4 \break
        s1*3 
    }
    \alternative { 
        {
            \set Score.repeatCommands = #(list (list 'volta voltaAllXButLast))
            s1 
        }
        {
            \set Score.repeatCommands = #(list (list 'volta #f) 'end-repeat (list 'volta voltaLast))
            s1 
            \bar "||"
        }

    }
}

melody = \relative c'' { 
    e1 d c b ||
    a1 b c d 
    e f g gis || a ||
}

\score {
    <<
        \new Staff <<
            \structure
            \melody
        >>
    >>
}
