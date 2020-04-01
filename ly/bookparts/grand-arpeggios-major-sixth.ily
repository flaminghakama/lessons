
\bookpart {
    \header {
        title = "Grand Arpeggios for Saxophone"
        subtitle = "Major 6th - Dominant 7th"
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
            \new ChordNames \transpose c c { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \grandArpeggioMajorSixth
            }
            \new ChordNames \transpose c c { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \grandArpeggioMajorSixthTwo
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
            \new ChordNames \transpose c g { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c g \grandArpeggioMajorSixthThree
            }
            \new ChordNames \transpose c g { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c g \grandArpeggioMajorSixthTen
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
            \new ChordNames \transpose c f { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c f \grandArpeggioMajorSixth
            }
            \new ChordNames \transpose c f { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c f \grandArpeggioMajorSixthSeven
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
            \new ChordNames \transpose c d { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c d \grandArpeggioMajorSixth
            }
            \new ChordNames \transpose c d { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c d \grandArpeggioMajorSixthEight
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
            \new ChordNames \transpose c bf' { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c bf, \grandArpeggioMajorSixth
            }
            \new ChordNames \transpose c bf' { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c bf, \grandArpeggioMajorSixthNine
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
            \new ChordNames \transpose c a { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c a \grandArpeggioMajorSixthFour
            }
            \new ChordNames \transpose c a { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c a \grandArpeggioMajorSixthFive
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
            \new ChordNames \transpose c ef { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c ef \grandArpeggioMajorSixth
            }
            \new ChordNames \transpose c ef { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c ef \grandArpeggioMajorSixthTwo
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
            \new ChordNames \transpose c e { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c e \grandArpeggioMajorSixth
            }
            \new ChordNames \transpose c e { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c e \grandArpeggioMajorSixthTwo
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
            \new ChordNames \transpose c af { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c af \grandArpeggioMajorSixthFive
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
            \new ChordNames \transpose c b' { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c b, \grandArpeggioMajorSixth
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
            \new ChordNames \transpose c df { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c df \grandArpeggioMajorSixth
            }
            \new ChordNames \transpose c df { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c df \grandArpeggioMajorSixthSix
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
            \new ChordNames \transpose c fs { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c fs \grandArpeggioMajorSixth
            }
            \new ChordNames \transpose c fs { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c fs \grandArpeggioMajorSixthThree
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
            \new ChordNames \transpose c gf { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c gf \grandArpeggioMajorSixth
            }
            \new ChordNames \transpose c gf { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c gf \grandArpeggioMajorSixthTwo
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
            \new ChordNames \transpose c cs { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c cs \grandArpeggioMajorSixth
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
            \new ChordNames \transpose c cf { \grandArpeggioMajorSixthChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c cf \grandArpeggioMajorSixth
            }
        >>
    }
}
