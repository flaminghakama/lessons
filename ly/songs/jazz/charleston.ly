\version "2.19.81"

titleLeft = "The"
titleRight = "Charleston"
title = "The Charleston"
composerName = "James P. Johnson"

\header {
    title = "The Charleston"
    composer = "James P. Johnson"
    poet = ""
    instrumentName = \poet
}

\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##t
  ragged-last-bottom = ##t

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout.ily"

strcture = \relative c' { 
    \key bf \major
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \bar "||" \break
        s1*4 \break
        s1*4 \bar "||" \break
      
        s1*4 \break
        s1*4 \bar "||" \break
        s1*4 \break
        s1*2
    } 
    \alternative {
        {
            s1*2
            \bar ":|]"
        }
        {
            s1*2
        }
    }  
    \bar "|."
}

chordsHead = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    bf1 | d:7 | g:7 | s | 
    c1:9 | f:9 | bf2 g:dim7 | f1:7 | 
    bf1 | d:7 | g:7 | g:m | 
    d1:m | a:7 | d:m | f:7 |

    bf1 | d:7 | g:7 | s | 
    c1:9 | f:9 | bf2 g:dim7 | f1:7 | 
    bf1 | bf:7 | ef | ef:m | 
    bf1:m | f:7 | 

    bf1 | c2:m f:7 |
    bf1 | s |  
}

melody = \relative c' { 
    f4 r8 f ~ 2 | fs4 r8 fs ~ 2 | g4 r8 g ~ 8 fs g4 | d'4 r8 g, ~ 2 | 
    g4 r8 d' ~ 2 | g,4 r8 d' ~ 2 | r8 g,4 r8 bf2 | a8 c a g ~ g a g gf | 
    
    f4 r8 f ~ 2 | fs4 r8 fs ~ 2 | g4 r8 g ~ 8 fs g4 | d'4 r8 d ~ 2 | 
    r8 a a [ a ~ ] a g f4 | r8 g g [ g ~ ] g f e4 | 
    r8 a a [ a ~ ] a g f4 | r8 a a [ a ~ ] a g f4 |

    f4 r8 f ~ 2 | fs4 r8 fs ~ 2 | g4 r8 g ~ 8 fs g4 | d'4 r8 g, ~ 2 | 
    g4 r8 d' ~ 2 | g,4 r8 d' ~ 2 | r8 g,4 r8 bf2 | a8 c a g ~ g f4. |
    
    bf4 r8 bf ~ 2 | r4 c4 ~ 8 bf c4 | bf4 r8 bf ~ 2 | r4 bf8 c ~ c bf c4  |
    g4 r8 g ~ 2 | r8 f g [ a ~ ]  a g f4 | 

    bf1 | a8 c4 a8 g4 gf |
    bf1 ~ | 2. r4 ||
}

\book {
  \bookOutputSuffix "concert"
    \header {
        subtitle = ""
    }
    \score {
        <<
            \new ChordNames \transpose c c { \chordsHead }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \strcture
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}