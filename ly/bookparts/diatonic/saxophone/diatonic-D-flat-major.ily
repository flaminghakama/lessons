\version "2.24.0"
    \bookpart {

        \header {
            title = ""
            subtitle = "Db Major"
            composer = ""
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose c df { 
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
                \new Staff \transpose c df { 
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
                \new Staff \transpose c df { 
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
                \new ChordNames \transpose c df { 
                    \tonicArpeggioChords 
                }
                \new Staff {
                    \include "ly/ily/staff-properties.ily"
                    \transpose c df \tonicArpeggioC
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
                \new ChordNames \transpose c af { 
                    \dominantArpeggioChords 
                }
                \new Staff {
                    \include "ly/ily/staff-properties.ily"
                    \transpose c c \dominantArpeggioAFlat
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
                \new ChordNames \transpose c df { 
                    \grandArpeggioMajorChords 
                }
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \transpose c df \grandArpeggioMajor
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
                    \diatonicExerciseOneDbMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "Triads"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \diatonicExerciseTwoDbMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "1-2-3-5"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \diatonicExerciseThreeDbMajor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "1-2-3-4-5"  " " }
            }
        }

        % \score {
        %     << 
        %         \override Score.RehearsalMark.self-alignment-X = #LEFT
        %         \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
        %         \new Staff \transpose c c { 
        %             \include "ly/ily/staff-properties.ily"
        %             \diatonicExerciseFourDbMajor
        %         }
        %     >>
        %     \header {
        %         title = ""
        %         subtitle = ""
        %         composer = ""
        %         piece = \markup \center-column { "5. Five Adjacent Notes"  " " }
        %     }
        % }

        % \score {
        %     << 
        %         \override Score.RehearsalMark.self-alignment-X = #LEFT
        %         \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
        %         \new Staff \transpose a a { 
        %             \include "ly/ily/staff-properties.ily"
        %             \diatonicExerciseFiveDbMajor
        %         }
        %     >>
        %     \header {
        %         title = ""
        %         subtitle = ""
        %         composer = ""
        %         piece = \markup \center-column { "6. Blues Licks"  " " }
        %     }
        % }

        % \score {
        %     << 
        %         \override Score.RehearsalMark.self-alignment-X = #LEFT
        %         \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
        %         \new Staff \transpose a a { 
        %             \include "ly/ily/staff-properties.ily"
        %             \diatonicExerciseSixDbMajor
        %         }
        %     >>
        %     \header {
        %         title = ""
        %         subtitle = ""
        %         composer = ""
        %         piece = \markup \center-column { "7. Full Range"  " " }
        %     }
        % }
    }
