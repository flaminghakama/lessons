    \bookpart {

        \header {
            title = ""
            subtitle = "Db Major"
            composer = ""
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOn
                    \diatonicExerciseOneDbMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "Triads"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOn
                    \diatonicExerciseTwoDbMajor
                    \pageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "1-2-3-5"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOn
                    \diatonicExerciseThreeDbMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "1-2-3-4-5"  " " }
            }
        }

        % \score {
        %     << 
        %         \override Score.RehearsalMark.self-alignment-X = #LEFT
        %         \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
        %         \new Staff \transpose c c { 
        %             \include "ly/ily/staff-properties.ily"
        %             \diatonicExerciseFourDbMajor
        %         }
        %     >>
        %     \header {
        %         title = ""
        %         subtitle = ""
        %         composer = ""
        %         piece = \markup \center-column { "5. Five Adjacent Notes"  " " }
        %     }
        % }

        % \score {
        %     << 
        %         \override Score.RehearsalMark.self-alignment-X = #LEFT
        %         \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
        %         \new Staff \transpose a a { 
        %             \include "ly/ily/staff-properties.ily"
        %             \diatonicExerciseFiveDbMajor
        %         }
        %     >>
        %     \header {
        %         title = ""
        %         subtitle = ""
        %         composer = ""
        %         piece = \markup \center-column { "6. Blues Licks"  " " }
        %     }
        % }

        % \score {
        %     << 
        %         \override Score.RehearsalMark.self-alignment-X = #LEFT
        %         \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
        %         \new Staff \transpose a a { 
        %             \include "ly/ily/staff-properties.ily"
        %             \diatonicExerciseSixDbMajor
        %         }
        %     >>
        %     \header {
        %         title = ""
        %         subtitle = ""
        %         composer = ""
        %         piece = \markup \center-column { "7. Full Range"  " " }
        %     }
        % }
    }
