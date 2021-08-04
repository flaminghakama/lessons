\version "2.19.15"
\include "english.ly"

titleLeft = "Clarinet A Major"
titleRight = "and A Minor"
title = "Clarinet A Major and A Minor"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

\header {
    source = ""
    style = ""
    copyright = \markup \center-column { " "  \tiny "copyright © 2019 D. Elaine Alt" } 
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
  markup-system-spacing.padding = #8

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

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

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\book { 
    \paper {
        print-all-headers = ##t
    }
    \header {
        title = "A Major and A Minor"
    }
    \bookpart {

        \score {
            << 
                \new Staff \transpose g a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \exerciseOneMajorForA
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "1 - A Major"
            }
        }

        \score {
            << 
                \new Staff \transpose g a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \exerciseOneMinor
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "1 - A Minor"
            }
        }

        \score {
            << 
                \new Staff \transpose g a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \exerciseTwoMajor
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "2 - A Major"
            }
        }

        \score {
            << 
                \new Staff \transpose g a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \exerciseTwoMinor 
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "2 - A Minor"
            }
        }

        \score {
            << 
                \new Staff \transpose g a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \exerciseThreeMajorForA
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "3 - A Major"
            }
        }

        \score {
            << 
                \new Staff \transpose g a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \exerciseThreeMinorForA
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "3 - A Minor"
            }
        }
        \pageBreak

        \score {
            << 
                \new Staff \transpose g a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \exerciseFourMajorForA
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "4 - A Major"
            }
        }

        \score {
            << 
                \new Staff \transpose g a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \exerciseFourMinorForA 
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "4 - A Minor"
            }
        }

        \score {
            << 
                \new Staff \transpose g a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \exerciseFiveMajorForA
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "5 - A Major"
            }
        }

        \score {
            << 
                \new Staff \transpose g a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \exerciseFiveMinorForA
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "5 - A Minor"
            }
        }

        \score {
            << 
                \new Staff \transpose g a, { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \exerciseSixMajor 
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "6 - A Major"
            }
        }

        \score {
            << 
                \new Staff \transpose g a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \exerciseSevenMinorForA
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "7 - A Minor"
            }
        }

        \score {
            << 
                \new Staff \transpose g a { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \exerciseEightMinorForA
                    \noPageBreak
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "8 - A Minor"
            }
        }
    }
}