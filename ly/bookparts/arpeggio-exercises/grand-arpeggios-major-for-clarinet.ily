
\bookpart {
    \header {
        title = "Grand Arpeggios for Clarinet"
        subtitle = "Major - Dominant 7th"
    }

    % No Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "C Major (G Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c c { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \grandArpeggioMajor
            }
        >>
    }

    % 1 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "G Major (D Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c g { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c' g \grandArpeggioMajor
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "F Major (C Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c f { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c' f \grandArpeggioMajor
            }
        >>
    }

    % 2 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "D Major (A Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c d { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c d \grandArpeggioMajorTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Bb Major (F Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c bf { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c' bf \grandArpeggioMajor
            }
        >>
    }

    % 3 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "A Major (E Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c a { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c' a \grandArpeggioMajor
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Eb Major (Bb Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c ef { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c ef \grandArpeggioMajorTwo
            }

            \new ChordNames \transpose c ef { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c ef \grandArpeggioMajor
            }
        >>
    }

    % 4 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "E Major (B Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c e { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c' e \grandArpeggioMajor
            }
            \new ChordNames \transpose c e { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c e \grandArpeggioMajor
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Ab Major (Eb Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c af { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c' af \grandArpeggioMajor
            }
        >>
    }

    % 5 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "B Major (F# Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c b { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c' b \grandArpeggioMajor
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Db Major (Ab Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c df { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c df \grandArpeggioMajorTwo
            }
        >>
    }

    % 6 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "F# Major (C# Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c fs { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c' fs \grandArpeggioMajor
            }
            \new ChordNames \transpose c fs { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c fs \grandArpeggioMajor
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Gb Major (Db Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c gf { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c' gf \grandArpeggioMajor
            }
            \new ChordNames \transpose c gf { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c gf \grandArpeggioMajorTwo
            }
        >>
    }

    % 7 Accidentals
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "C# Major (G# Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c cs { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c cs \grandArpeggioMajorTwo
            }
            \new ChordNames \transpose c cs { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c cs \grandArpeggioMajor
            }
        >>
    }
    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Cb Major (Fb Dominant)"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c cf { 
                \grandArpeggioMajorChords 
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c cf \grandArpeggioMajor
            }
        >>
    }
}
