\version "2.19.15"
\include "english.ly"

titleLeft = "Rhythmic"
titleRight = "Exercises"
title = "Rhythmic Exercises"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2019 D. Elaine Alt" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \title }  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
    instrumentName = ""
}

\paper {

    top-margin = #14
    right-margin = #17

    % First page spacing after header
    markup-system-spacing.padding = #0

    % Subsequent page spacing after header
    top-system-spacing.minimum-distance = #14

    % Spacing in between systems
    %system-system-spacing.basic-distance = #18
    %system-system-spacing.minimum-distance = #15

    score-system-spacing.basic-distance = #20    

    page-breaking = #ly:minimal-breaking

    #(define fonts
        (make-pango-font-tree 
            "Hardwood" 
            "Highlander ITC TT" 
            "Papyrus"
            (/ myStaffSize 20)
        )
    )
}

%BodoniClassicChancery" 
\include "../scores/flaming-libs/flaming-fonts.ily"
\include "ly/ily/layout.ily"

\include "ly/ily/rhythms-sixteenths.ily"


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book { 
    \paper {
        print-all-headers = ##t
    }
    \header {
        title = \title
    }
    \bookpart {

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsSixteenthsExerciseOne
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = \markup \center-column { "1. Preperatory"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsSixteenthsExerciseTwo
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = \markup \center-column { "2. Four Sixteenths"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g a { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsSixteenthsExerciseThree 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = \markup \center-column { "3. Two Sixteenths + Eighth"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose d g { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsSixteenthsExerciseFour 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = \markup \center-column { "4. Eighth + Two Sixteenths"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g bf { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsSixteenthsExerciseFive 
                    \pageBreak
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = \markup \center-column { "5. Mixture"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g, d { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsSixteenthsExerciseSix 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = \markup \center-column { "6. Syncopation Mixture"  " " }
            }
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g a { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsSixteenthsExerciseSeven 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = \markup \center-column { "7. Blues Mixture"  " " }
            }
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g e { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsSixteenthsExerciseEight 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = \markup \center-column { "8. Two Sixteenth Pickups"  " " }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose ef ef { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmsSixteenthsExerciseNine 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = \markup \center-column { "9. Two Sixteenth Downbeats"  " " }
            }
        }
    }
}