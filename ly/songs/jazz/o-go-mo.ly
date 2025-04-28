\version "2.24.0"

titleLeft = "O Go"
titleRight = "Mo"
titleFull = "O Go Mo"
composerName = "K. Winding"
arranger = ""
copyright = ""

%{

killPreview ; rm o-go-mo*pdf ;  lilypond ly/songs/jazz/o-go-mo.ly  ; for file in o-go-mo*.pdf ; do op $file ; done  

killPreview
rm o-go-mo*pdf
lilypond ly/songs/jazz/o-go-mo.ly
mv o-go-mo*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/o-go-mo*.pdf ; do op $file ; done  

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
  system-system-spacing.padding = #3

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

    \startSection "Intro"
        s1*4 \break
        s1*4 \break


    \startSection "A"
    \repeat volta 2 {
        \startRepeat
        s1*4 \break
        s1*3
    }
    \alternative { 
        { s1 \endRepeat }
        { s1 \break }
    }

    \startSection "B"
    s1*4 \break
    s1*4 \break

    \startSection "A"
    s1*4 \break
    s1*4 \break
    \bar "||"
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -5 . 1 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 7 . 0 )
    % "Intro"
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -3 )
    % "A"
    s1*9

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "B"
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "A"
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
    s1*8
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    bf1 | c2:m7 f:7 | bf1 | c2:m7 f:7 |
    bf1 | c2:m7 f:7 | bf1 | c2:m7 f:7 || s1 ||
    d1:7.5- | s | g:7 | s | 
    c1:7.5- | s | f:7.5- | s ||
    bf1 | c2:m7 f:7 | bf1 | c2:m7 f:7 |
    bf2 g:7 | c:m7 f:7 | bf1 | s ||
}


melodyIntro = \relative c'' { 
    <>\xmp \comp #16
    <>\xmp \comp #16

}

melodyFirstA = \relative c'' { 
    s32 \grace { bf8 ( } f8*3/4 [ ) g8 bf d ] ~ 8 bf r4 | r4 r8 f  af16 bf af f  g8 f | 
    \stemDown r4 r8 f  af16 bf af f  g8 f  \stemNeutral | r8 f'8 4  r8 b,8 4 | 

    s32 \grace { bf8 ( } f8*3/4 [ ) g8 bf d ] ~ 8 bf r4 | r4 r8 f  af16 bf af f  a8 bf |
    \stemDown r4 r8 f  af16 bf af f  a8 bf \stemNeutral | r8 f' ef4  df8 b4. || R1 ||
}

melodyLastA = \relative c'' { 
    s32 \grace { bf8 ( } f8*3/4 [ ) g8 bf d ] ~ 8 bf r4 | r4 r8 f  af16 bf af f  g8 f | 
    \stemDown r4 r8 f  af16 bf af f  g8 f  \stemNeutral | r8 f'8 4 r8 b,8 4 | 

    s32 \grace { bf8 ( } f8*3/4 [ ) g8 bf d ] ~ 8 bf r4 | r4 r8 f  af16 bf af f  a8 bf |
    \stemDown r4 r8 f  af16 bf af f  a8 bf \stemNeutral | R1 ||
}

melodyB = \relative c'' { 
    d4 8 8 e d e fs | r gs4. ~ 4 r | 
    g8 8 r g r2 | R1 | 

    c,4 8 8  d c d e | r fs4. ~ 4 r | 
    f8 8 b, f' b,4 r | R1 | 
}

melodyFirstAForEb = \relative c'' { 
    s32 \grace { bf8 ( } f8*3/4 [ ) g8 bf d ] ~ 8 bf r4 | r4 r8 f  af16 bf af f  g8 f | 
    \stemUp r4 r8 f  af16 bf af f  g8 f  \stemNeutral | r8 f'8 4  r8 b,8 4 | 

    s32 \grace { bf8 ( } f8*3/4 [ ) g8 bf d ] ~ 8 bf r4 | r4 r8 f  af16 bf af f  a8 bf |
    \stemUp r4 r8 f  af16 bf af f  a8 bf \stemNeutral | r8 f' ef4  df8 b4. || R1 ||
}

melodyLastAForEb = \relative c'' { 
    s32 \grace { bf8 ( } f8*3/4 [ ) g8 bf d ] ~ 8 bf r4 | r4 r8 f  af16 bf af f  g8 f | 
    \stemUp r4 r8 f  af16 bf af f  g8 f  \stemNeutral | r8 f'8 4 r8 b,8 4 | 

    s32 \grace { bf8 ( } f8*3/4 [ ) g8 bf d ] ~ 8 bf r4 | r4 r8 f  af16 bf af f  a8 bf |
    \stemUp r4 r8 f  af16 bf af f  a8 bf \stemNeutral | R1 ||
}



melody = {
    \melodyIntro
    \melodyFirstA
    \melodyB
    \melodyLastA    
}
melodyForEb = {
    \melodyIntro
    \melodyFirstAForEb
    \transpose c c, \melodyB
    \melodyLastAForEb    
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
            indent = 0.75\cm
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
            indent = 0.75\cm
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
                    \melodyForEb
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.75\cm
        }
    }
}



