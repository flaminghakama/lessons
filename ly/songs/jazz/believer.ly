\version "2.24.0"

titleLeft = "The "
titleRight = "Believer"
titleFull = "The Believer"
composerName = "J. Coltrane"
arranger = ""
copyright = ""

%{

killPreview ; rm believer*pdf ;  lilypond ly/songs/jazz/believer.ly  ; for file in believer*.pdf ; do op $file ; done  

killPreview
rm believer*pdf
lilypond ly/songs/jazz/believer.ly
mv believer*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/believer*.pdf ; do op $file ; done  

git add . ; git commit -m"believer" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.padding = #2.4

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
    \tempo 4=168
    \time 3/4

    \startSection "Intro"
    s2.*24

    \startSection "Head"
    \startRepeat
    s2.*24
    \endRepeat
}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

structureCoda = \relative c' { 
    \noPageBreak
    \time 3/4
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \key bf \major 
    \once \override Score.RehearsalMark.extra-offset = #'( -12 . -2 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
}

rehearsalMarkTweaksForC = \relative c' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -5 . -2 )
    \override Score.RehearsalMark.self-alignment-X = #LEFT

    \once \override Score.RehearsalMark.extra-offset = #'( 2 . -2 )
    s2.*8 \break
    s2.*8 \break
    s2.*8 \break
    \break

    \once \override Score.RehearsalMark.extra-offset = #'( -7 . -2 )
    % "Head"
    s2.*4 \break
    s2.*4 \break
    s2.*4 \break
    s2.*4 \break
    s2.*4 \break
    s2.*4
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

    bf2.:7 | b:13 | bf:7 | b:13 | bf:7 | b:13 | bf:7 | e:7.9+.11+ |
    ef2.:7 | e:13 | ef:7 | e:13 | bf:7 | b:13 | bf:7 | b:m7 |
    cs2.:m7 | fs:7 | b:m7 | e:7 | bf:7 | af:m7  | fs:m9 | b:7 ||
}
chordsFormFlats = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    bf2.:7 | cf:13 | bf:7 | cf:13 | bf:7 | cf:13 | bf:7 | ff:7.9+.11+ |
    ef2.:7 | ff:13 | ef:7 | ff:13 | bf:7 | cf:13 | bf:7 | cf:m7 |
    df2.:m7 | gf:7 | cf:m7 | ff:7 | bf:7 | af:m7  | gf:m9 | cf:7 ||
}

pianoRightHand = \relative c' { 
    <f d>4 r r | r8 <af f>4. <gf ef>4 | <f d>4 r r | r8 <af f>4. <gf ef>4 | 
    <f d>4 r r | r8 <af f>4. <gf ef>4 | <f d>4 r r | r8 <bf g>4. <df bf>4 | 

    <bf g>4 r r | r8 <df bf>4. <cf af>4 | <bf g>4 r r | r8 <df bf>4. <cf af>4 | 
    <f, d>4 r r | r8 <af f>4. <gf ef>4 | <f d>4 r r | r8 <a fs>4. <gs e>4 | 

    <b e,>2. | <as fs> | <d fs,> | <b gs> | 
    <f d>4 r r | r8 <bf gf>4. <af f>4 | <gs e>2. | r8 <gs d>4. <fs ds>4 | 
}
pianoRightHandFlats = \relative c' { 
    <f d>4 r r | r8 <af f>4. <gf ef>4 | <f d>4 r r | r8 <af f>4. <gf ef>4 | 
    <f d>4 r r | r8 <af f>4. <gf ef>4 | <f d>4 r r | r8 <bf g>4. <df bf>4 | 

    <bf g>4 r r | r8 <df bf>4. <cf af>4 | <bf g>4 r r | r8 <df bf>4. <cf af>4 | 
    <f, d>4 r r | r8 <af f>4. <gf ef>4 | <f d>4 r r | r8 <bff gf>4. <af ff>4 | 

    <cf ff,>2. | <bf gf> | <eff gf,> | <cf af> | 
    <f, d>4 r r | r8 <bf gf>4. <af f>4 | <af ff>2. | r8 <af eff>4. <gf ef>4 | 
}

melody = \relative c' {
    r8 f  af16 bf af f  af4 ~ | 2 r4 | 
    r8 f  af16 bf af f  af4 ~ | 2 r4 | 
    r8 f  af16 bf af f  af4 ~ | 2 r4 | 
    r8 f  af16 bf af f  af4-. | r8 b  cs16 d cs b  cs4-. |

    r8 bf  df16 ef df bf  df4 ~ | 2 r4 | 
    r8 bf  df16 ef df bf  df4 ~ | 2 r4 | 
    r8 f,  af16 bf af f  af4 ~ | 2 r4 | 
    r8 f  af16 bf af f  af4 ~ | 2 r4 | 

    r8 cs  e16 fs e cs  e4 ~ | 2 r4 | 
    r8 b  d16 e d b  d4 ~ | 2 r4 | 
    r8 f,  af16 bf af f  af4 ~ | 2 r4 | 
    r8 fs  a16 b a fs  a4 ~ | 2 r4 | 
}
melodyFlats = \relative c' {
    r8 f  af16 bf af f  af4 ~ | 2 r4 | 
    r8 f  af16 bf af f  af4 ~ | 2 r4 | 
    r8 f  af16 bf af f  af4 ~ | 2 r4 | 
    r8 f  af16 bf af f  af4-. | r8 cf  df16 eff df cf  df4-. |

    r8 bf  df16 ef df bf  df4 ~ | 2 r4 | 
    r8 bf  df16 ef df bf  df4 ~ | 2 r4 | 
    r8 f,  af16 bf af f  af4 ~ | 2 r4 | 
    r8 f  af16 bf af f  af4 ~ | 2 r4 | 

    r8 df  ff16 gf ff df  ff4 ~ | 2 r4 | 
    r8 cf  eff16 ff eff cf  eff4 ~ | 2 r4 | 
    r8 f,  af16 bf af f  af4 ~ | 2 r4 | 
    r8 gf  bff16 cf bff gf  bff4 ~ | 2 r4 | 
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
                    {
                        \pianoRightHand
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
                \chordsFormFlats
                \chordsFormFlats
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
                        \pianoRightHandFlats
                        \melodyFlats
                    }
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
                \chordsFormFlats
                \chordsFormFlats
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
                        \pianoRightHandFlats
                        \melodyFlats
                    }
                >>
            }
        >>
        \layout { 
            short-indent = 0.25\cm
            indent = 0.25\cm
        }
    }
}



