\version "2.24.0"
    \bookpart {

        \header {
            title = ""
            subtitle = "F# Major"
            composer = ""
        }

       \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose c fs { 
                    \include "ly/ily/staff-properties.ily"
                    \key c \major
                    \time 4/4
                    \transpose c c \articulationExerciseScale
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
                \new Staff \transpose c fs { 
                    \include "ly/ily/staff-properties.ily"
                    \key c \major
                    \time 4/4
                    \transpose c c \syncopationExerciseScale
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
                \new Staff \transpose c fs { 
                    \include "ly/ily/staff-properties.ily"
                    \key c \major
                    \scaleInThirdsMajorNotes
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
                \new ChordNames \transpose c fs { 
                    \tonicArpeggioChords 
                }
                \new Staff {
                    \include "ly/ily/staff-properties.ily"
                    \transpose c b, \tonicArpeggioG
                    \noPageBreak
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
                \new ChordNames \transpose c cs { 
                    \domiantArpeggioChords 
                }
                \new Staff {
                    \include "ly/ily/staff-properties.ily"
                    \transpose c cs \domiantArpeggioC
                    \pageBreak
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
                \new ChordNames \transpose c fs { 
                    \grandArpeggioMajorChords 
                }
                \new Staff \transpose c fs { 
                    \include "ly/ily/staff-properties.ily"
                    \grandArpeggioMajorTwo
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
                    \diatonicExerciseOneFsMajor
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

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose a a { 
                    \include "ly/ily/staff-properties.ily"
                    \diatonicExerciseTwoFsMajor
                    \noPageBreak
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
                    \diatonicExerciseThreeFsMajor
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
        %             \diatonicExerciseFourFsMajor
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
        %             \diatonicExerciseFiveFsMajor
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
        %             \diatonicExerciseSixFsMajor
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
