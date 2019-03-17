\version "2.19.15"
\include "english.ly"

titleLeft = "Clarinet"
titleRight = "Accidentals"
title = "Clarinet Accidentals"
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
exerciseOne = \relative c' { 
    \key c \major
    \time 4/4
    \bar "[|:"
    fs8 [ ( f ] )  fs [ ( f ] ) fs [ ( f ] ) fs [ ( f ] ) 
    \bar ":|][|:"
    fs8^"+" [ ( f ] )  fs^"+" [ ( f ] ) fs^"+" [ ( f ] ) fs^"+" [ ( f ] ) 
    \bar ":|][|:" \break
    g8 [ ( fs ] )  g [ ( f ] ) g8 [ ( fs ] )  g [ ( f ] ) 
    \bar ":|][|:"
    fs [ ( e ] ) f [ ( e ] ) fs [ ( e ] ) f [ ( e ] ) 
    \bar ":|][|:" \break
    fs [ ( d ] ) f [ ( d ] ) fs [ ( d ] ) f [ ( d ] ) 
    \bar ":|][|:"
    fs [ ( c ] ) f [ ( c ] ) fs [ ( c ] ) f [ ( c ] ) 
    \bar ":|]"
}

exerciseTwo = \relative c' { 
    \key c \major
    \time 4/4
    \bar "[|:"
    b8 [ ( bf ] )  b [ ( bf ] ) b [ ( bf ] ) b [ ( bf ] ) 
    \bar ":|][|:"
    b8^"+" [ ( bf ] )  b^"+" [ ( bf ] ) b^"+" [ ( bf ] ) b^"+" [ ( bf ] ) 
    \bar ":|][|:" \break
    c8 [ ( b ] )  c [ ( bf ] ) c [ ( b ] ) c [ ( bf ] ) 
    \bar ":|][|:"
    d8 [ ( b ] )  d [ ( bf ] ) d [ ( b ] ) d [ ( bf ] ) 
    \bar ":|][|:" \break
    e8 [ ( b ] )  e [ ( bf ] ) e [ ( b ] ) e [ ( bf ] ) 
    \bar ":|][|:" 
    a8 [ ( b ] )  a [ ( bf ] ) a [ ( b ] ) a [ ( bf ] ) 
    \bar ":|]"
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
                piece = "1 - F & F#"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseTwo
                }
            >>
            \header {
                title = ""
                composer = ""
                piece = "2 - B & Bb"
            }
        }
    }
}