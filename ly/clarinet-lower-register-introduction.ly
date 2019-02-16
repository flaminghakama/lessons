\version "2.19.15"
\include "english.ly"

titleLeft = "Clarinet Lower"
titleRight = "Register Introduction"
title = "Clarinet Lower Register Introduction"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
 	 
\include "ly/ily/layout.ily"

\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2018 D. Elaine Alt" } 
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
\include "ly/ily/layout.ily"



songNotes = \relative c' { 
    \key g \major
    g4. a8 b4. g8 | b4 g b2 | 
    a4. b8 c c b a | c1 | 
    b4. c8 d4. b8 | d4 b d2 | 
    c4. d8 e e d c | e1 | 

    d4. g,8 a b c d | e1 |
    e4. a,8 b c d e | fs1 | 
    fs4. b,8 c d e fs | g2. g8 fs |
    e4 c fs d | g4 fs8 e d c b a | 
    g1 \bar "|." 
}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\bookpart {
    \header {
        piece = " "
    }
    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new Staff \transpose g g { 
                \include "ly/ily/staff-properties.ily"
                \mark "G Major"
                \songNotes
            }
        >>
    }
    \header {
        piece = " "
    }
    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new Staff \transpose g, c { 
                \include "ly/ily/staff-properties.ily"
                \mark "C Major"
                \songNotes
            }
        >>
    }
}
