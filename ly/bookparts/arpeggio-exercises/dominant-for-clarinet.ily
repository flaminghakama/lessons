\bookpart {
    \header {
        title = "Dominant Arpeggio Exercises for Clarinet"
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
                \transpose c c \domiantArpeggioG
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
                \transpose g g \domiantArpeggioD
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
                \transpose c c \domiantArpeggioA
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
                \transpose c c \domiantArpeggioF
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
                \transpose e e \domiantArpeggioE
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
                \transpose fs fs \domiantArpeggioFSharp
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
                \transpose af af \domiantArpeggioAFlat
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
                \transpose cs cs \domiantArpeggioCSharp
            }
        >>
    }

}
