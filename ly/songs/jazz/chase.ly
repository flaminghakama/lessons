\version "2.24.0"

titleLeft = "The "
titleRight = "Chase"
titleFull = "The Chase"
composerName = "T. Dameron"
arranger = ""
copyright = ""

%{

killPreview ; rm chase*pdf ;  lilypond ly/songs/jazz/chase.ly  ; for file in chase*.pdf ; do op $file ; done  

killPreview
rm chase*pdf
lilypond ly/songs/jazz/chase.ly
mv chase*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/chase*.pdf ; do op $file ; done  

git add . ; git commit -m"fixing pitch" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #0

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.padding = #4

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #0

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


\layout {
    \context {
        \Staff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
    \context {
        \RhythmicStaff
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 1)
            )
    }
    \context {
        \ChordNames
            \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                (basic-distance . 0)
                (minimum-distance . 0)
                (padding . 0)
            )
    }
}

structure = \relative c' { 

    \key af \major
    \tempo 4=140
    \time 4/4


    \partial 4
    s4

    \startSection "A"
    \repeat volta 2 {
        \bar "[|:"
        s1*6
    }
    \alternative {
        { s1*2 \endRepeat }
        { s1*2 }
    }

    \startSection "B"
    s1*8

    \startSection "A"
    s1*8
    \bar "||"
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -2 . 2 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    s4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "A"
    s1*2 \break 
    s1*4 \break

    s1*2

    s1*2 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -1 )
    % "B"
    s1*4 \break
    s1*4 \break
    
    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -3 )
    % "A"
    s1*4 \break
    s1*4 
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    s4

    af1 | bf2:m7 ef:7 | af1 | bf2:m7 ef:7 |
    af2 f:7 | bf:m7 ef:7 | af ef:dim | bf:m7 ef:aug7 ||
                         | af1 | af:7 ||

    df1 | df:m7 | c:m7 | f:7 | 
    bf1:7 | s | bf:m7 | ef:7 ||    

    af1 | bf2:m7 ef:7 | af1 | bf2:m7 ef:7 |
    af2 f:7 | bf:m7 ef:7 | af1 | ef:7 ||

}

melodyPickup = \relative c'' { 
    c8 df || 
}
melodyACommon = \relative c'' { 
    ef4 r8 ef ~ 4 af,8 bf ~ | 2 r4 c8 df | 
    ef8 f ef f ef4 af,8 bf ~ | bf2 r4 c8 df | 
    ef8 f ef gf ~ 4. f8 | df8 ef df ff ~ 4 ef8 c ~ | 
}
melodyFirstEnding = \relative c'' {
    c4. ef8 ~ 2 | bf4. b8 ~ 2 ||
    c1 \repeatTie ~ | 2 r || 
}
melodyThirdEnding = \relative c'' { 
    c1 ~ | 2 r || 
}

melodyB = \relative c'' { 
    <>\xmf \comp #16 
    <>\xmf \comp #16 
}

melody = {
    \melodyPickup
    \melodyACommon
    \melodyFirstEnding
    \melodyB 
    \melodyACommon
    \melodyThirdEnding
}
melodyForFlats = {
    \melodyPickup
    \melodyACommon
    \melodyFirstEnding
    \melodyB 
    \melodyACommon
    \melodyThirdEnding
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
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 2.25\cm
        }
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
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melodyForFlats
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 2.25\cm
        }
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
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsForm
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melodyForFlats
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 2.25\cm
        }
    }
}



