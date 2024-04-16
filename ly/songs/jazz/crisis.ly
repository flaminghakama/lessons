\version "2.24.0"

titleLeft = "Crisis"
titleRight = ""
titleFull = "Crisis"
composerName = "F. Hubbard"
arranger = ""
copyright = ""

%{

killPreview ; rm crisis*pdf ;  lilypond ly/songs/jazz/crisis.ly  ; for file in crisis*.pdf ; do op $file ; done  

killPreview
rm crisis*pdf
lilypond ly/songs/jazz/crisis.ly
mv crisis*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/crisis*.pdf ; do op $file ; done  

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
  system-system-spacing.basic-distance = #19

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

    \key c \minor
    \tempo 4=176
    \time 4/4

    \startSection "Intro"
    \startRepeat
    s1*4 \break
    \endRepeat
    s1*4 \break

    \startSection "A"
    \repeat volta 2 {
        \startRepeat
        s1*6 \break
        s1*6 \break
        s1*2
    }
    \alternative {
        { s1*2 \endRepeat }
        { s1*2 \break }
    }

    \startSection "B"
    s1*4 \break
    s1*4 \break

    \startSection "A"
    s1*6 \break
    s1*6 \break
    s2.. \toCoda s8 | 
    s1*3
    \bar "||"
}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \key c \minor 
    \once \override Score.RehearsalMark.extra-offset = #'( -10 . -2 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    \startRepeat
    s1*4
    \endRepeat
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -6 . 0 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \once \override Score.RehearsalMark.extra-offset = #'( 4 . -2 )
    s1*4 
    s1*4 
    \once \override Score.RehearsalMark.extra-offset = #'( -4 . -2 )
    % "A"
    s1*6 
    s1*6 
    s1*2 
    s1*2 
    s1*2

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "B"
    s1*4 
    s1*4 

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "A"
    s1*6 
    s1*6 
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
    c1:m13  | s | s | s |
    c1:m13  | s | s | s ||
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    c1:maj7 | s | d:maj7 | s | df:maj7 | s | 
    c1:maj7 | s | cf:maj7 | s | bf:maj7 | g:aug7 | 
    c1:m7 | f:7 | c1:m7 | f:7 || c1:m | s ||

    af1:7 | d2:m7 g:aug7 | c1:1.4.5.7 | bf2:m7 ef:7 | 
    a1:m | d:7 | g:aug7.9 | R1 ||

    c1:maj7 | s | d:maj7 | s | df:maj7 | s |  c:maj7 | s | 
    cf1:maj7 | s | bf:maj7 | g:aug7 | c:m7 | f:7 | c:m7 | f:7 ||
}
chordsFormForFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    c1:maj7 | s | eff:maj7 | s | df:maj7 | s | 
    c1:maj7 | s | cf:maj7 | s | bf:maj7 | g:aug7 | 
    c1:m7 | f:7 | c1:m7 | f:7 || c1:m | s ||

    af1:7 | d2:m7 g:aug7 | c1:1.4.5.7 | bf2:m7 ef:7 | 
    bff1:m | eff:7 | g:aug7.9 | R1 ||

    c1:maj7 | s | d:maj7 | s | df:maj7 | s |  c:maj7 | s | 
    cf1:maj7 | s | bf:maj7 | g:aug7 | c:m7 | f:7 | c:m7 | f:7 ||
}


chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    % \set noChordSymbol = ##t
    c1:m7 | g:aug7 | c:m7 | g:aug7 ||  
}

bassIntro = \transpose b, c \relative c { 
    b8 d fs b  r b r a | b4 b8 a b4 d,8 fs | b,8 d fs b  r b r a | b2.  d,8 fs ||
}


melodyIntro = \relative c'' { 
    r4 r8 a  r a4 g8 | a4 8 g  a4 g8 a | r4 r8 a  r a4 g8 | a4 r4
}
harmonyIntro = \relative c' { 
    r4 r8 d  r d4 c8 | d4 8 c  d4 c8 d | r4 r8 d  r d4 c8 | d4 r4
}

