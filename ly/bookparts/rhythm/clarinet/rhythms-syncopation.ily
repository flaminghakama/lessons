
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
                    \aMinorRhythmsSyncopation
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
                    \fMajorRhythmsSyncopation
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
                    \bMinorRhythmsSyncopation
                    \pageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "5. B Minor"  " " }
            }
        }
        \score {
            << 
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    \dMajorRhythmsSyncopation
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "6. D Major"  " " }
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
                \new Staff \transpose c cs { 
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
