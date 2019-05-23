
    \bookpart {
        \header {
            title = ""
            subtitle = "Careless Whisper Syncopation Patterns"
            composer = ""
        }
        \paper {
            % Spacing in between systems
            %system-system-spacing.basic-distance = #18
            system-system-spacing.minimum-distance = #16
        }
        \score {
            \transpose ef, c 
            << 
                \new ChordNames \transpose c c { 
                    \carelessWhisperRhythmOneChords 
                }
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    \carelessWhisperRhythmOne
                }
            >>
            \header {
                title = ""
                subtitle = ""
                piece = "Rhythm One"
                composer = ""
            }
        }
        \score {
            \transpose ef, c 
            << 
                \new ChordNames \transpose c c { 
                    \carelessWhisperRhythmTwoChords 
                }
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    \carelessWhisperRhythmTwo
                }
            >>
            \header {
                title = ""
                subtitle = ""
                piece = "Rhythm Two"
                composer = ""
            }
        }
    }
