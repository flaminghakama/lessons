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

exerciseOne = \relative c''' { 
    \key g \major
    \time 4/4
    g8 e  d b   g b  d g | r4  e8 g  d g  r4 | r2  g8 d  r4 |  b8 g  r4  e'8 d  r4 | 
    r4  d,8 g  r4  d8 g |  r8 b8  d [ e ]  r4  g8 g, | r4 r8 d'8  g [ d ]  r4 | r8 b8  r d,  r4  fs8 g 
    \bar "|." 
}

exerciseTwo = \relative c'' { 
    \key g \major
    \time 4/4
    g8 8  r4  fs16 16 16 16  r4 | r4  g8 8  fs16 16 16 16  r4 | 
    g8 8  fs16 16 16 16  g8 8  r4 | r4  c16 16 16 16  a16 16 16 16  g8 8 | 
    c4 r d4  c16 b a g | r4  d8 g8  4  d'16 c b a |
    e'16 d c b  a8 fs  g4  r | d'4  g16 e d b  r4  a8 g8
    \bar "|." 
}

exerciseThree = \relative c'' { 
    \key g \major
    \time 4/4
    g8 g'  g,8 8  8 fs'  g,8 8  | 8 e'  d16 c b a  g8 g'  r4 | 
    d8 c  a16 fs d8  c d  r4 | r4  g8 d  b'16 g d8  d' b | 
    g8 g'  fs16 e d8  e16 d c8  d16 c b8 | a g  r4  g4  c16 d  fs8 | 
    g16 e g8  e16 d e8  d8 b8  c16 a fs8 | g4  r8 g'8  e16 d c8  a8 g |
    \bar "|." 
}

exerciseFour = \relative c'' { 
    \key g \major
    \time 4/4
    d4  4  d8 b16 g  d'4 | r8 c8 8 [ 8 ] 8 b16 g f4  | 
    g8 d16 e  g8 8  8 d16 e  g4 | r4 g8 d16 e g8 d' g4 | 
    r4 g,8 16 16  r4  b8 16 16 | r4 d8 16 16 r4  f8 16 16 |
    e8 d16 e  g8 g,  a8 b16 c  d8 g | r8 a8 g df16 c  bf8 f16 fs g4 
    \bar "|." 
}

exerciseFive = \relative c'' { 
    \key g \major
    \time 4/4
    g8 8  r4  a8 8  r4 | b16 16 8  c8 8  r4  d8 16 16 | 
    e8 8  r4  fs8 8  r4 | g16 16 8  e16 16 8  r4  d8 c16 a16 | 
    r4  b8 a16 g16  r4  d16 g16 b8 | r4  a8 b16 c16  r4  c16 d16 e16 fs16 | 
    g16 16 8  b,8 8  c8 8  d8 e16 fs16 | g8 g,8  r4  g'8 g,16 fs16  g16 fs16 g8 
    \bar "|." 
}

exerciseSix = \relative c'' { 
    \key g \major
    \time 4/4
    r8 g  r g  r g  r b8 | g16 fs16 g8  16 fs16 g8  r4  r8 b8 | 
    g8 fs16 g16   d'8 b16 g16  r4 r8 fs'8 | g8 d8  r8 b8  g16 b16 d8  r8 fs8 | 
    g8 16 16  fs16 16 8  r4  r8 e8 | d16 16 8  r4  r8 c8  b8 a16 fs16 | 
    g8 b,16 d16  e16 fs16 g8  a8 g16 fs16  b16 a16 g8 | c16 b16 c8  a8 8  g16 fs16 e8  d8 fs16 g16 
    \bar "|." 
}

exerciseSeven = \relative c'' { 
    \key g \major
    \time 4/4
    d16 df c bf  g8 8  r4  df'?8 c16 bf | g8 8  r4  r8 bf8  c8 [ df8 ] | 
    d?16 f16 g8  r4  r8 g8  d,8 [ 8 ] | f'16 d16 df8  r4  r8 c8  bf16 g16 f8 | 
    d8 g8  r8 f8  g8 bf16 c16  bf8 c16 df16 | c16 df16 d8  df16 d16 f8  g8 8  r8 bf8 | 
    g8 d16 f16  g8 f16 d16  df16 c16 bf8  df?16 c16 bf8 | r8 d,?8  g8 [ g'8 ]  f16 d16 df8  c8 bf16  g16
    \bar "|." 
}

exerciseEight = \relative c'' { 
    \key g \major
    \time 4/4
    d4 r r r8 e16 fs | g4 r r r8 g16 d | a'4 r8 g16 e b'4 r8 c16 b | 
    b8 a4. r2 | r4 r8 d16 c b4 r8 a16 b | c4 r8 d,16 a' r4 r8 cs,8 ~ | 4 d4 r r8 c16 b | 
    a8 b16 c  b8 c16 d r4 r8 e16 ef | d4 r r8 g,16 16 4
    \bar "|." 
}

exerciseNine = \relative c' { 
    \key ef \major
    \time 4/4
    ef16 16 r8 r4 c16 16 r8 r4 | ef16 16 r8 f4  g16 16 r8 r4 | 
    f16 af r8  r4  g16 bf r8  r4 | c16 bf c bf  c d r8  ef16 16 r8 r4 | 
    r4 c16 16 r8 r4 bf16 16 r8 | r4  af16 f d f  g g r8 d'16 16 r8 | 
    ef16 16 r8  d16 16 r8  c16 16 r8  bf16 gf r8 | r4 g?16 ef r8  df16 16 r8  ef''16 16 r8  
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
                    \exerciseOne
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
                    \exerciseTwo
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
                    \exerciseThree 
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
                    \exerciseFour 
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
                    \exerciseFive 
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
                    \exerciseSix 
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
                    \exerciseSeven 
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
                    \exerciseEight 
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
                    \exerciseNine 
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