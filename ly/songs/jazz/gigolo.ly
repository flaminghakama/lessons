\version "2.19.81"

titleLeft = "The"
titleRight = "Gigolo"
title = "The Gigolo"
composerName = "L. Morgan"

%{

killPreview ; rm gigolo*pdf ;  lilypond ly/songs/jazz/gigolo.ly  ; for file in gigolo*.pdf ; do op $file ; done  

killPreview
rm gigolo*pdf
lilypond ly/songs/jazz/gigolo.ly
mv gigolo*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/gigolo*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

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
    \key ef \minor 
    \tempo 4=176
    \time 3/4

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -3 )

    \partial 4
    s4

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -4 )
    \startSection "A"
    \repeat volta 2 { 
        \bar "[|:"
        s2.*15
    }
    \alternative { 
        { s2. \bar ":|]" }
        { s2. \break }    
    }

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -4 )
    \startSection "B"
    s2.*16

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -3 )
    \startSection "A"
    s2.*16
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 
    s4

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -4 )
    % "A"
    s2.*17

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -4 )
    % "B"
    s2.*16

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -3 )
    % "A"
    s2.*16
}

rehearsalMarkTweaksForBb = \relative c' { 
    s4

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -4 )
    % "A"
    s2.*17

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -4 )
    % "B"
    s2.*16

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -3 )
    % "A"
    s2.*16
}

rehearsalMarkTweaksForEb = \relative c' { 
    s4

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -4 )
    % "A"
    s2.*17

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -4 )
    % "B"
    s2.*16

    \once \override Score.RehearsalMark #'extra-offset = #'( -5 . -3 )
    % "A"
    s2.*16
}

melodyACommon = \relative c' { 
    \tuplet 3/2 { r8 a ( bf ) } ||
    ef4. bf8 \tuplet 3/2 { gf8 ( af bf ) } | cf8 af  r4  \tuplet 3/2 { r8 gf ( af ) } |
    bf2 \tuplet 3/2 { gf8 ( af a ) } | af8 e ~ 4. d8 | 
    d8 ef bf2 ~ | 2. |
    \tuplet 3/2 { bf'8 ( ef df ) } \grace { b8 ( } af2 ~ | 2 ) r8 bf | 

    ef4. bf8 \tuplet 3/2 { gf8 ( af bf ) } | cf8 df  r4  \tuplet 3/2 { r8 d ( f ) } |
    f8 gf ef2 | \tuplet 3/2 { f8 ( af f ) } df2 | 
    d8 ef cf2 | d4 f8 d r bf | 
    ef8 bf r df4 
}

melodyAEndings = \relative c'' { 
    f8 ~ 2 r8 e || f2.\repeatTie ||
}

melodyB = \relative c' { 
    ef8 f r4 r8 df | cf8. f16 ef2 | 
    df8 ef r4 \tuplet 3/2 { r8 bf ( af ) } | g4 ef'8 df ~ 8 bf | 
    c4 df8 ef ~ 8 f | g4 af8 bf ~ 8 g | 
    \tuplet 3/2 { af8 g f ~ } 4. d8 | ef2. |
    f8 g r4 r8 ef | d g f2 | 
    ef8 f r4 r8 bf, | a2. |
    bf'8 cf r4 r8 af | bf ef df4. cf16 df | 
    bf2. ~ | 2
}

melodyALast = \relative c'' { 
    f8 ~ | f2. ||
}

melody = \relative c'' { 
    \accidentalStyle default
    \melodyACommon
    \melodyAEndings
    \melodyB
    \melodyACommon
    \melodyALast
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s4 ||
    ef2.:m | e:maj7 | ef2.:m | e:maj7 | 
    ef2.:m | e:maj7 | ef2.:m | e:maj7 | 
    ef2.:m | e:maj7 | ef2.:m | df:7 | 
    b2.:7 | bf:7 | ef:m9 | s || s ||

    bf2.:m7 | ef:7 | bf2.:m7 | ef:7 | 
    af2. | bf4.:m7 ef:7 | af2. | s | 
    c2.:m7.11 | s | s | f:7 |
    bf2.:7 | s | s | s |

    ef2.:m | e:maj7 | ef2.:m | e:maj7 | 
    ef2.:m | e:maj7 | ef2.:m | e:maj7 | 
    ef2.:m | e:maj7 | ef2.:m | df:7 | 
    b2.:7 | bf:7 | ef:m9 | s || s ||
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(bop)"
    }
    \score {
        \transpose c c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    \melody
                >>
                \noPageBreak
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
        subtitle = "(bop)"
    }
    \score {
        \transpose bf, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForBb
                    \melody
                >>
                \noPageBreak
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
        subtitle = "(bop)"
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff 
            \with { \consists "Merge_rests_engraver" } 
            \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \rehearsalMarkTweaksForEb
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}
