\bookpart {
    \header {
        title = "Diminished Arpeggio Exercises for Saxophone"
        subtitle = "Broken Chords with Doodle Slurs"
    }

    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "D Minor"
            composer = ""
        } 
        << 
            \new ChordNames \transpose g d { \halfDiminishedArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose d d \halfDiminishedArpeggioDMinor
            }
        >>
    }

    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "G Minor"
            composer = ""
        } 
        << 
            \new ChordNames \transpose c c { \halfDiminishedArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose g g \halfDiminishedArpeggioGMinor
            }
        >>
    }

    \score {
        \header {
            title = ""
            subtitle = ""
            piece = "C Minor"
            composer = ""
        } 
        << 
            \new ChordNames \transpose g c { \halfDiminishedArpeggioChords }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \transpose c c \halfDiminishedArpeggioCMinor
            }
        >>
    }

}
