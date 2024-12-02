\version "2.24.0"

titleLeft = "After "
titleRight = "The Rain"
titleFull = "After The Rain"
composerName = "J. Coltrane"
arranger = ""
copyright = ""

%{

killPreview ; rm after-the-rain*pdf ;  lilypond ly/songs/jazz/after-the-rain.ly  ; for file in after-the-rain*.pdf ; do op $file ; done  

killPreview
rm after-the-rain*pdf
lilypond ly/songs/jazz/after-the-rain.ly
mv after-the-rain*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/after-the-rain*.pdf ; do op $file ; done  

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
    \tempo 4=76
    \time 3/4

    <>\xp s2.*3 \break

    \startSection "A"
    \repeat volta 2 {
        \bar "S[|:"
        s2.*6 \break
        s2.*6 \break
        s2.*6 \break
        s2.*6 \break
        s2.*6 
    }
    \alternative {
        { s2.*2 \endRepeat }
        { s2. s2 s8. \toCoda s16 \break }
    }

    \startSection "B"
    s2.*7 s4 <>_\markup { "D.S. al Coda" } s2 \break
    \bar "||"
    \noPageBreak
}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

structureCoda = \relative c' { 
    \noPageBreak
    \time 3/4
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \key af \major 
    \once \override Score.RehearsalMark.extra-offset = #'( -12 . -2 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    s2.*19
    \bar "|."
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . -1 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    s2.*3

    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -3 )
    % "A"
        s2.*32
        s2.*2

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "B"
    s2.*8
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
    ef2.:1.4.5.7.9- | s | s |    
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    bf2./af | g/af | af:maj7 | s | 
    df2.:maj7/ef | ef:7.9- | af:maj7 | s | 
    df2.:maj7/ef | ef:7.9- | af/ef | g/ef |
    df2.:m7.7+ | ef:1.4.5.7.9- | af:maj7 | s | 
    df2.:1.3.5.11+/af | s | af:maj7 | s |  
    df2.:1.3.5.11+/af | s | af:maj7 | s |  
    df2.:1.3.5.11+/af | s | af:maj7 | s |  
    df2.:1.3.5.11+/af | s | af:maj7 | s || af:maj7 | s ||

    ef2.:1.4.5.7.9- | s | s | s |     
    ef2.:1.4.5.7.9- | s | s | s |
}

chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    % \set noChordSymbol = ##t
    ef2.:1.4.5.7.9- | s | af:maj7 | s |  
    ef2.:1.4.5.7.9- | s | af:maj7 | s |  
    ef2.:1.4.5.7.9- | s | af:maj7 | s |  
    ef2.:1.4.5.7.9- | ef:1.4.5.7.9 | af:maj7 | s | s | s | s || 
}


melodyAPartOne = \relative c'' { 
    R2.*2 | r4 ef4 4 ||
    bf'2 ~ 8 g ~ | 4 ef2 ~ | 2. | r4 \tuplet 3/2 { ef8 8 8 } af8 c ~ | 
    c4. g4 ef8 ~ | 2. ~ | 4 r2  | r4 \tuplet 3/2 4 { r4 ef8  8 c'4 } | 
    c4. bf4. ~ | 2 ~ 8 af | 4  g2 | r2 f4 | 
    c2 ~ 8 bf ~ | 2 ~ 8 ef, |      
}
melodyAPartTwo = \relative c'' { 
    af2. ~ | 2. |
}
pianoFillPartOne = \relative c'' { 
    r2. | r4 <>^"piano" bf4. c8 |
}
pianoFillPartTwo = \relative c''' { 
    g2. ~ | 2 f8 g |
    bf4 ef,2 ~ | 2 ef8 f | g2. ~ | 4 af, f | 
    ef4 2 ~ | 2. | g'2. ~ | 4 f g | 
    c4. ef, ~ | 2 g,4 | 2. ~ | 4 f g | 
    af4 g2 | r4 <>^"tenor" ef' ef || af,4 g2 | r4 <>^"tenor" ef' ef ||      
}
melodyB = \relative c'' { 
    ef2. ~ | 4 8 8 8 8 | 8 bf8 8 c8 c16 df c8 | bf16 af ef af  bf8 8 8 af | 
    bf8 \glissando ef8 4 bf8 \glissando ef8 | 2. | R2. | r4 ef4 4 ||
}
melodyCoda = \relative c'' { 
    ef2. | r4 r8 ef8 8 [ g ] |  ef4 2 | r2 \tuplet 3/2 { ef8 f c } | 
    ef2. | r4 r8 ef8 c'[ bf ] | ef,2. | r4 r8 ef8 8 [ bf'] | 
    ef,2. | r4 r8 ef8 8 [ bf' ] | c2. | r2 c8 af | 
    ef2. | r4 r8 bf f8. c16 | ef2 ~ \tuplet 3/2 { ef8 f af } | bf4 ~ \tuplet 3/2 { bf8 c ef } f4 ~ | 
    \tuplet 3/2 4 { f8 ef c bf c bf ~ } 8 g | \tuplet 3/2 { f8 bf g ~ } 4 ef ~ | 2 r4 || 
}

melody = {
    \melodyAPartOne 
    <<
        \pianoFillPartOne \\
        \melodyAPartTwo
    >>
    \pianoFillPartTwo
    \melodyB 
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
    \score {
        \transpose c c <<
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
            short-indent = .25\cm
            indent = 1.25\cm
            ragged-right = ##f
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
    \score {
        \transpose bf, c <<
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
            short-indent = .25\cm
            indent = 1.25\cm
            ragged-right = ##f
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
        \transpose ef c <<
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
    \score {
        \transpose ef c <<
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
            short-indent = .25\cm
            indent = 1.25\cm
            ragged-right = ##f
        }
    }
}



