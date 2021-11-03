\version "2.19.81"

titleLeft = "Tin Tin"
titleRight = "Deo"
title = "Tin Tin Deo"
composerName = "W. G. Fuller & C. Pozo"

%{
/Users/elaine/git/lessons/ly/songs/jazz/tin-tin-deo.ly
killPreview ; rm tin-din-deo*pdf ;  lilypond ly/songs/jazz/tin-din-deo.ly  ; for file in tin-din-deo*.pdf ; do op $file ; done  

killPreview
rm tin-din-deo*pdf
lilypond ly/songs/jazz/tin-din-deo.ly
mv tin-din-deo*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/tin-din-deo*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #8

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

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 
    \key c \minor 
    \time 4/4
    \partial 2*1
    s2
    \startSection "A"
    %\repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        \startSection ""
        s1*4 \break
        s1*3 s2
    %}
    %\alternative { 
    %    { s2 \bar ":|]" }
    %    { s2 }
    %} 
        s2 
        \startSection "A2"
        s1*4 \break
        s1*4 \break
        \startSection ""
        s1*4 \break
        s1*4

    \startSection "B"
    s1*4 \break
    s1*4 \break
    \startSection ""
    s1*4 \break 
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
}
chordsForFlats = \chordmode { 
    \chordsForm
}

emb = { \grace { df16 c } } 

melodyAFirst = \relative c' {
    r4 \tuplet 3/2 { r8 f8 af } ||
    \tuplet 3/2 { c4 4 bf } c4 \tuplet 3/2 { c8 bf c ~ } | 4. bf8  c4 \emb bf8 c8 \emb | 
    bf8 f4 8 af8 f4. | r2   

    r4 \tuplet 3/2 { r8 f8 af } |
    \tuplet 3/2 { c4 4 bf } c4 \tuplet 3/2 { c8 bf c ~ } | 4. bf8  c4 \emb bf8 c8 \emb | 
    bf8 f4 8 af8 f4. | r2

    r8 f af [ f ] || ef8 2.. | r2 ef4. c8 ~ | 8 ef f8. 16 ~ 16 ef f8 ~ 4 | r2      
    r8 a4 f8 ~ | 8 c ef8 8 ~ 2 | r4 r8 ef8 ~ 4. c8 ~ | 8 ef f8 8 ~ 2 | r2      
}
melodyASecond = \relative c' {
    r4 \tuplet 3/2 { r8 f8 af } ||
    \tuplet 3/2 4 { c8 8 bf  c c bf  c c bf  c c bf | 
    c c bf  c4 \emb bf8 } c4 \emb bf8 c ~ | 
    c8 [ \emb bf8 ] c4 \emb  b8 c4 \emb bf8 | 
    c4 \emb bf8 af8 ~ 8 f gf e |

    \tuplet 3/2 4 { f4 c'8  r c bf } c4 \tuplet 3/2 { c8 bf c ~ } | 2 r8 bf c [ \emb bf ] |
    c8 [ \emb bf  f8 8 ] af f4. | r2 

    r8 f af [ f ] || ef8 2.. | r2 ef4. c8 ~ | 8 ef f8. 16 ~ 16 ef f8 ~ 4 | r2      
    r8 af4 f8 ~ | 8 c ef8 8 ~ 2 | r4 r8 ef8 ~ 4. c8 ~ | 8 ef f8 8 ~ 2 | r2      
}

melody = \relative c'' {
    \melodyAFirst
    \melodyASecond
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        title = \title
        composer = \markup \italic { "composed by" \composerName }
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(As played by Dizzy Gillespie)"
    }
    \score {
        <<
            \new ChordNames \transpose e e { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff = "lead" \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
            }
        >>
    }
}

