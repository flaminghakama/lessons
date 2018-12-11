\version "2.19.15"
\include "english.ly"

titleLeft = "Saxophone"
titleRight = "Chord Exercises"
composerName = "Elaine Paul"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
 	 
\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2018 Elaine Paul" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { Saxophone Chord Exercises }  }
    poet = "Saxophone"
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


%{

Tonic and dominant chords

Exercise 1: starting on chord root
    relative major 
        tonic ascending/descending
        dominant ascending/descending
        tonic descending/ascending
        dominant descending/ascending
    
    relative minor
        tonic ascending/descending
        dominant ascending/descending
        tonic descending/ascending
        dominant descending/ascending

Exercise 2: range of horn (normal)
    relative major 
        tonic ascending/descending
        dominant ascending/descending

    relative minor 
        tonic ascending/descending
        dominant ascending/descending

Exercise 3: range of horn (altissimo)
    relative major 
        tonic ascending/descending
        dominant ascending/descending

    relative minor 
        tonic ascending/descending
        dominant ascending/descending


%}


tonicDominantTriadChords = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1 | g | c | g |
    a1:m | e | a:m | e |
}
tonicDominantTriad = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
        \tuplet 3/2 4 { c8 e g  c g e } c2 | 
        \tuplet 3/2 4 { g'8 b d  g d b } g2 | 
        \tuplet 3/2 4 { c'8 g e  c e g } c2 | 
        \tuplet 3/2 4 { g8 d b  g b d } g2 
        \bar "||"
    }
    \relative c'' { 
        \tuplet 3/2 4 { a8 c e  a e c } a2 | 
        \tuplet 3/2 4 { e8 gs b  e b gs } e2 | 
        \tuplet 3/2 4 { a'8 e c  a c e } a2 | 
        \tuplet 3/2 4 { e8 b gs  e gs b } e2 | 
    }
    \bar "||"
}


tonicDominantTriadExchangeChords = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c4 g c g | c g c g | c4 g c2 |
    c4 g c g | c g c g | c1 

    a4:m e a:m e | a:m e a:m e | a:m e a2:m | 
    a4:m e a:m e | a:m e a:m e | a:m e a:m e | a1:m 

}
tonicDominantTriadExchange = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
        \tuplet 3/2 4 { 
            c8 e g  d' b g  e g c  g' d b | 
            g c e  b' g d  c e g  d' b g | 
            e g c  d b g } c2 | \break
        \tuplet 3/2 4 { 
            c8 g e  d g b  g e c  g b d | 
            e c g  d g b  c g e  b d g } | c1 | \break

    }
    \bar "||"

    \relative c'' { 
        \tuplet 3/2 4 { 
            a8 c, e  b' gs e  c e a  e' b gs  | 
            e a c  gs' e b  a c e  b' gs e | 
            c e a  e' b gs } a2 | \break
    }
    \relative c''' { 
        \tuplet 3/2 4 { 
            a8 e' c  gs b e  c a e  e gs b |
            a e c  b e gs  e c a  gs b e |
            c a e  e gs b  a e c  b e gs } | a1
    }
}

tonicDominantNormalRangeChords = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1 | s | g | s | 
    c1 | s | g | s |
    a1:m | s | e | s |
    a1:m | s | e | s |
}
tonicDominantNormalRange = { 
    \relative c' {  
        \tuplet 3/2 4 { c8 e g  c e g  c e c  g e c | g e c ~ } 2. |
    } 
    \relative c'' { 
        \tuplet 3/2 4 { g8 d b  d g b  d g b  d b g | d b g  d b d }  g2 | 
    }
    \relative c''' {
        \tuplet 3/2 4 { c8 e c  g e c  g e c  e g c | e g c  e c4 ~ } 2 | 
    }
    \relative c''' { 
        \tuplet 3/2 4 { g8 b d  b g d  b g d  b d g  | b d g  b d b } g2 | 
    }

    \relative c'' { 
        \tuplet 3/2 4 { a8 e c  e a c  e a c  e c a  | e c a  e c e } a2 | 
    }
    \relative c' { 
        \tuplet 3/2 4 { e8 b e  gs b e  gs b e  b gs e | b gs e  b e4 ~ } 2 | 
    }
    \relative c''' { 
        \tuplet 3/2 4 { a8 c e  c a e  c a e  c e a | c e a  c e c } a2 | 
    }
    \relative c''' { 
        \tuplet 3/2 4 { e8 b gs  e b gs  e b e  gs b e | gs b e ~ } e2. | 

    }
    \bar "||"
}

tonicDominantExtendedRangeChords = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1 | s | g | s | 
    c1 | s | g | s |
    a1:m | s | e | s |
    a1:m | s | e | s |
}
tonicDominantExtendedRange = {
    \relative c' { \tuplet 3/2 4 { c8 e g  c e g  c e g  e c g  | e c g  e c4 ~ } 2 | } \break
    \relative c'' { \tuplet 3/2 4 { g8 d b  d g b  d g b  d g d  | b g d  b g d  b d g ~ } g4 | } \break

    \relative c''' { \tuplet 3/2 4 { c8 e g  e c g  e c g  e c e  | g c e  g c e  g e c ~ } c4 | } \break
    \relative c'''' { \tuplet 3/2 4 { g8 d b  g d b  g d b  d g b | d g b  d g4 ~ } 2 | } \break
    \bar "||"
    
    \relative c'' { \tuplet 3/2 4 { a8 e c  e a c  e a c  e a e  | c a e  c a e  c e a ~ } 4 | } \break
    \relative c' { \tuplet 3/2 4 { e8 b8 e  gs b e  gs b e  gs e b | gs e b  gs e b } e2 | } \break

    \relative c'''' { \tuplet 3/2 4 { a8 e c  a e c  a e c  e a c | e a c  e a4 ~ } 2 | } \break
    \relative c''' { \tuplet 3/2 4 { e8 gs e  b gs e  b gs e  b e gs | b e gs  b e4 ~ } 2 | }
    \bar "||"
}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\bookpart {
    \header {
        subtitle = "Tonic and Dominant Triads"
    }
    << 
        \new ChordNames \transpose c c { \tonicDominantTriadChords }
        \new Staff \tonicDominantTriad
    >>
}

\bookpart {
    \header {
        title = ""
        subtitle = "Tonic and Dominant Triad Exchange"
    }
    << 
        \new ChordNames \transpose c c { \tonicDominantTriadExchangeChords }
        \new Staff \tonicDominantTriadExchange
    >>
}

\bookpart {
    \header {
        title = ""
        subtitle = "Tonic and Dominant Chords - Normal Range"
    }
    << 
        \new ChordNames \transpose c c { \tonicDominantNormalRangeChords }
        \new Staff \tonicDominantNormalRange
    >>
}

\bookpart {
    \header {
        title = ""
        subtitle = "Tonic and Dominant Chords - Extended Range"
    }
    << 
        \new ChordNames \transpose c c { \tonicDominantExtendedRangeChords }
        \new Staff \tonicDominantExtendedRange
    >>
}

%}