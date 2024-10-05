\version "2.24.0"
    \bookpart {

        \header {
            title = ""
            composer = ""
            subtitle = "E Minor"
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose d d { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseOneEMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "1. Two Adjacent Notes"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose d d { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseTwoEMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "2. Three Adjacent Notes"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose d d { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseThreeEMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "3. Four Adjacent Notes"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose d d { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseFourEMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "4. Five Adjacent Notes"  " " }
            }
        }
 
         \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose d d { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseFiveEMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "5. Blues Licks"  " " }
            }
        }

         \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose d d { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseSixEMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "5. Full Range"  " " }
            }
        }
   }
