\version "2.19.81"

titleLeft = "Anthropology"
titleRight = ""
title = "Anthropology"
composerName = "C. Parker & D. Gillespie"

%{

killPreview ; rm anthropology*pdf ;  lilypond ly/songs/standards/anthropology.ly  ; for file in anthropology*.pdf ; do op $file ; done  

killPreview
rm anthropology*pdf
lilypond ly/songs/standards/anthropology.ly
mv anthropology*.pdf pdf/songs/standards
for file in pdf/songs/standards/anthropology*.pdf ; do op $file ; done  

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

\include "ly/ily/layout.ily"

structure = \relative c' { 
    \key bf \major 
    \tempo "Fast Bebop"
    \time 4/4
    \startSectionNoBarline "A"
    \repeat volta 2 { 
        s1*3 \break
        s1*3 \break
    }
    \alternative { 
        { s1*2 \bar ":|]" }
        { s1*2 \bar "||" }
    }

    \startSectionNoBarline "B"
    s1*4 \break
    s1*4
    \startSectionNoBarline "A"
    s1*4 \break 
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    bf2:6 g:7 | c:m7 f:7 | bf:6 g:m7 | c:7 f:7 | 
    bf1:7 | ef2:6 ef:m6 | d:m7 g:7 | c:m7 f:7 | 
        d2:m7 g:7 | c4:m7 f:7 bf2:6 ||

    d1:7 | s | g:7 | s |
    c1:7 | s | f:7 | s |

    bf2:6 g:7 | c:m7 f:7 | bf:6 g:m7 | c:7 f:7 | 
    bf1:7 | ef2:6 ef:m6 | d2:m7 g:7 | c4:m7 f:7 bf2:6 ||
}

melodyACommon = \relative c'' {
    bf8 d c b ef cs d f | r4 r8 ef r f ef4-. | 
    r8 d ef [ d ] c a bf d | c8 g bf a r4 r8 bf ~ | 

    bf4 g8 bf d bf r ff' | r8 ef r gf, ~ 8 bf c d |
}

melodyAFirst = \relative c'' { 
    f4-. r8 b, r af' r fs | g ef bf g d' f r f, |
}

melodyASecond = \relative c'' { 
    ef8 f d f r d ef [ g, ] | c g bf c r4 r8 
}

melodyBridge = \relative c'' {
    fs8 ~ ||
    fs4 g8 gs a fs g a | fs d r4 r r8 e | 
    f8 e d cs  e d b a | r4 r8 a' r a r a ~ | 

    a8 g e d ~ 4. a8 | \tuplet 3/2 { c16 d c } g8 bf c r4 r8 ef ~ |
    ef4 d8 c  b d c g | c4 bf8 a r4 r8 f ||
}

melodyALast = \relative c'' {
    ef8 f d f r d ef [ g, ] | c bf a bf r2 ||     
}

melody = \relative c' { 
    \melodyACommon
    \melodyAFirst
    \melodyASecond
    \melodyBridge
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
        \transpose bf c <<
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

