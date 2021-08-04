\version "2.19.15"
\include "english.ly"

titleLeft = "Going Over The Break"
titleRight = "for Saxophone"
title = "Going Over The Break for Saxophone"
composerName = "Elaine Paul Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

\include "ly/ily/layout.ily"

\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2021 Elaine Paul Alt" } 
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
  markup-system-spacing.padding = #4

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

\include "ly/notes/over-the-break.ily"


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\layout { 
    indent = 1.25\cm
    short-indent = 1.25\cm
    \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.padding = #0
        \override StaffGrouper.staff-staff-spacing.basic-distance = #0
    }
}


\bookpart {

    \header {
        subtitle = "Pattern One, Starting Keys"
    }

    \score {
        \header {
            title = ""
            piece = "C Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose c c \overTheBreakOne
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "G Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose c g, \overTheBreakOneLow
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "D Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose c d \overTheBreakOne
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "A Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose c a, \overTheBreakOneLow
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "Bb Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose c bf, \overTheBreakOne
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Pattern One, Advanced Keys"
        composer = ""
    }
    \score {
        \header {
            title = ""
            piece = "B Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose c b, \overTheBreakOne
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "C# Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose c cs \overTheBreakOne
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "Ab Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose c af, \overTheBreakOneLow
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "F# Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose c' fs \overTheBreakOneLow
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Pattern One, Not Really Over The Break"
        composer = ""
    }
    \score {
        \header {
            title = ""
            piece = "F Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose c f \overTheBreakOneLow
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "E Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose c e \overTheBreakOne
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "Eb Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose c ef \overTheBreakOne
            }
        >>
    }
}


\bookpart {

    \header {
        title = ""
        subtitle = "Pattern Two, Starting Keys"
    }
    \score {
        \header {
            title = ""
            piece = "G Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose f g \overTheBreakTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "F Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose f f \overTheBreakTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "Eb Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose f ef \overTheBreakTwo
            }
        >>
    }
}

\bookpart {

    \header {
        title = ""
        subtitle = "Pattern Two, Advanced Keys"
    }

    \score {
        \header {
            title = ""
            piece = "E Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose f e \overTheBreakTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "Ab Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose f af \overTheBreakTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "F# Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose f fs \overTheBreakTwo
            }
        >>
    }
}

\bookpart {

    \header {
        title = ""
        subtitle = "Pattern Two, Not Really Over The Break"
    }
    \score {
        \header {
            title = ""
            piece = "C Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose f, c \overTheBreakTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "D Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose f, d \overTheBreakTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "Bb Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose f bf \overTheBreakTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "A Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose f a \overTheBreakTwo
            }
        >>
    }
    \score {
        \header {
            title = ""
            piece = "Db Major"
        } 
        << 
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \transpose f, df \overTheBreakTwo
            }
        >>
    }
}


