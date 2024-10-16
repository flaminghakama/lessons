\version "2.19.15"
\include "english.ly"

titleLeft = "Clarinet"
titleRight = "Accidentals"
title = "Clarinet Accidentals"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

%{

rm clarinet-accidentals.pdf ; lilypond ly/exercises/clarinet/clarinet-accidentals.ly ; mv clarinet-accidentals.pdf pdf/exercises/clarinet/ ; open -a Preview pdf/exercises/clarinet/clarinet-accidentals.pdf 


rm clarinet-accidentals.pdf
lilypond ly/exercises/clarinet/clarinet-accidentals.ly 
mv clarinet-accidentals.pdf pdf/exercises/clarinet/
open -a Preview pdf/exercises/clarinet/clarinet-accidentals.pdf 


%}

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


plus = \markup { \fontsize #5 "+" } 

clarTabScale = #0.8
exerciseOne = \relative c' { 
    \key c \major
    \time 4/4
    \bar "[|:"
    fs8 [ ( f ] )  fs [ ( f ] ) fs [ ( f ] ) fs [ ( f ] ) 
    \bar ":|][|:"
    fs8^\midGbAlt [ ( f ] )  fs^\plus [ ( f ] ) fs^\plus [ ( f ] ) fs^\plus [ ( f ] ) 
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
    b?8^\lowBAlt [ ( bf ] )  b^\plus [ ( bf ] ) b^\plus [ ( bf ] ) b^\plus [ ( bf ] ) 
    \bar ":|][|:" \break
    c8 [ ( b ] )  c [ ( bf ] ) c [ ( b ] ) c [ ( bf ] ) 
    \bar ":|][|:"
    d8 [ ( b? ] )  d [ ( bf ] ) d [ ( b ] ) d [ ( bf ] ) 
    \bar ":|][|:" \break
    e8 [ ( b ] )  e [ ( bf ] ) e [ ( b ] ) e [ ( bf ] ) 
    \bar ":|][|:" 
    a8 [ ( b? ] )  a [ ( bf ] ) a [ ( b ] ) a [ ( bf ] ) 
    \bar ":|]"
}

exerciseThree = \relative c' { 
    \key c \major
    \time 4/4
    af1^\lowAb fs^\lowGbRight f?^\lowFRight  e^\lowERight \bar "|." \break 

    \bar "[|:"
    \mark "Close"
    g8 [ ( af ] )  g [ ( fs ] )  g [ ( af ] )  g [ ( fs ] )  
    \bar ":|][|:"
    \mark "Far"
    g8 [ ( f? ] ) g [ ( e ] )  g8 [ ( f ] ) g [ ( e ] ) 
    \bar ":|][|:" \break
    \mark "Top"
    g8 [ ( af ] )  g [ ( f? ] ) g [ ( af ] ) g [ ( f ] ) 
    \bar ":|][|:" 
    f [ ( g ] )  af [ ( g ] ) f [ ( g ] ) af [ ( g ] ) 
    \bar ":|][|:" \break
    \mark "Bottom"
    g8 [ ( fs ] )  g [ ( e ] ) g8 [ ( fs ] ) g [ ( e ] ) 
    \bar ":|][|:" 
    e8 [ ( g ] )  fs [ ( a ] ) g8 [ ( fs ] ) g [ ( e ] ) 
    \bar ":|][|:" \break
    \mark "F major"
    f8 [ ( g ] )  f [ ( a ] ) f [ ( bf ] ) f [ ( c' ] ) | 
    f,8 [ ( d' ] )  f, [ ( e' ] ) f, [ ( f' ] ) bf, [ ( g ] ) 
    \bar ":|][|:" \break
    \mark "E minor"
    e8 [ ( g ] )  e [ ( a ] ) e [ ( b' ] ) e, [ ( c' ] ) | 
    e,8 [ ( d' ] )  e, [ ( e' ] ) e, [ ( d' ] ) b [ ( g ] ) 
    \bar ":|]"
}

exerciseFour = \relative c' { 
    \key c \major
    \time 4/4
    \bar "[|:"
    g8 [ ( af^\lowAb ] )  g [ ( fs^\lowGbRight ] )  g [ ( af ] )  g [ ( fs ] )  
    \bar ":|][|:"
    g8 [ ( f^\lowFRight ] ) g [ ( e^\lowERight ] )  g8 [ ( f ] ) g [ ( e ] ) 
    \bar ":|][|:" \break
    g8 [ ( af ] )  g [ ( fs ] ) g8 [ ( f ] ) g [ ( e ] ) 
    \bar ":|][|:"
    f [ ( g ] )  af [ ( g ] ) f [ ( g ] ) af [ ( g ] ) 
    \bar ":|][|:" \break
    e8 [ ( g ] )  af [ ( g ] ) e [ ( g ] ) af [ ( g ] ) 
    \bar ":|][|:"
    f8 [ ( g ] )  f [ ( a ] ) f [ ( bf ] ) f [ ( c' ] ) 
    \bar ":|][|:" \break
    f,8 [ ( d' ] )  f, [ ( e' ] ) f, [ ( f' ] ) c [ ( a ] ) 
    \bar ":|][|:" \break
    e8 [ ( g ] )  e [ ( a ] ) e [ ( b ] ) e [ ( c ] ) 
    \bar ":|][|:" 
    e8 [ ( g ] )  fs [ ( a ] ) e [ ( g ] ) fs [ ( a ] ) 
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
    \bookpart {

        \header {
            title = ""
            subtitle = ""
            composer = ""
            arranger = ""
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseThree
                }
            >>
            \header {
                piece = "3 - Right hand pinky keys"
            }
        }

%{
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
        %}
    }
}