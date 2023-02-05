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


        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroDMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "2. D Minor"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroFMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "F Major"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroEMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "3. E Minor"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroGMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "G Major"  " " }
            }
        }


        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroGMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "4. G Minor"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroBbMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "Bb Major"  " " }
            }
        }


        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroBMinor
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
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroDMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "D Major"  " " }
            }
        }


        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroCMinor
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "2. C Minor"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExercisesZeroEbMajor
                    \pageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "Eb Major"  " " }
            }
        }


        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroFSharpMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "2. F# Minor"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroAMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "A Major"  " " }
            }
        }

    }
