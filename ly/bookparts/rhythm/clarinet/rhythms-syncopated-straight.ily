\version "2.24.0"

    \bookpart {
        \header {
            title = ""
            subtitle = "Syncopation vs. Straight"
            composer = ""
        }
        \paper {
            % Spacing in between systems
            %system-system-spacing.basic-distance = #18
            system-system-spacing.minimum-distance = #19
        }
        \score {
            \new StaffGroup \with { 
                \override VerticalAxisGroup.default-staff-staff-spacing.minimum-distance = #20
            } <<
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    <<
                        \syncopatedStraightForm
                        \syncopated
                    >>
                }
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    <<
                        \syncopatedStraightForm
                        \straight
                    >>
                }
            >>
            \header {
                title = ""
                subtitle = ""
                composer = ""
                piece = \markup \center-column { "From 'My Love'"  " " }
            }
        }
    }
