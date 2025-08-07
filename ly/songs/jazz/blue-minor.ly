\version "2.24.0"

titleLeft = "Blue"
titleRight = "Minor"
titleFull = "Blue Minor"
composerName = "S. Clark"
arranger = ""
copyright = ""

%{

killPreview ; rm blue-minor*pdf ;  lilypond ly/songs/jazz/blue-minor.ly  ; for file in blue-minor*.pdf ; do op $file ; done  

killPreview
rm blue-minor*pdf
lilypond ly/songs/jazz/blue-minor.ly
mv blue-minor*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/blue-minor*.pdf ; do op $file ; done  

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
  markup-system-spacing.padding = #5

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.padding = #2

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

    \key f \minor
    \tempo 4=200

    s1

    \startSection "A"
    \repeat volta 2 {
        \startRepeat
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
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -5 . 3 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
 
   s1

    \override Score.RehearsalMark.extra-offset = #'( -1 . 0 )
    % "A"
    s1*2 \break 
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "B"
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "A"
    s1*4 \break
    s1*4 \break
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

    s1

    g2:m7.5- c:7 | f1:m | 
    g2:m7.5- c:7 | f1:m | 
    df1:9 | s | 
    g1:m7.5- | c:7 || g2:m7.5- c:7 | f1:m ||

    bf1:m7 | ef:7 | af:maj7 | f:7 |
    bf1:m7 | ef:7.9- | g1:m7.5- | c:7 |


    g2:m7.5- c:7 | f1:m | 
    g2:m7.5- c:7 | f1:m | 
    df1:9 | s | 
    g2:m7.5- c:7 | f1:m ||
}

melodyAPickup = \relative c' { 
    r8 c d [ e ] f g af bf ||
}

melodyACommon = \relative c'' { 
    b8 c bf af \tuplet 3/2 { b8 bf af } f8 8 |
    \melodyAPickup 
    bf4 af8 f  bf af f f | r8 c ef [ f ] r2 | 

    af8 f r af  f4 af8 f | r af f4  af8 f r 
}
melodyACommonForFlats = \relative c'' { 
    b8 c bf af \tuplet 3/2 { cf8 bf af } f8 8 |
    \melodyAPickup 
    bf4 af8 f  bf af f f | r8 c ef [ f ] r2 | 

    af8 f r af  f4 af8 f | r af f4  af8 f r 
}
melodyAFirstEnding = \relative c'' { 
    bf8 ~ | 2 ~ 8 f cs ef |
}
melodyASecondEnding = \relative c'' { 
    bf2 \repeatTie  af4 f8 8 | r2 r4 
}

melodyB = \relative c' { 
    f4 ||
    f'1 | f8 ef df c  a bf c df | ef1 ~ | 2 r4 f, |
    df'1 | df8 c bf af  g af bf df | c1 |
}

melodyAThirdEnding = \relative c'' { 
    bf8 ~ | 2 ~  8 af f8 8 | R1 || 
}

melody = {
    \melodyAPickup
    \melodyACommon
        \melodyAFirstEnding \melodyAPickup
        \melodyASecondEnding
    \melodyB
    \melodyAPickup
    \melodyACommon
    \melodyAThirdEnding
    
}
melodyForFlats = {
    \melodyAPickup
    \melodyACommonForFlats
        \melodyAFirstEnding \melodyAPickup
        \melodyASecondEnding
    \melodyB
    \melodyAPickup
    \melodyACommonForFlats
    \melodyAThirdEnding
    
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
            indent = 0.25\cm
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
            indent = 0.25\cm
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
            indent = 0.25\cm
        }
    }
}



