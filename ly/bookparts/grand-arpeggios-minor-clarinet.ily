
\bookpart {
    \header {
        title = "Grand Arpeggios for Saxophone"
        subtitle = "Minor - Dominant 7th"
    }

    % No Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "A Minor (E Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c c { 
                \grandArpeggioMinorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c' c \grandArpeggioMinorTwo
            }
        >>
    }

    % 1 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "E Minor (B Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c g { 
                \grandArpeggioMinorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c' g \grandArpeggioMinorTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "D Minor (A Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c f { 
                \grandArpeggioMinorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c f, \grandArpeggioMinor
            }
        >>
    }

    % 2 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "B Minor (F# Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c d { 
                \grandArpeggioMinorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c' d \grandArpeggioMinorTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "G Minor (D Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c bf' { 
                \grandArpeggioMinorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c'' bf \grandArpeggioMinorTwo
            }
        >>
    }

    % 3 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "F# Minor (C# Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c a { 
                \grandArpeggioMinorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c'' a \grandArpeggioMinorTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "C Minor (G Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c ef { 
                \grandArpeggioMinorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c ef, \grandArpeggioMinorTwo
            }
        >>
    }

    % 4 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "C# Minor (G# Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c e { 
                \grandArpeggioMinorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c e, \grandArpeggioMinor
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "F Minor (C Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c af { 
                \grandArpeggioMinorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c'' af \grandArpeggioMinorTwo
            }
        >>
    }

    % 5 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "G# Minor (D# Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c b' { 
                \grandArpeggioMinorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c'' b \grandArpeggioMinorTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Bb Minor (F Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c df { 
                \grandArpeggioMinorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c df, \grandArpeggioMinorTwo
            }
        >>
    }

    % 6 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "D# Minor (A# Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c fs { 
                \grandArpeggioMinorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c fs, \grandArpeggioMinor
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Eb Minor (Bb Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c gf { 
                \grandArpeggioMinorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c gf, \grandArpeggioMinor
            }
        >>
    }

    % 7 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Ab Minor (Eb Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c cf { 
                \grandArpeggioMinorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c' cf \grandArpeggioMinorTwo
            }
        >>
    }
}