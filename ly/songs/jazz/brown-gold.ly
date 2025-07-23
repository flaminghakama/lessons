\version "2.24.0"

titleLeft = "Brown "
titleRight = "Gold"
titleFull = "Brown Gold"
composerName = "A. Pepper"
arranger = ""
copyright = ""

%{

killPreview ; rm brown-gold*pdf ;  lilypond ly/songs/jazz/brown-gold.ly  ; for file in brown-gold*.pdf ; do op $file ; done  

killPreview
rm brown-gold*pdf
lilypond ly/songs/jazz/brown-gold.ly
mv brown-gold*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/brown-gold*.pdf ; do op $file ; done  

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

    \key ef \major
    \tempo 4=202
    \time 4/4


    \partial 4. 
    s4.

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

    s4.

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

    s4.

    ef2 ef:dim | f:m7 bf:7 | ef ef:dim | f:m7 bf:7 |
    ef2 ef:dim | f:m7 bf:7 | ef c:7 | f:m7 bf:7 ||
                            | ef bf:7 | ef1 ||

    g1:7 | s | c:7 | s | f:7 | s | bf:7 | s || 

    ef2 ef:dim | f:m7 bf:7 | ef ef:dim | f:m7 bf:7 |
    ef2 ef:dim | f:m7 bf:7 | ef bf:7 | ef1 ||
}

melodyPickup = \relative c' { 
    bf8 c4 || 
}
melodyACommon = \relative c' { 
    ef4 r8 bf  a4. af8 | r8 bf ( \tuplet 3/2 { c8 d ef ) } g8  bf g ef | 
    r4 r8 bf  a4. af8 | r8 bf ( \tuplet 3/2 { c8 d ef ) } g8  4. | 

    ef4 r8 bf  a4. af8 | r8 bf ( \tuplet 3/2 { c8 d ef ) } g8  bf g ef | 
}
melodyACommonForFlats = \relative c' { 
    ef4 r8 bf  bff4. af8 | r8 bf ( \tuplet 3/2 { c8 d ef ) } g8  bf g ef | 
    r4 r8 bf  bff4. af8 | r8 bf ( \tuplet 3/2 { c8 d ef ) } g8  4. | 

    ef4 r8 bf  bff4. af8 | r8 bf ( \tuplet 3/2 { c8 d ef ) } g8  bf g ef | 
}
melodyFirstEnding = \relative c'' { 
    r4 r8 c  r4 r8 f, | r4 r8 bf ~ 4 g ||
}
melodySecondEnding = \relative c'' { 
    r4 r8 g ~ 8 bf c ef ~ | 4 c8 ef  r2 ||
}

melodyB = \relative c'' { 
    <>\xmf \comp #16 
    <>\xmf \comp #14 r8 \melodyPickup
}

melody = {
    \melodyPickup
    \melodyACommon
    \melodyFirstEnding
    \melodySecondEnding 
    \melodyB 
    \melodyACommon
    \melodySecondEnding
}
melodyForFlats = {
    \melodyPickup
    \melodyACommonForFlats
    \melodyFirstEnding
    \melodySecondEnding 
    \melodyB 
    \melodyACommonForFlats
    \melodySecondEnding
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
        \transpose bf, c <<
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
        \transpose ef, c <<
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



