\version "2.24.0"
\include "english.ly"

titleLeft = "Accidentals"
titleRight = "for Clarinet"
titleFull = "Accidentals for Clarinet"
composerName = "Elaine Alt"
arranger = ""
copyright = \markup \center-column { " "  \tiny "copyright © 2024 Elaine Paul" } 

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"


%{

killPreview ; rm accidentals-for-clarinet.pdf ; lilypond ly/exercises/clarinet/accidentals-for-clarinet.ly ; op accidentals-for-clarinet.pdf

rm accidentals-for-clarinet.pdf
lilypond ly/exercises/clarinet/accidentals-for-clarinet.ly 
mv accidentals-for-clarinet.pdf pdf/exercises/clarinet
open -a Preview pdf/exercises/clarinet/accidentals-for-clarinet.pdf

%}


\header {
    source = ""
    style = ""
    copyright = \markup \center-column { " "  \tiny "copyright © 2024 Elaine Paul" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \titleFull }  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
    instrumentName = ""
}

\paper {

    top-margin = #2
    right-margin = #14

    % First page spacing after header
    markup-system-spacing.padding = #3

    % Subsequent page spacing after header
    top-system-spacing.minimum-distance = #14

    % Spacing in between systems
    system-system-spacing.padding = #6


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
\include "ly/ily/layout.ily"

\include "ly/ily/clarinet-fingerings.ily"    


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
    af1^\lowAb fs^\lowGbRight f?^\lowFRight  e^\lowERight \bar "|.[|:" \break 

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

exerciseFour = \relative c { 
    \key c \major
    \time 4/4
    f1^\lowFLeft fs^\lowGbLeft  e^\lowELeft \bar "|.[|:" \break 

    g8^"outside" [ ( fs ] )  g [ ( f ] )   g [ ( fs ] )  g [ ( f ] )  
    \bar ":|][|:"
    f!8 [ ( g ] )  fs [ ( g ] )   f [ ( g ] )  fs [ ( g ] ) \break
    \bar ":|][|:" 

    g8^"inside" [ ( fs ] ) g [ ( e ] )  g [ ( fs! ] ) g [ ( e ] )
    \bar ":|][|:"
    fs8 [ ( g ] ) e [ ( g ] )  fs! [ ( g ] ) e [ ( g ] ) \break
    \bar ":|][|:"
    
    g8^"outside/inside" [ ( f ] ) g [ ( e ] )  g [ ( f ] ) g [ ( e ] ) 
    \bar ":|][|:"
    f8 [ ( g ] ) e [ ( g ] )  f [ ( g ] ) e [ ( g ] ) 
    \bar ":|][|:"
}


exerciseFive  = \relative c { 
    \key c \major
    \time 4/4
    \bar "[|:"
    e8^"L" [ ( g ] )  fs^"R" [ ( a ] )   g [ ( b ] )  a [ ( fs!^"R" ] ) | e1^"L"   
    \bar ":|][|:" \break
    e8^"R" [ ( g ] )  fs^"L" [ ( a ] )   g [ ( b ] )  a [ ( fs!^"L" ] ) | e1^"R"   
    \bar ":|][|:" \break


    e8^"L" [ ( gs^"R" ] )  fs^"L" [ ( a ] )   gs [ ( b ] )  a [ ( fs!^"R" ] ) | e1^"L"   
    \bar ":|][|:" \break
    e8^"L" [ ( gs^"R" ] )  fs^"L" [ ( a ] )   gs [ ( b ] )  a [ ( fs!^"L" ] ) | e1^"R"   
    \bar ":|][|:" \break



    e8^"L" [ ( f^"R" ] )  fs^"L" [ ( g ] )   gs^"R" [ ( g ] )  fs!^"L" [ ( f^"R" ] ) | e1^"L"   
    \bar ":|][|:" \break
    e8^"R" [ ( f^"L" ] )  fs^"R" [ ( g ] )   gs^"R" [ ( g ] )  fs!^"R" [ ( f^"L" ] ) | e1^"R"   
    \bar ":|][|:" 
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseThree
                }
            >>
            \header {
                piece = "3 - Right hand pinky keys"
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseFour
                }
            >>
            \header {
                piece = "4 - Left hand pinky keys"
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
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \exerciseFive
                }
            >>
            \header {
                piece = "5 - Alternating hand pinky keys"
            }
        }
    }
}
