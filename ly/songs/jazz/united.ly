\version "2.19.81"

titleLeft = "United"
titleRight = ""
title = "United"
composerName = "W. Shorter"

%{

killPreview ; rm united*pdf ;  lilypond ly/songs/jazz/united.ly  ; for file in united*.pdf ; do op $file ; done  

killPreview
rm united*pdf
lilypond ly/songs/jazz/united.ly
mv united*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/united*.pdf ; do op $file ; done  

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
    \key f \major 
    \tempo 4=200
    \time 3/4
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3 . -3 )

    \partial 8*1
    s8

    \bar "[|:"
    \repeat volta 2 { 
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
        s2.*4 \break
    }
    \bar ":|]" 
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8 ||
    e2.:m7.5- | a:7.9- | d:m | b:m7.5- | 
    e2.:m7.5- | a:7.9- | d:m | g:7 | 
    c2.:m7 | f:7 | bf:maj7 | af4.:m7 df:7 | 
    gf2.:maj7 | g4.:m7 c:7 | f2.:maj7 | a:7.9-.13- ||
}

melodyIntro = \relative c' {
}

melodyACommon = \relative c' {
    d8 || g4-. 4-. 4-. | g8 e c4-- e8 d | R2. | r2 r8 d8 |
    g4-. 4-. 4-. | g8 e c4-- e8 d | R2. | r2 r8 d8 |
    g4-. 4-. 4-. | g8 e c4-- bf8 a | R2. | af'8 f df4-- cf8 bf | 
    R2. | a'8 f c4-- bf8 a | R2. | R2. | 
}

melodyAFirst = \relative c'' { 
}

melodyASecond = \relative c'' { 
}

melodyBridge = \relative c''' {
}

melodyBridgeForBb = \relative c''' {
}

melodyBridgeForAlto = \relative c'' {
}

melodyALast = \relative c'' {
}

melody = \relative c' { 
    \melodyACommon
}

melodyForBb = \relative c' { 
    \melodyACommon
}

melodyForAlto = \relative c' { 
    \melodyACommon
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

