\version "2.24.0"
    \bookpart {

        \header {
            title = ""
            subtitle = "D Major"
            composer = ""
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose c d { 
                    \include "ly/ily/staff-properties.ily"
                    \key c \major
                    \time 4/4
                    \transpose c c \articulationExerciseScale
                    \transpose c, c \articulationExerciseScale
                    \bar "|."
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "Articulations"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose c d { 
                    \include "ly/ily/staff-properties.ily"
                    \key c \major
                    \time 4/4
                    \transpose c c \syncopationExerciseScale
                    \transpose c, c \syncopationExerciseScale
                    \bar "|."
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "Syncopation"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose c d { 
                    \include "ly/ily/staff-properties.ily"
                    \key c \major
                    \scaleInThirdsMajorNotes
                    \transpose c, c \scaleInThirdsMajorNotes
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "Scale in Thirds"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new ChordNames \transpose c d { 
                    \tonicArpeggioChords 
                }
                \new Staff {
                    \include "ly/ily/staff-properties.ily"
                    \transpose c c \tonicArpeggioD
                    \pageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "Tonic Arpeggio"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new ChordNames \transpose c a { 
                    \dominantArpeggioChords 
                }
                \new Staff {
                    \include "ly/ily/staff-properties.ily"
                    \transpose c cs \dominantArpeggioAFlat
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "Dominant Arpeggio"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new ChordNames \transpose c d { 
                    \grandArpeggioMajorChords 
                }
                \new Staff \transpose c d { 
                    \include "ly/ily/staff-properties.ily"
                    \grandArpeggioMajor
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "Grand Arpeggio"  " " }
            }
        }


        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \diatonicExerciseOneDMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "Triads"  " " }
            }
        }
    }
