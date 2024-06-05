\version "2.24.0"

titleLeft = "Naima"
titleRight = ""
titleFull = "Naima"
composerName = "J. Coltrane"
arranger = ""
copyright = ""

%{

killPreview ; rm naima*pdf ;  lilypond ly/songs/jazz/naima.ly  ; for file in naima*.pdf ; do op $file ; done  

killPreview
rm naima*pdf
lilypond ly/songs/jazz/naima.ly
mv naima*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/naima*.pdf ; do op $file ; done  

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
  system-system-spacing.basic-distance = #0

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
    \tempo 4=176
    \time 4/4

    \startSection "A"
    \repeat volta 2 {
        \startRepeat
        s1*4 \break
    }

    \startSection "B"
    \endRepeat
    s1*4 \break
    s1*4 \break

    \startSection "A"
    \repeat volta 2 {
        \startRepeat
        s1*3 s2.. \toCoda s8 \break
        \endRepeat
    }
}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \key af \major 
    \once \override Score.RehearsalMark.extra-offset = #'( -10 . -2 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    s1*9
    \bar "||"    
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 1 . -2 )
    % \startSection "A"
    s1*4 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % \startSection "B"
    s1*4 
    s1*4 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % \startSection "A"
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

    df1:maj7/ef | gf:maj7/ef | a2:maj7/ef g:maj7/ef | af1:maj7/ef ||

    b1:maj7/bf | bf:13.9- | b1:maj7/bf | bf:13.9- | 
    bf:1.3.5+.7.9+ | b1:maj7/bf | af:maj9/bf | e:maj7.11+/bf |

    df1:maj7/ef | gf:maj7/ef | a2:maj7/ef g:maj7/ef | af1:maj7/ef ||
}
chordsFormForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    \chordsForm
}


chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    % \set noChordSymbol = ##t
    a2:maj7 g:maj7 | af1:maj7 | a2:maj7 g:maj7 | af1:maj7 | 
    a2:maj7 g:maj7 | af2:maj7 df:maj7 | af2:maj7 df:maj7 | af2:maj7 df:maj7 | 
    af1:maj7 | 
}

melody = \relative c'' { 
    c2. ~ \tuplet 3/2 { c8 bf ef } | f,1 | 
    af2 gf4 ~ \tuplet 3/2 { gf8 ef gf } | ef1 ||
    
    bf'2. ~ \tuplet 3/2 { bf8 8 8 } | g2. \tuplet 3/2 { r8 ef f } | 
    bf2. ~ \tuplet 3/2 { bf8 8 8 } | g2. \tuplet 3/2 { r8 f ef } | 
    df'2. ~ \tuplet 3/2 { df8 bf df } | bf2. \tuplet 3/2 { r8 gf bf } | 
    g2. ~ \tuplet 3/2 { g8 ef g } | ef1 ||

    c'2. ~ \tuplet 3/2 { c8 bf ef } | f,1 | 
    af2 gf4 ~ \tuplet 3/2 { gf8 ef gf } | ef1 ||
}

melodyCoda = \relative c'' { 
    af2 gf4 ~ \tuplet 3/2 { gf8 ef gf } | ef1 |
    af2 gf4 ~ \tuplet 3/2 { gf8 ef gf } | ef1 |
    af2 gf4 ~ \tuplet 3/2 { gf8 ef gf } | ef2 f |
    g2 af | bf c | \fermata ef1 ||
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
        \transpose af af <<
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
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
    \score {
        \transpose af af <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsCoda
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \accidentalStyle modern-cautionary
                    \structureCoda
                    \melodyCoda
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 2.25\cm
            ragged-right = ##f
        }
    }
}

