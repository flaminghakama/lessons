\bookpart {
    \header {
        title = "Augmented Seventh Arpeggio Exercises for Saxophone"
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
            \new ChordNames \transpose c g { \augmentedArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose b, c \augmentedArpeggioFSharp
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
            \new ChordNames \transpose c d { \augmentedArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c c \augmentedArpeggioD
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
            \new ChordNames \transpose c c { \augmentedArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \augmentedArpeggioC
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
            \new ChordNames \transpose c a { \augmentedArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c cs \augmentedArpeggioAFlat
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
            \new ChordNames \transpose c f { \augmentedArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c d \augmentedArpeggioEFlat
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
            \new ChordNames \transpose c e { \augmentedArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c cs \augmentedArpeggioEFlat
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
            \new ChordNames \transpose c bf { \augmentedArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \augmentedArpeggioBFlat
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
            \new ChordNames \transpose c b { \augmentedArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \augmentedArpeggioB
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
            \new ChordNames \transpose c ef { \augmentedArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c c \augmentedArpeggioEFlat
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
            \new ChordNames \transpose c fs { \augmentedArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c c \augmentedArpeggioFSharp
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
            \new ChordNames \transpose c af { \augmentedArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c c \augmentedArpeggioAFlat
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
            \new ChordNames \transpose c cs { \augmentedArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c cs \augmentedArpeggioC
            }
        >>
    }

}
