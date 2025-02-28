\version "2.24.0"
    \bookpart {

        \header {
            subtitle = "C Major"
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \key c \major
                    \time 4/4
                    \articulationExerciseScale
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
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \key c \major
                    \time 4/4
                    \syncopationExerciseScale
                    \transpose c, c \syncopationExerciseScale
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
                \new Staff \transpose c c { 
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
                \new ChordNames \transpose c c { 
                    \tonicArpeggioChords 
                }
                \new Staff {
                    \include "ly/ily/staff-properties.ily"
                    \transpose c c \tonicArpeggioC
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
                \new ChordNames \transpose c g { 
                    \dominantArpeggioChords 
                }
                \new Staff {
                    \include "ly/ily/staff-properties.ily"
                    \transpose b, c \dominantArpeggioFSharp
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
                \new ChordNames \transpose c c { 
                    \grandArpeggioMajorChords 
                }
                \new Staff \transpose a a { 
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
                    \diatonicExerciseOneCMajor
                    \noPageBreak
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
