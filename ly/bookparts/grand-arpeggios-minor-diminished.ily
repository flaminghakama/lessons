
\bookpart {
    \header {
        title = "Grand Arpeggios for Saxophone"
        subtitle = "Minor / Diminished 7th"
    }

    % No Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "A Minor (G# Diminished 7th)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c c { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \grandArpeggioMinorDiminished
            }
        >>
    }

    % 1 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "E Minor (D# Diminished 7th)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c g { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c g, \grandArpeggioMinorDiminishedTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "D Minor (C# Diminished 7th)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c f { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c f, \grandArpeggioMinorDiminishedTwo
            }
        >>
    }

    % 2 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "B Minor (A# Diminished 7th)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c d { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c d \grandArpeggioMinorDiminished
            }
            \new ChordNames \transpose c d { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c d, \grandArpeggioMinorDiminishedTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "G Minor (F# Diminished 7th)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c bf' { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c bf, \grandArpeggioMinorDiminished
            }
        >>
    }

    % 3 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "F# Minor (F Diminished 7th)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c a { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c a, \grandArpeggioMinorDiminished
            }
            \new ChordNames \transpose c a { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c a, \grandArpeggioMinorDiminishedTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "C Minor (B Diminished 7th)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c ef { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c ef, \grandArpeggioMinorDiminishedTwo
            }
        >>
    }

    % 4 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "C# Minor (C Diminished 7th)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c e { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c e, \grandArpeggioMinorDiminishedTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "F Minor (E Diminished 7th)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c af { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c af, \grandArpeggioMinorDiminishedTwo
            }
        >>
    }

    % 5 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "G# Minor (G Diminished 7th)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c b' { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c b, \grandArpeggioMinorDiminished
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Bb Minor (A Diminished 7th)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c df { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c df \grandArpeggioMinorDiminished
            }
            \new ChordNames \transpose c df { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c df, \grandArpeggioMinorDiminishedTwo
            }
        >>
    }

    % 6 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "D# Minor (D Diminished 7th)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c fs { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c fs, \grandArpeggioMinorDiminishedTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Eb Minor (D Diminished 7th)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c gf { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c gf, \grandArpeggioMinorDiminishedTwo
            }
        >>
    }

    % 7 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Ab Minor (G Diminished 7th)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c cf { \grandArpeggioMinorDiminishedChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c cf \grandArpeggioMinorDiminished
            }
        >>
    }
}