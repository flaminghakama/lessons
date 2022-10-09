    \bookpart {

        \header {
            % title = ""
            % subtitle = "A Minor"
            % composer = ""
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroAMinor
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
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroCMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "C Major"  " " }
            }
        }
    }
