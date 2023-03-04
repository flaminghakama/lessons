\version "2.19.81"

titleLeft = "Oleo"
titleRight = ""
title = "Oleo"
composerName = "S. Rollins"

%{

killPreview ; rm oleo*pdf ;  lilypond ly/songs/jazz/oleo.ly  ; for file in oleo*.pdf ; do op $file ; done  

killPreview
rm oleo*pdf
lilypond ly/songs/jazz/oleo.ly
mv oleo*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/oleo*.pdf ; do op $file ; done  

git add . ; git commit -m"adding song" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

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
    \key bf \major 
    \tempo "Fast Bebop"
    \time 4/4
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -5 . 2 )
    \startSectionNoBarline "A"
    \repeat volta 2 { 
        s1*4 \break
        s1*3 
    }
    \alternative { 
        { s1 \bar ":|]" }
        { s1 \bar "||" }
    }

    \startSectionNoBarline "B"
    s1*4 \break
    s1*4 \break
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
    f2:m7 bf:7 | ef2:6 ef:m6 | d:m7 g:7 | c:m7 f:7 | 
        c4:m7 f:7 bf2:6 ||

    d1:7 | s | g:7 | s |
    c1:7 | s | f:7 | s |

    bf2:6 g:7 | c:m7 f:7 | bf:6 g:m7 | c:7 f:7 | 
    f2:m7 bf:7 | ef2:6 ef:m6 | d:m7 g:7 | c4:m7 f:7 bf2:6 ||
}

melodyACommon = \relative c'' {
    r8 bf r g c4. bf8 | r g d'4 ~ 4 ef8 d | 
    r bf r g d' ef d c | bf g gs a r bf r g | 

    c4 r8 bf r g bf4 | r8 bf r g ef' d bf c | 
    r4 r8 g r bf r g | 
}
melodyAFirstEnding = \relative c'' {
    d4. f,8 d' c a f ||
}
melodyASecondEnding = \relative c'' {
    df8 bf c bf r2 | 
}

melody = \relative c' { 
    \melodyACommon
    \melodyAFirstEnding
    \melodyASecondEnding
    \comp #16
    <>\xmp
    \comp #16
    \melodyACommon
    \melodyASecondEnding
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

