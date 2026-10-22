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

    \startSection "Intro"
    s1*8
    s1*4

    \startSection "Head"
    \repeat volta 2 { 
        \startRepeat
        s1*4
        s1*4
    }

    \startSection "B"
    \endRepeat
    s1*4
    s1*4

    \startSection "A"
    s1*4
    s1*4

    \startSection "Interlude"
    s1*6
    s1*4

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
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 3 )

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 4 . -1 )
    % "Intro"
    s1*8 
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -2 . 1 )
    % "Head"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -1 )
    % "B"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -1 )
    % "A"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . 1 )
    % "Interlude"
    s1*6 %\break
    s1*4 

    \pageBreak

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    % "Solo"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    % "A"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
    % "B"
    s1*4 \break
    s1*4 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
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

    s1*8 
    s1*4 ||

    bf1:7 | s | s | s | 
    bf1:7 | s | s | s || 

    d1:m7 | g:7.8+.9+ | c:7.11+ | s | 
    c1:m7 | g:7.8+.9+ | bf:7.11+ | s || 

    bf1:7 | s | s | s | 
    bf1:7 | s | s | s ||

}

introTenorInBb = \relative c'' {
    c4 r8 bf  r4 c | r8 bf r4  c r | bf8 8 8 8  c4 r8 bf | r4 c4 r2 ||
}

melodyAInBb = \relative c' {
    r4 r8 c  f g r bf | r a r g  a4 f | 
    r4 r8 c  f g r bf | r a r g  a4 r | 
}
melodyATwoInBb = \relative c' {
    r4 r8 c  f g r bf | r a r g  a4 f | 
    r4 r8 c  f g r bf | r a r g  f4 r | 
}
harmonyAInBb = \relative c' {
    r4 r8 f  a bf r d | r c r bf  c4 a | 
    r4 r8 f  a bf r d | r c r bf  c4 r | 
}
harmonyATwoInBb = \relative c' {
    r4 r8 f  a bf r d | r c r bf  c4 a | 
    r4 r8 f  8 bf r d | r c r bf  a4 r | 
}


melodyBInBb = \relative c'' { 
    a4 \tuplet 3/2 { a8 8 8 }  8 8 r8 a ~ | 4 8 c ~ 4 bf | 
    gs4. a8 ~ 4 r | R1 |

    g4 \tuplet 3/2 { g8 8 8 }  8 8 r8 g ~ | 4 8 bf ~ 4 af | 
    fs4. g8 ~ 2 | f8 8 8 e r2 |
}

melodyInterludeInBb = \relative c'' { 
    r4 r8 c  bf c r bf | r c r bf  r c r4 |
    r4 r8 c  a c r a | r c r a  r c r4 |
    r4 r8 c  bf c r bf | r c r bf  r c r4 |
    a8 8 8 8  c4 r8 bf | r4 c  r8 bf r bf |
    c4 r c4 4 | R1 |
}

soloInBb = \relative c'' { 
    r4 r8 c  r c4. ~ | 1 | 
    r8 bf r c  r d ( c4-. ) | bf-. c4 2 |
    
    r4 \tuplet 3/2 { g8 ( a bf }  a8 ) 8  r g | r a4 8 g2 ~ | 
    g8 f r e  d8 4. ~  | 8 e r f  g4  f8 e ~ ||

    e8 f4. r2 | r4 r8 e  r f d [ bf ] | 
    a8 g4. ~ 4 \tuplet 3/2 { bf8 ( d f ) } | a2.. g8 | 

    f8 d ( bf g )  a g r c ~ | 4 r8 c ~ 4. a8 | 
    bf8 c ( d ) e  f d ( bf ) g | a c r4 r4 r8 e ||

    r8 e r4  e4. e8 ~  | 8 8 r d  cs4 a'8 g | 
    fs8 d a g  fs d'4. | r2 r4 d8 e |
    f8 g e f  d4. a8 | c as b g' ~ 4 f8 ef |
    e c r4  c2 | f8 d bf f a4 r ||   

    r8 f' r a  r f r a | f4. a8 r2 | 
    r8 f r a  r a r a ~ | 8 f d4  f d8 f | 
    a8 f r4  f2 |     
}

melody = \transpose c bf, {
    <>\xmp R1*8
    \introTenorInBb
    \melodyAInBb
    \melodyATwoInBb
    \melodyBInBb
    <<
        {
            \harmonyAInBb
            \harmonyATwoInBb
        } \\ {
            \melodyAInBb
            \melodyATwoInBb            
        }
    \melodyInterludeInBb
    \soloInBb
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

