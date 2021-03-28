arbans = \relative c'' { 
    \key c \major
    \time 4/4
    \partial 4
    g8\mf 8 ( 
    \bar "||"
    fs4 ) g8 8 ( f4 ) g8 8 ( |
    e4 ) g8 8 ( d4 ) g8 8 ( |
    c,4 ) g'8 8 ( b,4 ) <<
        \relative c'' { 
            g8 8 ( |
            c,1  ~ | 2. ) r4
        } 
        { 
            s8 s8\< | 
            s2. s4\ff | s2.\> s4\p
        }
    >>
    \bar "|." 
}

