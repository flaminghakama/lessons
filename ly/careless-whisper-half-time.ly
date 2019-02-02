\version "2.19.15"
\include "english.ly"

titleLeft = "Careless Whisper"
titleRight = "(Half Time)"
title = "Careless Whisper (Half Time)"
composerName = "G. Michael & A. Ridgeley"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
  
\include "ly/ily/layout.ily"

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

alternateFingering = <>^\markup \raise #0.2 { \fontsize #5 \bold "+" }


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

lickChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1 ||
    d1:m | s | g:m | s2 a2:m7 |
    bf1:maj7 | s | a:m7 | s |  

    d1:m | s | g:m | s2 a2:m7 |
    bf1:maj7 | s | a:m7 | s |  

    d1:m | s | g:m | s2 a2:m7 |
    bf1:maj7 | s | a:m7 | s |  

    d1:m | s | g:m | s2 a2:m7 |
    bf1:maj7 | s | a:m7 | s |  
}

lick = \relative c' {
    
    \key f \major
    r2 r4 f4 \glissando \bar "||" 

    e'4 d8 a ~ 8 f4 e'8 ~ | 
    4 d8 a ~ 8 f4. |
    c'4 bf8 f ~ 8 d4 c'8 ~ | 
    4 bf8 f ~ 2 | \break
    
    bf4 a8 f ~ 8 d4 bf8 ~ | 
    2. r4 | 
    a4 bf c d |
    e f g a | \break

    e'4 d8 a ~ 8 f4 e'8 ~ | 
    4 d8 a ~ 8 f4. |
    c'4 bf8 f ~ 8 d4 c'8 ~ | 
    4 bf8 f ~ 2 | \break
    
    bf4 a8 f ~ 8 d4 bf8 ~ | 
    2. r4 | 
    a4 bf c d |
    e f g a \bar "||" \break

    a2. g4 ~ | 4 f2 d4 ~ | 
    4 r4 r2 | r2 r4 r8 d8 | \break

    a'2. g4 ~ | 2 ~ 8 d f d | 
    a'2 g | f4. e8 ~ 2 | \break

    r4 d8 e  f4 g8 a ~ | 1 | 
    r4 d,8 e  f4 g8 a ~ | 8 c a4 ~ 4. c8 | \break

    a4 bf a bf | a bf8 a ~  2 |
    a4 g8 8 ~ 2 | f e \bar "||"

}



% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\bookpart {
    \header {
        poet = "Eb Alto Saxophone"
    }

    \score {
        \transpose ef, c 
        << 
            \new ChordNames \transpose c c { 
                \lickChords 
            }
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \lick
            }
        >>
    }
 }
