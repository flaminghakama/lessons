\version "2.24.0"

titleLeft = "Dizzy"
titleRight = "Atmosphere"
titleFull = "Dizzy Atmosphere"
composerName = "J. B. \"D.\" Gillespie"
arranger = ""
copyright = ""

%{

killPreview ; rm dizzy-atmosphere*pdf ;  lilypond ly/songs/jazz/dizzy-atmosphere.ly  ; for file in dizzy-atmosphere*.pdf ; do op $file ; done  

killPreview
rm dizzy-atmosphere*pdf
lilypond ly/songs/jazz/dizzy-atmosphere.ly
mv dizzy-atmosphere*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/dizzy-atmosphere*.pdf ; do op $file ; done  

git add . ; git commit -m"dizzy chords" ; git push 
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
  top-system-spacing.minimum-distance = #20

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

    \key af \major
    \tempo 2=264

    \partial 8 
    s8 

    \startSection "Intro"
    s1*8

    \startSection "Head"
    \repeat volta 2 { 
        \startRepeat
        s1*4
        s1*3
    }
    \alternative { 
        { s1 \endRepeat }
        { s1 }
    }

    \startSection "B"
    s1*8

    \startSection "A"
    s1*8

    \startSectionWithLabel "Solo Changes" "Out Chorus" 
    \startRepeat
    s1*8

    \startSection "A"
    s1*8

    \startSection "B"
    s1*8

    \startSection "A"
    s1*8

    \startSection "Coda"
    \endRepeat
    s1*9
    \bar "|."

}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -4 . 2 )

    s8 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 1 . 0 )
    % "Intro"
    s1*8 \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    % "Head"
    s1*4 
    s1*5 \break 

    % "B"
    s1*8 \break 

    % "A"
    s1*8

    \pageBreak 

    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( -9 . 0.4 )
    % "Out Chorus"
    s1*8 \break

    % ""
    s1*8 \break

    % "Out B"
    s1*8 \break 

    % "A"
    s1*4 \break 
    s1*3 \break 
    s1

    % "Coda"
    s1*4 \break 
    s1*5
}

rehearsalMarkTweaksForBb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -4 . 2 )

    s8 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 1 . 0 )
    % "Intro"
    s1*8 \break

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    % "Head"
    s1*4 
    s1*5 \break 

    % "B"
    s1*8 \break 

    % "A"
    s1*8

    \pageBreak 

    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( -7 . 0.4 )
    % "Out Chorus"
    s1*8 \break

    % ""
    s1*8 \break

    % "Out B"
    s1*8 \break 

    % "A"
    s1*8 \break 

    % "Coda"
    s1*9
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForC
}

chordsIntro = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    s8 
    s1*8
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    af2:6 f:m7 | bf:m7 ef:7.9- | af:6 f:m7 | bf:m7 ef:7.9- | 
    af2:6 f:m7 | bf:m7 ef:7.9- | af:6 df:6 | af:6 bf:m7 ||
        af:6 ef:7 || 

    d1:7 | s | df:7 | s | 
    c1:7 | b:7 | bf1:7 | a:7 || 

    af2:6 f:m7 | bf:m7 ef:7.9- | af:6 f:m7 | bf:m7 ef:7.9- | 
    af2:6 f:m7 | bf:m7 ef:7.9- | af:6 df:6 | af:6 bf:m7 || 
}
chordsSolos = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    af2:6 f:m7 | bf:m7 ef:7.9- | af:6 f:m7 | bf:m7 ef:7.9- | 
    ef2:m7 af:7 | df:7 d:dim7 | bf:m7 ef:7 | af:6 bf:m7 ||

    af2:6 f:m7 | bf:m7 ef:7.9- | af:6 f:m7 | bf:m7 ef:7.9- | 
    ef2:m7 af:7 | df:7 d:dim7 | bf:m7 ef:7 | af:6 ef:7 ||

    d1:9 | s | df:9.11+ | s | 
    c1:7 | b:7.13- | bf1:aug13.11+ | a:aug13.11+ || 

    af2:6 f:m7 | bf:m7 ef:7.9- | af:6 f:m7 | bf:m7 ef:7.9- | 
    ef2:m7 af:7 | df:7 d:dim7 | bf:m7 ef:7 | af1:6 ||
}
chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t
    % s1*7 | s2 s4 af4:6 | s1 ||
}


bassIntro = \relative c {
    ef8 ||
    r4 r8 ef'8 r4 r8 ef, | r4 r8 ef' r4 r8 ef, | r4 r8 ef' r4 r8 ef, | r4 r8 ef' r4 r8 ef, | 
    r4 r8 ef'8 r4 r8 ef, | r4 r8 ef' r4 r8 ef, | r4 r8 ef' r4 r8 ef, | r4 r8 ef' r2 | 
}
melodyIntro = \relative c'' { 
    r8 ||
    \tuplet 3/2 { af8 bf af } f2 \tuplet 3/2 { af8 bf af } | e4. ef8 r2 |  
    \tuplet 3/2 { af8 bf af } f2 \tuplet 3/2 { af8 bf af } | e4. ef8 r2 |  
    \tuplet 3/2 { af8 bf af } f2 \tuplet 3/2 { af8 bf af } | e4. ef8 r4 \tuplet 3/2 { af8 bf af } |
    f4 \tuplet 3/2 { af8 bf af } e4 \tuplet 3/2 { af8 bf af } | ef4 r r2 ||
}

