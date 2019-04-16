\version "2.19.15"
\include "english.ly"

titleLeft = "Saxophone"
titleRight = "Counting"
title = "Saxophone Counting"
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
    g4 r r r8 fs? | e4 r r a | d,8 c4. r4 e | fs8 d e fs g4 r  
    \bar "|." 
}

exerciseTwoMajor = \relative c'' { 
    \key g \major
    \time 4/4
    g4 r r fs8 g | a4 r r8 a g [ fs ] | e4 r a r | r8 d, e [ fs ] g4 r 
    \bar "|." 
}

exerciseThreeMajor = \relative c' { 
    \key g \major
    \time 4/4
    r8 d g4 r c,8 d | e4-. a2. | r8 g fs?4-. d8 e d e | g d g4 r2 | 
    \bar "|." 
}

exerciseFourMajor = \relative c' { 
    \key g \major
    \time 3/4
    c8 d b c r4 | r8 c d [ b ] e4 | g4 r8 g g4 |   
    fs?4 r8 e d4 | d8 a' e fs g4 
    \bar "|." 
}

exerciseFiveMajor = \relative c'' { 
    \key g \major
    \time 4/4
    r8 g g [ d ] d4 r | g8 8 d c b4 r | r8 a' g [ fs? ] a4 r | r8 g8 fs4 e8 d4. | b8 c4 fs8 g4 r  
    \bar "|." 
}

exerciseSixMajor = \relative c' { 
    \key c \major
    \time 4/4
    c4 r8 c c4 r8 c | c c c g' c,4 r | 
    d4 r8 d d4 r8 d | d d d b c4 r 
    \bar "|." 
}

exerciseSevenMajor = \relative c' { 
    \key c \major
    \time 4/4
    c4 r8 g c4 r8 g | c g c e g4 r | 
    f4 r8 d f4 r8 d | f d b d g,4 r 
    \bar "|." 
}


exerciseEightMajor = \relative c'' { 
    \key c \major
    \time 4/4

    c4 c r c | c r r c | r c c c | r2 r4 c |

    c8 8 r4 r c8 8 | r4 c r c8 8 | r4 c8 8 4 8 8 | r8 c8 8 [ 8 ] 4 4 |  
    
    c8 8 8 8 r2 | r4 c8 8 8 8 4 | r4 r8 c8 4 8 8 | c4 r r8 c8 4 |  
    
    r4 c8 8 r4 r8 c8 | c4 r4 r8 c8 8 [ 8 ] | 8 8 r4 r8 c8 8 [ 8 ] | 4 r8 c r c r c 
    \bar "|." 
}

exerciseNineMajor = \relative c'' { 
    \key c \major
    \time 4/4
    c8 4 8 4 r | r c8 8 8 4 8 | r2 c4 8 8 | r8 c8 8 [ 8 ] 4 r | 

    r4 c8 8 ~ 8 8 4 | r4 c8 8 ~ 8 4 8 | r4 c8 8 16 16 8 r4 | c8 4 8 ~ 8 16 16 4 | 

    c4 4 16 16 8 r4 | c8 4 8 16 16 8 r4 | c8 8 16 16 8 8 4 8 | 8 16 16  8 16 16  16 16 8  4 
    \bar "|."
}


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
                    \transpose g, df \exerciseOneMajor
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "1."
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \transpose g, df \exerciseTwoMajor
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "2."
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \transpose g, df \exerciseThreeMajor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "3."
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \transpose g, df \exerciseFourMajor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "4."
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \transpose g, df \exerciseFiveMajor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "5."
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \transpose c, df \exerciseSixMajor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "6."
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c, df { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseSevenMajor 
                    \pageBreak
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "7."
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseEightMajor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "8."
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseNineMajor 
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "9."
            }
        }
    }
}