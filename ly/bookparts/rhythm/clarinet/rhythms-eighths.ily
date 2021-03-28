    \bookpart {

        \header {
            subtitle = "Eighth Note Rhythms"
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g c { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsEighthsExerciseOneMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "1. C Major"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsEighthsExerciseThreeMajor 
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
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsEighthsExerciseFourMajor 
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "3. G Major"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g bf, { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsEighthsExerciseTwoMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "4. Bb Major"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c d { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsEighthsExerciseSixMajor 
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "5. D Major"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c d { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsEighthsExerciseSevenMajor 
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "6. Mozart"  " " }
            }
        }

        % \score {
        %     << 
        %         \override Score.RehearsalMark.self-alignment-X = #LEFT
        %         \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
        %         \new Staff \transpose g a { 
        %             \include "ly/ily/staff-properties.ily"
        %             \rhythmsEighthsExerciseFiveMajor 
        %         }
        %     >>
        %     \header {
        %         title = ""
        %         subtitle = ""
        %         composer = ""
        %         piece = \markup \center-column { "7. A Major"  " " }
        %     }
        % }
    }
