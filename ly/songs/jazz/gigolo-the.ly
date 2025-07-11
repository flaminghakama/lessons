\version "2.24.0"

titleLeft = "The"
titleRight = "Gigolo"
titleFull = "The Gigolo"
composerName = "L. Morgan"
arranger = ""
copyright = ""

%{

killPreview ; rm gigolo-the*pdf ;  lilypond ly/songs/jazz/gigolo-the.ly  ; for file in gigolo-the*.pdf ; do op $file ; done  

killPreview
rm gigolo-the*pdf
lilypond ly/songs/jazz/gigolo-the.ly
mv gigolo-the*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/gigolo-the*.pdf ; do op $file ; done  

git add . ; git commit -m"tweaking chords" ; git push 
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

    \key ef \minor
    \tempo 4=156
    \time 3/4


    \partial 4
    s4

    \startSection "A"
    \repeat volta 2 {
        \bar "[|:"
        s2.*6
        s2.*6
        s2.*3
    }
    \alternative {
        { s2. \endRepeat }
        { s2. }
    }

    \startSection "B"
    s2.*6
    s2.*6
    s2.*4

    \startSection "A"
    s2.*2
    s2.*6
    s2.*8
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 

    \once \override Score.MetronomeMark.extra-offset = #'( -2 . 2 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    s4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -1 )
    % "A"
    s2.*4 \break 
    s2.*6 \break
    s2.*5
    s2.*2 \break

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -1 )
    % "B"
    s2.*6 \break
    s2.*6 \break
    s2.*4 

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -3 )
    % "A"
    s2.*2 \break
    s2.*6 \break
    s2.*8
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

    s4

    ef2.:m9 | e:maj9 | ef2.:m9 | e:maj9 | 
    ef2.:m9 | e:maj9 | ef2.:m7.7+ | e:maj9 | 
    ef2.:m9 | e:maj9 | ef2.:m9 | df:7 | 
    b2.:maj9 | bf:7 | ef:m9 | bf:7 || bf:7 ||

    bf2.:m7 | ef:7 | bf2.:m7 | ef:7 | 
    af2. | bf4.:m7 ef:7 | af2. | s | 
    c2.:m7.11 | s | s | f:7 |
    bf2.:7.8+.9+ | s | bf:13 | bf:aug7 |

    ef2.:m9 | e:maj9 | ef2.:m9 | e:maj9 | 
    ef2.:m9 | e:maj9 | ef2.:m7.7+ | e:maj9 | 
    ef2.:m9 | e:maj9 | ef2.:m9 | df:7 | 
    b2.:maj9 | bf:7 | ef:m9 | bf:7 ||
}
chordsFormForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    s4

    ef2.:m9 | ff:maj9 | ef2.:m9 | ff:maj9 | 
    ef2.:m9 | ff:maj9 | ef2.:m7.7+ | ff:maj9 | 
    ef2.:m9 | ff:maj9 | ef2.:m9 | df:7 | 
    cf2.:maj9 | bf:7 | ef:m9 | bf:7 || bf:7 ||

    bf2.:m7 | ef:7 | bf2.:m7 | ef:7 | 
    af2. | bf4.:m7 ef:7 | af2. | s | 
    c2.:m7.11 | s | s | f:7 |
    bf2.:7.8+.9+ | s | bf:13 | bf:aug7 |

    ef2.:m9 | ff:maj9 | ef2.:m9 | ff:maj9 | 
    ef2.:m9 | ff:maj9 | ef2.:m7.7+ | ff:maj9 | 
    ef2.:m9 | ff:maj9 | ef2.:m9 | df:7 | 
    cf2.:maj9 | bf:7 | ef:m9 | bf:7 ||
}

