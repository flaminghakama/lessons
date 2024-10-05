\version "2.24.0"
    \bookpart {

        \header {
            title = ""
            subtitle = ""
            composer = ""
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
                piece = \markup \center-column { "6. C Minor"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroFSharpMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "7. F# Minor"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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


        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroFMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "8. F Minor"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroAbMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "Ab Major"  " " }
            }
        }


        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroCSharpMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "9. C# Minor"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroEMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "E Major"  " " }
            }
        }



        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroBbMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "10. Bb Minor"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroDbMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "Db Major"  " " }
            }
        }


        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroGSharpMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "11. G# Minor"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroBMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "B Major"  " " }
            }
        }


        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroEbMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "12. Eb Minor"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroGbMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "Gb Major"  " " }
            }
        }


        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroDSharpMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "13. D# Minor"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroFSharpMajor
                    \pageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "F# Major"  " " }
            }
        }


        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroAbMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "14. Ab Minor"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroCbMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "Cb Major"  " " }
            }
        }


        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroASharpMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "15. A# Minor"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \pentatonicExerciseZeroCSharpMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "C# Major"  " " }
            }
        }

    }
