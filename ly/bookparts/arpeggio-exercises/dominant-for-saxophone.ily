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
            \new ChordNames \transpose c g { \dominantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose b, c \dominantArpeggioFSharp
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
            \new ChordNames \transpose c d { \dominantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c c \dominantArpeggioD
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
            \new ChordNames \transpose c c { \dominantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \dominantArpeggioC
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
            \new ChordNames \transpose c a { \dominantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c cs \dominantArpeggioAFlat
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
            \new ChordNames \transpose c f { \dominantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c d \dominantArpeggioEFlat
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
            \new ChordNames \transpose c e { \dominantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c cs \dominantArpeggioEFlat
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
            \new ChordNames \transpose c bf { \dominantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \dominantArpeggioBFlat
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
            \new ChordNames \transpose c b { \dominantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \dominantArpeggioB
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
            \new ChordNames \transpose c ef { \dominantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c c \dominantArpeggioEFlat
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
            \new ChordNames \transpose c fs { \dominantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c c \dominantArpeggioFSharp
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
            \new ChordNames \transpose c af { \dominantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c c \dominantArpeggioAFlat
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
            \new ChordNames \transpose c cs { \dominantArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c cs \dominantArpeggioC
            }
        >>
    }

}