melodyACommon = \relative c' { 
    e4 f ||
    g1 ~ | 2 a4. g16 a | fs1 ~ | 1 | 
    f1 ~ | 2 g4 f | e1 ~ | 2. 4 | 
    ef1 ~ | 2 f4 ef | d1 |
}
melodyACommonForFlats = \relative c' { 
    e4 f ||
    g1 ~ | 2 a4. g16 a | gf1 ~ | 1 | 
    f1 ~ | 2 g4 f | e1 ~ | 2. 4 | 
    ef1 ~ | 2 f4 ef | d1 |
}
melodyACommonPartTwo = \relative c'' { 
    r8 ef r ef ~ 4 c8 bf | c4. 8 r2 | 
    r8 ef r ef ~ 4 c8 bf | c4. 8 r2 |
}
harmonyACommonPartTwo = \transpose b, c \relative c' { 
    r8 <fs a,> r <fs as,> ~ 4 <d fs,>8 <b e,> | <d fs,>4. 8 r2 | 
    r8 <fs a,> r <fs as,> ~ 4 <d fs,>8 <b e,> | <d fs,>4. 8 r2 | 
}
melodyAFirstEndings = \relative c' {
     r2 e4 f || c'4. 8 r2 | r2 
}
melodyBridge = \relative c'' {
    r8 c r bf ||
    af8 g gf f  ef gf bf df | d4-. 4-. ef-- d8 c ~ | 1 ~ | 2. a8 b | 
    c2. a8 c | d4. c8  d c d g, ~ | 2 bf8 g f g | r2 
}

harmonyACommon = \relative c' { 
    s2 ||
    e1 ~ | 1 | d ~ | 1 | 
    df1 ~ | 1 | c1 | 1 | 
    cf1 ~ | 1 | bf1 | 
}
harmonyACommonForFlats = \relative c' { 
    s2 ||
    e1 ~ | 1 | eff ~ | 1 | 
    df1 ~ | 1 | c1 | 1 | 
    cf1 ~ | 1 | bf1 | 
}


melodyCoda = \relative c'' { 
    r8 ef r ef ~ 4 c8 bf | c4. 8 r2 | r8 ef r ef ~ 4 c8 bf | c4. 8 r2 ||
}

melody = {
    <<
        \melodyACommon \\
        \harmonyACommon
    >>
    <<
        \melodyACommonPartTwo \\
        \harmonyACommonPartTwo
    >>
    \melodyAFirstEndings
    \melodyBridge
    <<
        \melodyACommon \\
        \harmonyACommon
    >>
    <<
        \melodyACommonPartTwo \\
        \harmonyACommonPartTwo
    >>
    R1 ||
}
melodyForFlats = {
    <<
        \melodyACommonForFlats \\
        \harmonyACommonForFlats
    >>
    <<
        \melodyACommonPartTwo \\
        \harmonyACommonPartTwo
    >>
    \melodyAFirstEndings
    \melodyBridge
    <<
        \melodyACommon \\
        \harmonyACommon
    >>
    <<
        \melodyACommonPartTwo \\
        \harmonyACommonPartTwo
    >>
    R1 ||
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
        \transpose c b, <<
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
                \clef bass 
                <<
                    \structure
                    \rehearsalMarkTweaksForC
                    {
                        \bassIntro
                        \clef treble
                        <<
                            \melodyIntro 
                            \harmonyIntro
                        >>
                        \melody
                    }
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
    \score {
        \transpose c b, <<
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
                    <<
                        \melodyCoda \\
                        \harmonyACommonPartTwo
                    >>
                >>
            }
        >>
        \layout { 
            short-indent = 1.25\cm
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
        \transpose bf, c \transpose c b, <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsIntro
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
                    {
                        \transpose c, c \bassIntro
                        \clef treble
                        <<
                            \melodyIntro 
                            \harmonyIntro
                        >>
                        \melodyForFlats
                    }
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
    \score {
        \transpose bf, c \transpose c b, <<
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
                    <<
                        \melodyCoda \\
                        \harmonyACommonPartTwo
                    >>
                >>
            }
        >>
        \layout { 
            short-indent = 1.25\cm
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
        \transpose ef, c \transpose c b, <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsIntro
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
                    {
                        \transpose c, c \bassIntro
                        \clef treble
                        <<
                            \melodyIntro 
                            \harmonyIntro
                        >>
                        \melodyForFlats
                    }
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
    \score {
        \transpose ef, c \transpose c b, <<
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
                    <<
                        \melodyCoda \\
                        \harmonyACommonPartTwo
                    >>
                >>
            }
        >>
        \layout { 
            short-indent = 1.25\cm
            indent = 1.25\cm
            ragged-right = ##f
        }
    }
}

