\version "2.22.0"


\layout {
    \context {
        \type Engraver_group
        \name ChordNamesRests
        \consists Chord_name_engraver
        \consists Rest_engraver
        noChordSymbol = ##f
        \consists Axis_group_engraver
    }
    \context {
        \Score
        \accepts ChordNamesRests
    }
}

myMusic = \relative c'' {
    c4 d e d
    f4 r g r
    c,1
}
myChords = \chordmode {
    \override Rest.Y-offset = #1
    c4 d e d
    f4 r g r
    c,1
}

structure = {
    \repeat volta 2 { 
        s1
    }
    \alternative {
        { s1 }
        { s1 }
    }
}

\score { 
    <<
        \new ChordNamesRests \transpose c c { 
            \myChords
        }
        \new Staff <<
            \structure
            \myMusic
        >>
    >>
}


