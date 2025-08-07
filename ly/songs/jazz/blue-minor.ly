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
  markup-system-spacing.padding = #0

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.padding = #1

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
    \tempo 4=172

    s8 
    \tempo "Swing"
    s2..

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
    \tempo Latin
    s1*7
    s8 
    \tempo "Swing"
    s2..

    \startSection "A"
    s1*8
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -5 . 3 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    s8
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )
    s2..

    \override Score.RehearsalMark.extra-offset = #'( -2 . -4 )
    % "A"
    s1*2 \break 
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark.extra-offset = #'( -3 . -4 )
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0.5 )
    % "B"
    s1*4 \break
    s1*3
    s8
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . -4 )
    s2..

    \override Score.RehearsalMark.extra-offset = #'( -3 . -4 )
    % "A"
    s1*4 \break
    s1*4 \break
}

rehearsalMarkTweaksForBb = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -5 . 3 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    s8
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0 )
    s2..

    \override Score.RehearsalMark.extra-offset = #'( -2 . -1 )
    % "A"
    s1*2 \break 
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark.extra-offset = #'( -3 . -4 )
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . 0.5 )
    % "B"
    s1*4 \break
    s1*3
    s8
    \once \override Score.MetronomeMark.extra-offset = #'( 0 . -4 )
    s2..

    \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    % "A"
    s1*4 \break
    s1*4 \break
}

rehearsalMarkTweaksForEb = \relative c' { 
    \rehearsalMarkTweaksForBb
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
    bf1:m13 | ef:7.9- | g1:m7.5- | c:7 |


    g2:m7.5- c:7 | f1:m | 
    g2:m7.5- c:7 | f1:m | 
    df1:9 | s | 
    g2:m7.5- c:7 | f1:m ||
}


chordRhythm = \new Voice \with {
        \consists "Pitch_squash_engraver"
    } \relative c' {
    \improvisationOn
    s1 ||

    c2 4. 8 | R1 | c2 4. 8  | R1 | 
    c4 r8 c8 r4 c | r8 c r4 c r8 c ~ | 
    c2.. 8 | R1 || c2.. \repeatTie 8 | R1 ||

    s1*7 R1 | 

    c2 4. 8 | R1 | c2 4. 8  | R1 | 
    c4 r8 c8 r4 c | r8 c r4 c r8 c ~ | 
    c2.. 8 | R1 ||
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
    bf8 ~ | 2 ~ 8 f df ef |
}
melodyASecondEnding = \relative c'' { 
    bf2 \repeatTie  af4 f8 8 | r2 r4 
}

melodyB = \relative c' { 
    f4 ||
    f'1 | f8 ef df c  a bf c df | ef1 ~ | 2 r4 f, |
    df'1 | df8 c bf af  g af bf df | c1 |
}
harmonyB = \relative c'' { 
    s4 ||
    af1 | g | g2.. gf8 | f2 r4 s4  |
    g1 | ff | f |
}

melodyAThirdEnding = \relative c'' { 
    bf8 ~ | 2 ~  8 af f8 8 | R1 || 
}

melody = {
    \melodyAPickup
    \melodyACommon
        \melodyAFirstEnding \melodyAPickup
        \melodyASecondEnding
    << 
        \melodyB \\
        \harmonyB 
    >>
    \melodyAPickup
    \melodyACommon
    \melodyAThirdEnding
    
}
melodyForFlats = {
    \melodyAPickup
    \melodyACommonForFlats
        \melodyAFirstEnding \melodyAPickup
        \melodyASecondEnding
    << 
        \melodyB \\
        \harmonyB 
    >>
    \melodyAPickup
    \melodyACommonForFlats
    \melodyAThirdEnding
    
}

\layout {
    \context {
        \Score
        % proportionalNotationDuration = #(ly:make-moment 1/2)
    }
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
            \new RhythmicStaff \with {
                    \remove "Staff_symbol_engraver"
                    \remove "Time_signature_engraver" 
                    \override VerticalAxisGroup.default-staff-staff-spacing = #'(
                        (padding . 0)
                    )
                } {
                \chordRhythm
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
                    \rehearsalMarkTweaksForBb
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
                    \rehearsalMarkTweaksForEb
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



