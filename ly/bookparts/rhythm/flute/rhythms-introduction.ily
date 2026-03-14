    \bookpart {

        \header {
            subtitle = "Whole and Half Note Rhythms"
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsIntroductionExerciseOneMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = ""
                poet = ""
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsIntroductionExerciseTwoMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                poet = ""
                piece = "" %\markup \center-column { "2. G Major"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsIntroductionExerciseThreeMajor 
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                poet = ""
                piece = "" %\markup \center-column { "3. C Major"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g, c { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsIntroductionExerciseFourMajor 
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "4. C Major"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose c, c { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsIntroductionExerciseSixMajor 
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "5. C Major"  " " }
            }
        }

        % \score {
        %     << 
        %         \override Score.RehearsalMark.self-alignment-X = #LEFT
        %         \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
        %         \new Staff \transpose fs, fs { 
        %             \include "ly/ily/staff-properties.ily"
        %             \rhythmsIntroductionExerciseSevenMajor 
        %         }
        %     >>
        %     \header {
        %         title = ""
        %         subtitle = ""
        %         composer = ""
        %         piece = \markup \center-column { "6. Mozart"  " " }
        %     }
        % }

        % \score {
        %     << 
        %         \override Score.RehearsalMark.self-alignment-X = #LEFT
        %         \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
        %         \new Staff \transpose g, c { 
        %             \include "ly/ily/staff-properties.ily"
        %             \rhythmsIntroductionExerciseFiveMajor 
        %         }
        %     >>
        %     \header {
        %         title = ""
        %         subtitle = ""
        %         composer = ""
        %         piece = \markup \center-column { "7. C Major"  " " }
        %     }
        % }

    }
