    \bookpart {

        \header {
            %title = ""
            subtitle = ""
            %composer = ""
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \lowRegisterOne
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "1. Crescendo"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \lowRegisterTwo
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "2. Crescendo and Decrescendo"  " " }
            }
        }
%{

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \lowRegisterThreeCMinor
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
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \lowRegisterFourCMinor
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
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \lowRegisterFiveCMinor
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
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \lowRegisterSixCMinor
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "6. Full Range"  " " }
            }
        }

        %}

    }
