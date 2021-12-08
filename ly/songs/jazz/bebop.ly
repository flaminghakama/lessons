\version "2.19.81"

titleLeft = "Bebop"
titleRight = ""
title = "Bebop"
composerName = "J. B. 'D.' Gillespie"

%{

killPreview ; rm bebop*pdf ;  lilypond ly/songs/jazz/bebop.ly  ; for file in bebop*.pdf ; do op $file ; done  

killPreview
rm bebop*pdf
lilypond ly/songs/jazz/bebop.ly
mv bebop*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/bebop*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

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

\include "ly/ily/layout-songs.ily"

structure = \relative c' { 
    \key f \minor 
    \tempo "Fast Bebop"
    \time 4/4
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \partial 4*1

    \override Score.RehearsalMark #'extra-offset = #'( 2 . 1 )
    \startSection "Intro/Coda"

    s4 
    \bar "||"

    s1*10

    \override Score.RehearsalMark #'extra-offset = #'( -3 . -3 )
    \startSectionNoBarline "A"
    \bar "[|:"
    \repeat volta 2 { 
        s1*6 \break
    }
    \alternative { 
        { s1*2 \bar ":|]" }
        { s1*2 }
    }

    \startSection "B"
    s1*4 \break
    s1*4
    \startSection "A"
    s1*4 \break 
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s4 ||
    f1:m | s | s | s | 
    f2:m e:dim7 | f:m gf:dim7 | f:m e:dim7 | f:m c:7.5- |
    f1:m | s ||

    f2:m e:dim7 | f:m gf:9 | f:m g:dim7 | f:m/af g:dim7 |
    f2:m e:dim7 | f:m gf:9 | f:m g:dim7 | f4:m/af gf:7 f:m7 c:7.5- |
                           | f2:m g:dim7 | f4:m c:7 f:m c:7 |

    f1.:m7  bf2:aug7.9- | ef1:maj7 | s | 
    ef1.:m7  af2:aug7.9- | df1:maj7 | g2:m7.5- c:7.9- ||

    f2:m e:dim7 | f:m gf:9 | f:m g:dim7 | f:m/af g:dim7 |
    f2:m e:dim7 | f:m gf:9 | f:m g:dim7 | f4:m c:7 f2:m ||
}

melodyIntro = \relative c' {
    \tuplet 3/2 { f8 af c } || 
    f4 r8 c e4 r8 c | ef c d4 r \tuplet 3/2 { cs8 d cs } | 
    c8 af f4 bf4. g8 | af f r4 r r8 c | 

    f af g f  e g bf df | c bf af f  g bf df e | 
    f c af f  e g bf df | c af f4 gf4. e8 | 

    f4 c'8 c, ~ 8 c' c,4 | c' df8 c bf af gf e | 
}

melodyACommon = \relative c' {
    f8 af r f  g bf r g | af c r af  bf df r b | 
    c8 f r4 r2 | \tuplet 3/2 4 { c8 df c  bf af g } r4 r8 c, | 
    f8 af r f  g bf r g | af c r af  bf df r b | 
}

melodyAFirst = \relative c'' { 
    c8 f, r4 r2 | \tuplet 3/2 4 { af8 g f } e8 f r4 r8 c ||
}

melodyASecond = \relative c'' { 
    c8 f, r4 r2 | bf16 af gf f  e8 f r2 ||
}

melodyBridge = \relative c''' {
    bf8 af r c, g' gf f ff | ef c af f  df'4 b8 a | 
    bf8 g ef c  af' fs g ef | R1  

    af'8 gf r bf, f' ff ef d | df bf gf ef  cf'4 a8 g | 
    af4 r r \tuplet 3/2 { f8 af c } | df4 c8 gf ~ 4 r8 c, ||
}

melodyBridgeForBb = \relative c''' {
    bf8 af r c, g' gf f ff | ef c af f  df'4 cf8 a | 
    bf8 g ef c  af' fs g ef | R1  

    af'8 gf r bf, f' ff ef d | df bf gf ef  cf'4 bff8 g | 
    af4 r r \tuplet 3/2 { f8 af c } | df4 c8 gf ~ 4 r8 c, ||
}

melodyBridgeForAlto = \relative c'' {
    bf8 af r c, g' gf f ff | ef c af f  df'4 cf'8 a | 
    bf8 g ef c  af' fs g ef | R1  

    af8 gf r bf, f' ff ef d | df bf gf ef  cf'4 bff'8 g | 
    af4 r r \tuplet 3/2 { f8 af c } | df4 c8 gf ~ 4 r8 c, ||  
}

melodyALast = \relative c'' {
    \melodyASecond
}

melody = \relative c' { 
    \melodyIntro
    \melodyACommon
    \melodyAFirst
    \melodyASecond
    \melodyBridge
    \melodyACommon
    \melodyALast
}

melodyForBb = \relative c' { 
    \melodyIntro
    \melodyACommon
    \melodyAFirst
    \melodyASecond
    \melodyBridgeForBb
    \melodyACommon
    \melodyALast
}

melodyForAlto = \relative c' { 
    \melodyIntro
    \melodyACommon
    \melodyAFirst
    \melodyASecond
    \melodyBridgeForAlto
    \melodyACommon
    \melodyALast
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
        <<
            \new ChordNames \transpose g g { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsForm
            }
            \new Staff = "lead" \transpose g g {
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
            \new ChordNames \transpose g g { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsForm 
            }
            \new Staff = "lead" \transpose g g {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyForBb
                >>
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
        \transpose ef, c <<
            \new ChordNames \transpose g g { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.6
                \chordsForm 
            }
            \new Staff = "lead" \transpose g g {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melodyForAlto
                >>
            }
        >>
    }
}

