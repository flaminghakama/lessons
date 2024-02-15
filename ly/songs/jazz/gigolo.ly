\version "2.24.0"

titleLeft = "The"
titleRight = "Gigolo"
titleFull = "The Gigolo"
composerName = "L. Morgan"
arranger = ""
copyright = ""


%{

killPreview ; rm gigolo*pdf ;  lilypond ly/songs/jazz/gigolo.ly  ; for file in gigolo*.pdf ; do op $file ; done  

killPreview
rm gigolo*pdf
lilypond ly/songs/jazz/gigolo.ly
mv gigolo*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/gigolo*.pdf ; do op $file ; done  

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

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

    #(define fonts
        (make-pango-font-tree 
            "Marker Felt" 
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
    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )

    \partial 4
    s4

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    \startSection "A"
    \repeat volta 2 { 
        \bar "[|:-|"
        s2.*6 \break
        s2.*6 \break
        s2.*3
    }
    \alternative { 
        { s2. \bar ":|]" }
        { s2. \break }    
    }

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    \startSection "B"
    s2.*6 \break
    s2.*6 \break 
    s2.*4

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    \startSection "A"
    s2.*2 \break
    s2.*6 \break
    s2.*8
    \bar "|."
    \pageBreak
    R2.
}

rehearsalMarkTweaksForC = \relative c' { 
    s4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "A"
    s2.*17

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "B"
    s2.*16

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"
    s2.*16
}

rehearsalMarkTweaksForBb = \relative c' { 
    s4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "A"
    s2.*17

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "B"
    s2.*16

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"
    s2.*16
}

rehearsalMarkTweaksForEb = \relative c' { 
    s4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "A"
    s2.*17

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "B"
    s2.*16

    \once \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "A"
    s2.*16
}

melodyACommon = \relative c'' { 
    \tuplet 3/2 { r8 a ( bf ) } ||
    ef4. bf8 \tuplet 3/2 { gf8 ( af bf ) } | cf8 af  r4  \tuplet 3/2 { r8 gf ( af ) } |
    bf2 \tuplet 3/2 { gf8 ( af a ) } | af8 e ~ 4. d8 | 
    d8 ef bf2 ~ | 2. |
    \tuplet 3/2 { bf'8 ( ef df ) } \grace { b8 ( } af2 ~ | 2 ) r8 bf | 

    ef4. bf8 \tuplet 3/2 { gf8 ( af bf ) } | cf8 df  r4  \tuplet 3/2 { r8 d ( f ) } |
    f8 gf ef2 | \tuplet 3/2 { f8 ( af f ) } df2 | 
    d8 ef cf2 | d4 f8 d r bf | 
    ef8 bf r df r 
}

melodyAEndings = \relative c'' { 
    f8 ~ 2 r8 e || f2.\repeatTie ||
}

melodyB = \relative c' { 
    ef8 f r4 r8 df | cf8. f16 ef2 | 
    df8 ef r4 \tuplet 3/2 { r8 bf ( af ) } | g4 ef'8 df4 bf8 | 
    c4 df8 ef4 f8 | g4 af8 bf4 g8 | 
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
        subtitle = ""
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
        \layout {
            ragged-right = ##f
            ragged-last = ##f
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
        \layout {
            ragged-right = ##f
            ragged-last = ##f
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
        \layout {
            ragged-right = ##f
            ragged-last = ##f
        }
    }
}