melodyACommon = \relative c'' { 
    \tuplet 3/2 { r8 a ( bf ) } ||
    ef4. bf8 \tuplet 3/2 { gf8 ( af bf ) } | cf8 af  r4  \tuplet 3/2 { r8 gf ( af ) } |
    bf2 \tuplet 3/2 { gf8 ( af bff ) } | af8 e ~ 4. d8 | 
    d8 ef bf2 ~ | 2 r4 |
    \tuplet 3/2 { bf'8 ( ef df ) } \grace { b8 ( } af2 ~ | 2 ) r8 bf | 

    ef4. bf8 \tuplet 3/2 { gf8 ( af bf ) } | cf8 df  r4  \tuplet 3/2 { r8 d ( f ) } |
    f8 gf ef2 | \tuplet 3/2 { f8 ( af f ) } df2 | 
    d8 ef cf2 | d4 f8 d r bf | 
    ef8 bf r df r 
}
melodyAEndings = \relative c'' { 
    f8 ~ 2 r8 e || f2\repeatTie r4 ||  
}
melodyACommonForFlats = \relative c'' { 
    \tuplet 3/2 { r8 a ( bf ) } ||
    ef4. bf8 \tuplet 3/2 { gf8 ( af bf ) } | cf8 af  r4  \tuplet 3/2 { r8 gf ( af ) } |
    bf2 \tuplet 3/2 { gf8 ( af bff ) } | af8 ff ~ 4. d8 | 
    d8 ef bf2 ~ | 2 r4 |
    \tuplet 3/2 { bf'8 ( ef df ) } \grace { cf8 ( } af2 ~ | 2 ) r8 bf | 

    ef4. bf8 \tuplet 3/2 { gf8 ( af bf ) } | cf8 df  r4  \tuplet 3/2 { r8 eff ( f ) } |
    f8 gf ef2 | \tuplet 3/2 { f8 ( af f ) } df2 | 
    d8 ef cf2 | d4 f8 d r bf | 
    ef8 bf r df r 
}
melodyAEndingsForFlats = \relative c'' { 
    f8 ~ 2 r8 ff || f2\repeatTie r4 ||  
}

melodyB = \relative c' { 
    ef8 f r4 r8 df | cf8. f16 ef2 | 
    df8 ef r4 \tuplet 3/2 { r8 bf ( af ) } | g4 ef'8 df4 bf8 | 
    c4 df8 ef4 f8 | g4 af8 bf4 g8 | 
    \tuplet 3/2 { af8 g f ~ } 4. d8 | ef2 r4 |
    f8 g r4 r8 ef | d g f2 | 
    ef8 f r4 r8 bf, | a2 r4 |
    bf'8 cf r4 r8 a | bf ef df4. cf16 df | 
    bf2. ~ | 2
}

melodyALast = \relative c'' { 
    f8 ~ | 2. ||
}

melody = {
    \melodyACommon
    \melodyAEndings
    \melodyB  
    \melodyACommon
    \melodyALast
}

melodyForFlats = {
    \melodyACommonForFlats
    \melodyAEndingsForFlats
    \melodyB  
    \melodyACommonForFlats
    \melodyALast
}

 harmonyACommon = \relative c'' { 
    \tuplet 3/2 { r8 a ( bf ) } ||
    bf4. gf8 \tuplet 3/2 { ef4 ( gf8 ) } | gs8 e  r4  \tuplet 3/2 { r8 fs ( gs ) } |
    gf2 \tuplet 3/2 { ef4 gf8 } | e8 b ~ 4.  bf8 | 
    bf4 gf2 ~ | 2 r4 |
    gf'4  d2 ( | e2 ) r8 bf' | 

    bf4. gf8 \tuplet 3/2 { ef4 ( gf8 ) } | af8 bf  r4  \tuplet 3/2 { r8 bf ( d ) } |
    d8 ef bf2 | df4 af2 | 
    bf4 gf2 | bf4 d8 bf r4 |  
    bf8 f r bf r  
}
harmonyAEndings = \relative c'' { 
    d8 ~ 2 r8 b || d2\repeatTie r4 ||  
}
harmonyACommonForFlats = \relative c'' { 
    \tuplet 3/2 { r8 a ( bf ) } ||
    bf4. gf8 \tuplet 3/2 { ef4 ( gf8 ) } | af8 ff  r4  \tuplet 3/2 { r8 gf ( af ) } |
    gf2 \tuplet 3/2 { ef4 gf8 } | ff8 cf ~ 4.  bf8 | 
    bf4 gf2 ~ | 2 r4 |
    gf'4  d2 ( | ff2 ) r8 bf | 

    bf4. gf8 \tuplet 3/2 { ef4 ( gf8 ) } | af8 bf  r4  \tuplet 3/2 { r8 bf ( d ) } |
    d8 ef bf2 | df4 af2 | 
    bf4 gf2 | bf4 d8 bf r4 |  
    bf8 f r bf r  
}
harmonyAEndingsForFlats = \relative c'' { 
    d8 ~ 2 r8 cf? || d2\repeatTie r4 ||  
}

harmonyB = \relative c' { 
    c8 df r4 r8 bf | af8. df16 c2 | 
    bf8 c r4 \tuplet 3/2 { r8 g ( f ) } | ef4 c'8 bf4 g8 | 
    af4 bf8 c4 df8 | ef4 f8 g4 ef8 | 
    \tuplet 3/2 { f8 ef df ~ } 4. bf8 | c2 r4 |
    d8 ef r4 r8 c | bf ef d2 | 
    c8 d r4 r8 g, | f2 r4 |
    ef'8 f r4 r8 e | f bf af4. r8 | 
    g2. ( | fs2 ) 
}

harmonyALast = \relative c'' { 
    d8 ~ | 2. ||
}

harmony = {
    \harmonyACommon
    \harmonyAEndings
    \harmonyB  
    \harmonyACommon
    \harmonyALast
}

harmonyForFlats = {
    \harmonyACommonForFlats
    \harmonyAEndingsForFlats
    \harmonyB  
    \harmonyACommonForFlats
    \harmonyALast
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
            indent = 1.25\cm
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
                \chordsFormForFlats
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
            indent = 1.25\cm
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
                \chordsFormForFlats
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
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "harmony-for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Harmony"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose c, c <<
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
                    \harmony
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 1.25\cm
        }
    }
}

\book {
  \bookOutputSuffix "harmony-for-Bb"
    \header {
        title = \title
        composer = \composerName
        poet = "Bb Harmony"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose bf,, c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsFormForFlats
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
                    \harmonyForFlats
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 1.25\cm
        }
    }
}


\book {
  \bookOutputSuffix "harmony-for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Eb Harmony"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef, c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsFormForFlats
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
                    \harmonyForFlats
                    \noPageBreak
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 1.25\cm
        }
    }
}






