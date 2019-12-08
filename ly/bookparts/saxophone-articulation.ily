    \bookpart {

        \header {
            title = \title
            subtitle = \markup \center-column {
                "Repeat and increase the tempo each time."
                "When you can't keep up, switch to the speed variation."
            }
            %composer = ""
        }
        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseOne
                }
            >>
            \header {
                title = ""
                subtitle = ""
                % composer = ""
                piece = \markup \center-column { "1a. Normal"  " " }
            } 
        }

        \score {
            \keepWithTag #'(Speed) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseOne
                }
            >>
            \header {
                title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "1b. Speed"  " " }
            }
            \layout {
                ragged-last = ##t
            }
        }



        \header {
            %title = ""
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
                    \articulationExerciseTwo
                }
            >>
            \header {
                title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "2a. Normal"  " " }
            }
        }

        \score {
            \keepWithTag #'(Speed) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseTwo
                }
            >>
            \header {
                title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "2b. Speed"  " " }
            }
        }


        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseThree
                }
            >>
            \header {
                title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "3a. Normal"  " " }
            }
        }

        \score {
            \keepWithTag #'(Speed) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseThree
                }
            >>
            \header {
                title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "3b. Speed"  " " }
            }
        }


        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseFour
                }
            >>
            \header {
                title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "4a. Normal"  " " }
            }
        }

        \score {
            \keepWithTag #'(Speed) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseFour
                }
            >>
            \header {
                title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "4b. Speed"  " " }
            }
        }



        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseFive
                }
            >>
            \header {
                title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "5a. Normal"  " " }
            }
        }

        \score {
            \keepWithTag #'(Speed) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseFive
                }
            >>
            \header {
                %title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "5b. Speed"  " " }
            }
        }


        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseSix
                }
            >>
            \header {
                title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "6a. Normal"  " " }
            }
        }

        \score {
            \keepWithTag #'(Speed) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseSix
                }
            >>
            \header {
                %title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "6b. Speed"  " " }
            }
        }



        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseSeven
                }
            >>
            \header {
                title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "7a. Normal"  " " }
            }
        }

        \score {
            \keepWithTag #'(Speed) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseSeven
                }
            >>
            \header {
                %title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "7b. Speed"  " " }
            }
        }


        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseEight
                }
            >>
            \header {
                title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "8a. Normal"  " " }
            }
        }

        \score {
            \keepWithTag #'(Speed) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseEight
                }
            >>
            \header {
                title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "8b. Speed"  " " }
            }
        }


        \score {
            \keepWithTag #'(Normal) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseNine
                }
            >>
            \header {
                title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "9a. Normal"  " " }
            }
        }

        \score {
            \keepWithTag #'(Speed) << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \articulationExerciseNine
                }
            >>
            \header {
                title = ""
                subtitle = ""
                %composer = ""
                piece = \markup \center-column { "9b. Speed"  " " }
            }
        }


    }
