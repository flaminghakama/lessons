\bookpart {
    \header {
        title = "Dominant Arpeggio Exercises for Saxophone"
        subtitle = "Broken Chords with Doodle Slurs"
    }

    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "C Major"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c g { \domiantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose b, c \domiantArpeggioFSharp
            }
        >>
    }

    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "G Major"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c d { \domiantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c c \domiantArpeggioD
            }
        >>
    }

    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "F Major"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c c { \domiantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \domiantArpeggioC
            }
        >>
    }

    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "D Major"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c a { \domiantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c cs \domiantArpeggioAFlat
            }
        >>
    }

    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Bb Major"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c f { \domiantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c d \domiantArpeggioEFlat
            }
        >>
    }

    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "A Major"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c e { \domiantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c cs \domiantArpeggioEFlat
            }
        >>
    }

    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Eb Major"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c bf { \domiantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \domiantArpeggioBFlat
            }
        >>
    }

    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "E Major"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c b { \domiantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \domiantArpeggioB
            }
        >>
    }

    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Ab Major"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c ef { \domiantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c c \domiantArpeggioEFlat
            }
        >>
    }

    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "B Major"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c fs { \domiantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c c \domiantArpeggioFSharp
            }
        >>
    }

    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "Db Major"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c af { \domiantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c c \domiantArpeggioAFlat
            }
        >>
    }

    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "F# Major"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c cs { \domiantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c cs \domiantArpeggioC
            }
        >>
    }

}
