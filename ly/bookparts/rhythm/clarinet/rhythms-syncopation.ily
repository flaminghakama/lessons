\version "2.24.0"

    \bookpart {
        \header {
            title = ""
            subtitle = "Eighth Note Syncopations"
            composer = ""
        }
        \score {
            << 
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    \transpose a a, \aMinorRhythmsSyncopation
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "1. A Minor"  " " }
            }
        }
        \score {
            << 
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    \transpose f f, \fMajorRhythmsSyncopation
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "2. F Major"  " " }
            }
        }
        \score {
            << 
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    \cMinorRhythmsSyncopation
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "3. C Minor"  " " }
            }
        }
        \score {
            << 
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    \dMinorRhythmsSyncopation
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "4. D Minor"  " " }
            }
        }
        \score {
            << 
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    \transpose b e \bMinorRhythmsSyncopation
                    \pageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "5. E Minor"  " " }
            }
        }
        \score {
            << 
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    \transpose d a, \dMajorRhythmsSyncopation
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "6. A Major"  " " }
            }
        }
        \score {
            << 
                \new Staff \transpose c d, { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsEighthsExerciseEightMajor 
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "7. Progressive Review"  " " }
            }
        }

        \score {
            << 
                \new Staff \transpose c cs, { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsEighthsExerciseNineMajor 
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "8. Progressive Look Ahead to Sixteenths"  " " }
            }
        }
    }
