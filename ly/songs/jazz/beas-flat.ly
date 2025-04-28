\version "2.24.0"

titleLeft = "Bea's"
titleRight = "Flat"
titleFull = "Bea's Flat"
composerName = "R. Freeman"
arranger = ""
copyright = ""

%{

killPreview ; rm beas-flat*pdf ;  lilypond ly/songs/jazz/beas-flat.ly  ; for file in beas-flat*.pdf ; do op $file ; done  

killPreview
rm beas-flat*pdf
lilypond ly/songs/jazz/beas-flat.ly
mv beas-flat*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/beas-flat*.pdf ; do op $file ; done  

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

    \key bf \major
    \tempo 2=110



    \partial 8
    s8 

    \startSection "Head"
    \repeat volta 2 {
        \startRepeat
        s1*4 \break
        s1*4 \break
        s1*4 \break
    }

    \startSection "Solos"
    \repeat volta 2 {
        \bar ":|][|:"
        s1*4 \break
        s1*4 \break
        s1*4
        \endRepeat
    }
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -5 . 3 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    s8
}

rehearsalMarkTweaksForBb = \relative c' { 
    \rehearsalMarkTweaksForC
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsIntro = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    s8
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    bf2 gf:m7 | cf:maj7 e:m7 | a:7 d:m7 | b:m7 e:7 | 
    ef1:7 | bf2:dim a:7 | bf c:m7 | d:m7 g:7 | 
    c1:m7 | f:7 | bf2 g:7 | c:m7 f:7 ||

    bf1:7 | ef:7 | bf:7 | f2:m7 bf:7 |
    ef1:7 | s | bf:7 | d2:m7 g:7 | 
    c1:m7 | f:7 | bf2 g:7 | c:m7 f:7 ||
}


melodyA = \relative c' { 
    d16 c ||
    bf8 d f a  df, ff af cf | ef, gf bf df  e, g b d | 
    cs8 b c as  b a bf f | r2 r8 c'4 bf8 | 

    s16 \grace { c8 ( } df4.*5/6 )  \grace { a8 ( } bf8 ~ 4 ) \grace { fs8 ( } g4 ) | r2 r8 bf g4 | 
    r8 c f,4  r8 bf r g | r8 c f,4 r2 | 

    r8 f e [ f ] gf f e f ~ | 8 e f fs  g gf f4 |
    r8 bf4.  f8 d ef f | g ef f g  d c r4 ||

    <>\xmp \comp #16
    <>\xmp \comp #16
    <>\xmp \comp #16
}

melody = {
    \melodyA 
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
                \chordsIntro
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
                \chordsIntro
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
                \chordsIntro
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



