\version "2.19.15"
\include "english.ly"

titleLeft = "Clarinet G Major"
titleRight = "and G Minor"
title = "Clarinet G Major and G Minor"
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
\include "ly/ily/layout.ily"

clarTabScale = #0.8
exerciseOneMajor = \relative c'' { 
    \key g \major
    \time 4/4
    g2. 4 | d2. 4 | b2 a | g1 | 
    g'2. 4 | a2. 4 | fs?2 d | g1 
    \bar "|." 
}
exerciseOneMinor = \relative c'' { 
    \key g \minor
    \time 4/4
    g2. 4 | d2. 4 | bf?2 a | g1 | 
    g'2. 4 | d2. 4 | c2 a | g1 
    \bar "|." 
}

exerciseTwoMajor = \relative c' { 
    \key g \major
    \time 4/4
    g2. b4 | d1 | fs?4 d c a | g1 | 
    g'2. b,4 | d1 | a4 c d fs | g1 
    \bar "|." 
}
exerciseTwoMinor = \relative c' { 
    \key g \minor
    \time 4/4
    g2. bf?4 | d1 | fs4 d c a | g1 | 
    g'2. bf,4 | d1 | a4 c d fs | g1 
    \bar "|." 
}

exerciseThreeMajor = \relative c'' { 
    \key g \major
    \time 4/4
    g4 g, g'2 | a4 a, a'2 | fs2. d4 | c2 fs | g4 b, a' d, | g2 g,4 r 
    \bar "|." 
}
exerciseThreeMinor = \relative c'' { 
    \key g \minor
    \time 4/4
    g4 g, g'2 | a4 a, a'2 | fs2. d4 | c2 fs | g4 bf,? a' d, | g2 g,4 r 
    \bar "|." 
}

exerciseFourMajor = \relative c'' { 
    \key g \major
    \time 4/4
    g4 d b d | g g g r | a fs? d c | b g' g, r | 
    \bar "|." 
}
exerciseFourMinor = \relative c'' { 
    \key g \minor
    \time 4/4
    g4 d bf? d | g g g r | a fs d c | bf g' g, r | 
    \bar "|." 
}

exerciseFiveMajor = \relative c'' { 
    \key g \major
    \time 4/4
    g4 b, d b | a' c, d c | g' b, d fs | g2. r4
    \bar "|." 
}
exerciseFiveMinor = \relative c'' { 
    \key g \minor
    \time 4/4
    g4 bf,? d bf | a' c, d c | g' bf, d fs | g2. r4
    \bar "|." 
}

exerciseSixMajor = \relative c'' { 
    \key g \major
    \time 4/4
    g8 d g d g d g4 | a8 d, a' d, a' d, a'4 | 
    g8 d g d g d g4 | a8 g fs e d fs g4  
    \bar "|." 
}

exerciseSevenMinor = \relative c'' { 
    \key g \minor
    \time 4/4
    \partial 4*1 
    g8 a | 
    bf2 a4 g | d2 r4 bf'8 a | g2 d4 bf | g2 r
    \bar "|." 
}

exerciseEightMinor = \relative c'' { 
    \key g \minor
    \time 4/4
    \partial 4*1 
    g8 a | 
    bf8 a g a bf [ a ] g r | a g fs g a [ g ] fs r | g d bf a g2 
    \bar "|." 
}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\book { 
    \paper {
        print-all-headers = ##t
    }
    \header {
        title = "G Major and G Minor"
    }
    \bookpart {

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseOneMajor
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "1 - G Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseOneMinor
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "1 - G Minor"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseTwoMajor
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "2 - G Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseTwoMinor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "2 - G Minor"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseThreeMajor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "3 - G Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseThreeMinor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "3 - G Minor"
            }
        }
        \pageBreak

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseFourMajor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "4 - G Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseFourMinor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "4 - G Minor"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseFiveMajor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "5 - G Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseFiveMinor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "5 - G Minor"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseSixMajor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "6 - G Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseSevenMinor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "7 - G Minor"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseEightMinor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "8 - G Minor"
            }
        }
    }
}