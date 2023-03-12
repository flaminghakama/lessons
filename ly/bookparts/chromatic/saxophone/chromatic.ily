    \bookpart {

        \header {
            % title = ""
            % subtitle = "Part 1 of 3: A Minor"
            % composer = ""
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseBottomOne
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "1.1 Four Adjacent Notes Bottom"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseLowerOne
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "1.2 Four Adjacent Notes Lower"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseMiddleOne
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "1.3 Four Adjacent Notes Middle"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseUpperOne
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "1.4 Four Adjacent Notes Upper"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseTopOne
                    \pageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "1.5 Four Adjacent Notes Top"  " " }
            }
        }
    


        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseBottomTwo
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "2.1 Five Adjacent Notes Bottom"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseLowerTwo
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "2.2 Five Adjacent Notes Lower"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseMiddleTwo
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "2.3 Five Adjacent Notes Middle"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseUpperTwo
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "2.4 Five Adjacent Notes Upper"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseTopTwo
                    \pageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "2.5 Five Adjacent Notes Top"  " " }
            }
        }



        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseBottomTwoAdvanced
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "3.1 Five Adjacent Notes Advanced Bottom"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseLowerTwoAdvanced
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "3.2 Five Adjacent Notes Advanced Lower"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseMiddleTwoAdvanced
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "3.3 Five Adjacent Notes Advanced Middle"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseUpperTwoAdvanced
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "3.4 Five Adjacent Notes Advanced Upper"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseTopTwoAdvanced
                    \pageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "3.5  Five Adjacent Notes Advanced Top"  " " }
            }
        }



        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseBottomThree
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "4.1 Six Adjacent Notes Bottom"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseLowerThree
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "4.2 Six Adjacent Notes Lower"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseMiddleThree
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "4.3 Six Adjacent Notes Middle"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseUpperThree
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "4.4 Six Adjacent Notes Upper"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseTopThree
                    \pageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "4.5  Six Adjacent Notes Top"  " " }
            }
        }





        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseBottomThreeAdvanced
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "5.1 Six Adjacent Notes Advanced Bottom"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseLowerThreeAdvanced
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "5.2 Six Adjacent Notes Advanced Lower"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseMiddleThreeAdvanced
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "5.3 Six Adjacent Notes Advanced Middle"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseUpperThreeAdvanced
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "5.4 Six Adjacent Notes Advanced Upper"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \chromaticExerciseTopThreeAdvanced
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "5.5  Six Adjacent Note Advanceds Top"  " " }
            }
        }
    }        