melodyALastMeasure = \relative c' { 
     f2 \tuplet 3/2 { af8 bf af } f4 ||
}
melodyA = \relative c'' { 
     \tuplet 3/2 { af8 bf af } f4 \tuplet 3/2 { af8 bf af } f4 |
     \tuplet 3/2 { af8 bf af } f8 c' r2 |
     \tuplet 3/2 { af8 bf af } f4 \tuplet 3/2 { af8 bf af } f4 |
     \tuplet 3/2 { af8 bf af } f8 ef r2 |
     \tuplet 3/2 { af8 bf af } f4 \tuplet 3/2 { af8 bf af } f4 |
     \tuplet 3/2 { af8 bf af } f8 c' r2 |
     \tuplet 3/2 { af8 bf af } f2 \tuplet 3/2 { af8 bf af } |
     \melodyALastMeasure
}
melodyB = \relative c' { 
    r8 d4 e8 fs a b a | d b d e r2 | 
    r8 df,4 ef8 f af bf af | df bf df ef r2 | 
    r4 c, c'8 a ~ 4 | b,4 b'8 gs ~ 4 r | 
    r4 bf, bf'8 g ~ 4 | a,4 a'8 fs ~ 4 r | 
}
melodyOutAOne = \transpose c bf, \relative c' { 
    f8 g16 f  d8 ef  f a c a | bf4  ef8 cs d4 gf8 e | 
    f4 r ef?8 g, r ef' | d g, d' df r b c [ af ~ ] | 
    af2 \glissando g'8 bf af fs | g gf f gf? r4 r8 f | 
    r8 f,4 ef'8 d bf g f | a bf r4 r4 r8 
}
melodyOutATwo = \transpose c bf, \relative c'' { 
    d8 ~ ||
    d8 bf4 g8 bf4 r | r r8 bf f g bf \grace { cs8 } d ~ | 
    d8 bf r4 r2 | af8 f g f ~ 4 ef8 cs | 
    d8 f af c \tuplet 3/2 { bf8 c bf } af8 fs | g4 \tuplet 3/2 { fs8 g bf } f'8 ef r4 |
    r8 bf' g [ f ~ ] 8 ef4 cs8 | d bf r4 r2 ||
}
melodyOutB = \transpose c bf, \relative c'' { 
    d8 b c d  cs b bf a | gs b d fs ~ 4. e8 | 
    f8 df4 bf8 a?2 | af8 fs g ef'? r2 |
    d4 8 fs e d c a | gs4 fs8 e f cs' b a |
    gs8 fs' <fs d>2 r4 | g,?8 f'? <f df>2 r4 ||  
}

bassCoda = \relative c {
    ef8 ||
    r4 r8 ef'8 r4 r8 ef, | r4 r8 ef' r4 r8 ef, | r4 r8 ef' r4 r8 ef, | r4 r8 ef' r4 r8 ef, | 
    r4 r8 ef'8 r4 r8 ef, | r4 r8 ef' r4 r8 ef, | R1 | r2 r4 ef ~ | 2 r || 
}
melodyCoda = \relative c'' { 
    \tuplet 3/2 { af8 bf af } f2 \tuplet 3/2 { af8 bf af } | e4. ef8 r2 |  
    \tuplet 3/2 { af8 bf af } f2 \tuplet 3/2 { af8 bf af } | e4. ef8 r2 |  
    \tuplet 3/2 { af8 bf af } f2 \tuplet 3/2 { af8 bf af } | e4. ef8 r4 r8 f8 | 
    \tuplet 3/2 { af8 bf f } \tuplet 3/2 { af8 bf f } \tuplet 3/2 { af8 bf f } \tuplet 3/2 { af8 bf f } |
    \tuplet 3/2 { af8 bf f } g8 af r2 | R1 ||
}


melody = {
    \accidentalStyle default
    \melodyIntro
    \melodyA \melodyALastMeasure
    \melodyB
    \melodyA 

    \melodyOutAOne 
    \melodyOutATwo
    \melodyOutB
    \melodyA
    \melodyCoda
}

bassline = {
    \bassIntro
    s1*9
    s1*8
    s1*8

    s1*8
    s1*8
    s1*8
    s1*7 s2..
    \bassCoda
}


\paper {

  % First page spacing after header
  markup-system-spacing.padding = #4

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #20

  % Spacing in between systems
  system-system-spacing.padding = #2.4

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
                \chordsSolos
                \chordsCoda
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
            \new Staff = "bassline" \with {
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \clef bass
                    \bassline
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.75\cm
            \context {
                \Staff
                \RemoveAllEmptyStaves
            }
        }
    }
}

\paper {

  % First page spacing after header
  markup-system-spacing.padding = #5

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #20

  % Spacing in between systems
  system-system-spacing.padding = #2.6

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
                \chordsSolos
                \chordsCoda
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForBb
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
                \chordsSolos
                \chordsCoda
            }
            \new Staff = "lead" \with {
                \consists Merge_rests_engraver
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                \accidentalStyle modern-cautionary
                <<
                    \structure
                    \rehearsalMarkTweaksForBb
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
