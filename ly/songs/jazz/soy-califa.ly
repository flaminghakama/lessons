\version "2.24.0"

titleLeft = "Soy"
titleRight = "Califa"
titleFull = "Soy Califa"
composerName = "D. Gordon"
arranger = ""
copyright = ""

%{

killPreview ; rm soy-califa*pdf ;  lilypond ly/songs/jazz/soy-califa.ly  ; for file in soy-califa*.pdf ; do op $file ; done  

killPreview
rm soy-califa*pdf
lilypond ly/songs/jazz/soy-califa.ly
mv soy-califa*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/soy-califa*.pdf ; do op $file ; done  

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

    \startSection "Solo"
    s1*4
    s1*4
    \startSection "A"
    s1*4
    s1*4
    \startSection "B"
    s1*4
    s1*4
    \startSection "A"
    s1*4
    s1*4

}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -5 . -1 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 1 . -2 )
    % "Solo"
    s1*4 \break
    s1*4 \break
    % "A"
    s1*4 \break
    s1*4 \break
    % "B"
    s1*4 \break
    s1*4 \break
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

chordsIntro = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    bf1:7 | s | s | s | 
    bf1:7 | s | s | s || 
    bf1:7 | s | s | s | 
    bf1:7 | s | s | s ||

}


soloAInBb = \relative c'' { 
    r4 r8 c  r c4. ~ | 1 | 
    r8 bf r c  r d ( c4-. ) | bf-. c4 2 |
    
    r4 \tuplet 3/2 { g8 ( a bf }  a8 ) 8  r g | r a4 8 g2 ~ | 
    g8 f r e  d8 4. ~  | 8 e r f  g4  f8 e ~ ||

    e8 f4. r2 | r4 r8 e  r f d [ bf ] | 
    a8 g4. ~ 4 \tuplet 3/2 { bf8 ( d f ) } | a2.. g8 | 

    f8 d ( bf g )  a g r c ~ | 4 r8 c ~ 4. a8 | 
    bf8 c ( d ) e  f d ( bf ) g | a c r4 r4 r8         
}

solos = \transpose c bf, {
    \soloAInBb
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose bf,, c <<
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
                    \solos
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

