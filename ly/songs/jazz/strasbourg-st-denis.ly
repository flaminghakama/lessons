\version "2.19.81"

titleLeft = "Strasbourg /"
titleRight = "St. Denis"
title = "Strasbourg / St. Denis"
composerName = "R. Hargrove"

%{

killPreview ; rm strasbourg-st-denis*pdf ;  lilypond ly/songs/jazz/strasbourg-st-denis.ly  ; for file in strasbourg-st-denis*.pdf ; do op $file ; done  

killPreview
rm strasbourg-st-denis*pdf
lilypond ly/songs/jazz/strasbourg-st-denis.ly
mv strasbourg-st-denis*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/strasbourg-st-denis*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

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
    \key af \major 
    \startSection "Intro"
    s1*4 \break 
    s1*4 \break
    \startSectionNoBarline "A"
    \repeat volta 2 { 
        \bar "[|:"
        s1*4
        s1*3 s2 s4    
    }
    \alternative { 
        { s4 \bar ":|]" }
        { s4 }
    }
    \break
    \startSection "B"
    s1*4 \break
    s1*4     
    \bar "|."
}

bassIntro = \relative c { 
    bf4-. 4 r8 c r df ~ | 2 r8 c f,4 |
    bf4-. 4 r8 c r df ~ | 4. ef16 e  f c f,8 ~ 4 | 

    bf4-. 4 r8 c r df | r df d [ ef ] ~ 4 g8 bf | 
    af8 ef af,4  8 g gf f ~ | 8 c' g'4 f2 |
}

melodyA = \relative c''' { 
    af16 f ef f  c bf af bf  ef,8 bf' af4 ~ | 2  r |
    af'16 f ef f  c bf af bf  ef,8 bf' af4 ~ | 4 c8-> ef-^ r2 |

    af16 f ef f  c bf af bf  ef,8 bf' af4 ~ | 4 r16 f af8 c4 bf8. af16 |
    << 
        \relative c'' { 
            g2           8 8 af a ~ | 8. [ \grace { af16 g } gf16 ] ~ gf8 f ~ 4
        } \\
        \relative c'' {
            g8. f16 ef4  8 d df c ~ | 2.
        }
    >> r4 %| 
    r8
}

melodyBTop = \relative c'' { 
    r8 || s4  r8 c16 bf  af f ef df  c8 s8 | s4  r8 c'16 bf  af f ef df  c8 s8 | 
    s4  r8 c'16 bf  af f ef df  c8 s8 | r8 c16 df  ef f af bf  c8 s8  r8 c16 bf | 
    af16 f ef df  c4  r8 c'16 bf  af16 f ef df | c8 c'16 bf  af16 f ef df  c4  ef16 f af bf |
    g2  f8 ff ef d ~ | 2.
}
melodyBBottom = \relative c'' { 
    c16 bf || af f ef df  c8 s8  s4  r8 c16 df | ef f af bf  c8 s8  s4  r8 c16 bf | 
    af16 f ef df  c8 s8  s4  r8 c16 df | ef f af bf  c8 s8  r8 c16 bf  af f ef df |
    c4  r8 c'16 bf  af f ef df  c8 c'16 bf | af f ef df  c8 c'16 bf  af f ef df  c8. df16 | 
    c2 8 8 cs d ~ | 2.   
}

chordsEnding = \chordmode { 
    af1:maj7 | f:13.9- |
}
chordsForm = \chordmode { 
    bf2:m7 c:m7 | df:6 f:m7 | 
    bf2:m7 c:m7 | df:6 f:m7 | 
    bf2:m7 c:m7 | df:6 ef:7 | 
    \chordsEnding 
}

chordsHead = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1*6 
    af1:maj7 | f:9 ||
    \chordsForm
    s4
    \chordsForm
}

melody = \relative c' { 
    \clef bass 
    \bassIntro
    \clef treble
    \melodyA
    <<
        \melodyBTop \\
        \melodyBBottom
    >> r4
}
melodyForBb = \relative c' { 
    \transpose c, c \bassIntro
    \melodyA
    \transpose c c <<
        \melodyBTop \\
        \melodyBBottom
    >> r4
}
melodyForEb = \relative c' { 
    \transpose c,, c \bassIntro
    \melodyA
    \transpose c, c <<
        \melodyBTop \\
        \melodyBBottom
    >> r4
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsHead 
            }
            \new Staff = "lead" \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsHead 
            }
            \new Staff = "lead" \keepWithTag #'(Eb) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyForEb
                >>
                \noPageBreak
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        title = \title
        composer = \composerName
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsHead 
            }
            \new Staff = "lead"  \keepWithTag #'(Bb) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyForBb
                >>
                \noPageBreak
            }
        >>
    }
}
