    \bookpart {

        \header {
            title = "Scalar Articulation Exercises"
            % subtitle = \markup \center-column {
            %     "Repeat and increase the tempo each time."
            %     "When you can't keep up, switch to the speed variation."
            % }
            composer = ""
        }

        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationScalesExerciseZero
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "10a. Normal"  " " }
            } 
        }

        \score {
            \keepWithTag #'(Speed) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationScalesExerciseZero
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "10b. Speed"  " " }
            }
        }
        \pageBreak

        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationScalesExerciseOne
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "11. "  " " }
            }
        }

        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationScalesExerciseTwo
                }
            >>
            \header {
                title = ""
                subtitle = "Rest only 15 seconds between repetitions."
                composer = ""
                piece = \markup \center-column { "12. "  " " }
            } 
            \layout {
                indent = 1.25\cm        
            }
        }

        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationScalesExerciseThree
                }
            >>
            \header {
                title = ""
                subtitle = "Rest 30 seconds between repetitions."
                composer = ""
                piece = \markup \center-column { "13. "  " " }
            }
        }

        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationScalesExerciseFour
                }
            >>
            \header {
                title = ""
                subtitle = "Rest 15 seconds between repetitions."
                composer = ""
                piece = \markup \center-column { "14. "  " " }
            }
        }

        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationScalesExerciseFive
                }
            >>
            \header {
                title = ""
                subtitle = "Rest 30 seconds between repetitions."
                composer = ""
                piece = \markup \center-column { "15. "  " " }
            } 
            \layout {
                indent = 1.25\cm        
            }
        }

        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationScalesExerciseSix
                }
            >>
            \header {
                title = ""
                subtitle = "Rest 30 seconds between repetitions."
                composer = ""
                piece = \markup \center-column { "16."  " " }
            }
        }

        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationScalesExerciseSeven
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "17. "  " " }
            }
        }

        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationScalesExerciseEight
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "18. "  " " }
            }
        }
        
        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationScalesExerciseNine
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "19. "  " " }
            }
        }
        
        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationScalesExerciseTen
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "20. "  " " }
            }
        }
    }
