\version "2.19.15"
\include "english.ly"

titleLeft = "Clarinet F Major"
titleRight = "and F Minor"
title = "Clarinet F Major and F Minor"
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

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #0

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #14

  % Spacing in between systems
  system-system-spacing.basic-distance = #18
  system-system-spacing.minimum-distance = #15

  page-breaking = #ly:minimal-breaking

  #(define fonts
    (make-pango-font-tree "Hardwood" 
                          "Highlander ITC TT" 
                          "Papyrus"
                           (/ myStaffSize 20)))
}
%BodoniClassicChancery" 
\include "../scores/flaming-libs/flaming-fonts.ily"

\include "ly/ily/clarinet-fingerings.ily"    
\include "ly/notes/clarinet-exercise-notes.ily"    
\include "ly/ily/layout.ily"

clarTabScale = #0.8

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\book { 
    \paper {
        print-all-headers = ##t
    }
    \header {
        title = "F Major and F Minor"
    }
    \bookpart {

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseOneMajor
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "1 - F Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseOneMinor
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "1 - F Minor"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseTwoMajor
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "2 - F Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseTwoMinor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "2 - F Minor"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseThreeMajor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "3 - F Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseThreeMinor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "3 - F Minor"
            }
        }
        \pageBreak

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseFourMajor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "4 - F Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseFourMinor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "4 - F Minor"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseFiveMajor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "5 - F Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseFiveMinor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "5 - F Minor"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseSixMajor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "6 - F Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseSevenMinor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "7 - F Minor"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseEightMinor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "8 - F Minor"
            }
        }
    }
}