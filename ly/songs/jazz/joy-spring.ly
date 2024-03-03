\version "2.24.0"

titleLeft = "Joy"
titleRight = "Spring"
titleFull = "Joy Spring"
composerName = "C. Brown"
arranger = ""
copyright = ""

%{

killPreview ; rm joy-spring*pdf ;  lilypond ly/songs/jazz/joy-spring.ly  ; for file in joy-spring*.pdf ; do op $file ; done  

killPreview
rm joy-spring*pdf
lilypond ly/songs/jazz/joy-spring.ly
mv joy-spring*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/joy-spring*.pdf ; do op $file ; done  

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
  markup-system-spacing.padding = #8

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.basic-distance = #19

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #24

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

    \key f \major
    \tempo 4=168
    \time 4/4
    \partial 4. 
    s4.
    \startSection ""
    s1*3 \break
    s1*5 \break

    \startSection "A"
    \startRepeat
    s1*4 \break
    s1*4 \break

    \startSection "A"
    s1*4 \break
    s1*4 \pageBreak

    \startSection "B"
    s1*4 \break
    s1*4 \break

    \startSection "A"
    s1*4 \break
    s1 s2... \toCoda s16 s1*2 \break
    \endRepeat
}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

structureCoda = \relative c' { 
    \override Score.RehearsalMark.self-alignment-X = #LEFT 
    \key f \major 
    \once \override Score.RehearsalMark.extra-offset = #'( -10 . -2 ) 
    \once \override Score.RehearsalMark.font-size = #8 
    \mark \markup { \musicglyph #"scripts.coda" }
    s1*5
    \bar "|."
}


rehearsalMarkTweaksForC = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
   \partial 4. 
    s4.
    s1*8

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    %  "A"
    s1*4
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    %  "A"
    s1*4
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    %  "B"
    s1*4
    s1*4

    \once \override Score.RehearsalMark.extra-offset = #'( -3 . -3 )
    %  "A"
    s1*8
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
    s4. ||
    s4. bf4:6 af:6 gf8:6 | s1 | 
    s4. af4:6 g:6 gf8:6 | f4:6 e2:6 s8 ef:6 |
    s4. d2:7 df8:6 | s4. c2:7.9-  f8:6 | 
    r1 | s4. c2:7.9+ s8 ||
}

chordsForm = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    %\set noChordSymbol = ##t

    f1:maj7 | g2:m7 c:7 | f1:maj7 | bf2:m7 ef:7 | 
    a2:m7 af:13 | g:m7 c:7 | f1:6 | af2:m7 df:7 ||

    gf1:maj7 | af2:m7 df:7 | gf1:maj7 | b2:m7 e:7 | 
    bf2:m7 a:13 | af:m7 df:7 | gf1:6 | a2:m7 d:7 ||

    g1:maj7 | g2:m7 c:7 | f1:maj7 | f2:m7 bf:7 | 
    ef1:maj7 | af2:m7 df:7 | gf1:maj7 | g2:m7 c:7 ||

    f1:maj7 | g2:m7 c:7 | f1:maj7 | bf2:m7 ef:7 | 
    a2:m7 af:13 | g:m7 c:7 | f1:6 | g2:m7 c:7  ||
}

chordsCoda = \chordmode { 
    \set chordChanges = ##f 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##t
    a2:m7 af:13 | g:m7 c:7 | 
    a2:m7 af4.:13 g8:m7 | R1 | g1/f ||
}


melodyIntro = \relative c' { 
    c8 f [ g ]  ||
    c4. g8 r f r ef ~ | 8 bf' c df  ef c  bf16 c bf af |
    bf4.  f8 r e r ef | d4 cs2  8 c ~ | 
    c4. 8 ~ 4. bf8 ~ | 4. df8 ~ 4  8 c | 
    r8 df'' ( c [ ) gf ] ( f ) df ( c ) gf ( | f4 ) \autoBeamOff r8 ds8 ~ 8 
}
melodyIntroForEb = \relative c' { 
    c8 f [ g ]  ||
    c4. g8 r f r ef ~ | 8 bf' c df  ef c  bf16 c bf af |
    bf4.  f8 r e r ef | d4 cs2  8 c ~ | 
    c4. 8 ~ 4. bf8 ~ | 4. df8 ~ 4  8 c | 
    r8 df' ( c [ ) gf ] ( f ) df ( c ) gf ( | f4 ) \autoBeamOff r8 ds8 ~ 8 
}
harmonyIntro = \relative c' { 
    s4.  ||
    s4. d8 r c r bf ~ | 8 s s4 s2 |
    s4.  c8 r b r bf | a4 gs2  8 g ~ | 
    g4. fs8 ~ 4. f8 ~ | 4. bf8 ~ 4  8 a | 
    s1 | s4 s8 bf8 ~ 8 
}

melody = \relative c' { 
    c8 f [ c' ~ ] || \autoBeamOn
    c2 ~ 8 a \tuplet 3/2 { g16 a g } f8 | g4. a8 r2 | 
    r8 c, f [ d' ]  c a \tuplet 3/2 { g16 a g } f8 | af8 f16 df  bf8 g' ~ 4 \tuplet 3/2 { f8 g f } |
    c'8 f,4. 4. 8 ~ | 8 c f bf  \tuplet 3/2 { a16 bf a } f8  d c | 
    f8 c g' f r2 | r8 bf af [ gf ]  f df gf df' ~ ||

    df2 ~ 8 bf \tuplet 3/2 { af16 bf af } gf8 | af4. bf8 r2 | 
    r8 df, gf [ ef' ]  df bf \tuplet 3/2 { af16 bf af } gf8 | a8 fs16 d  b8 gs' ~ 4 \tuplet 3/2 { fs8 gs fs } |
    df'8 gf,4. 4. 8 ~ | 8 df gf cf  bf gf \tuplet 3/2 { ef16 f ef } df8 | 
    gf8 df af' gf r2 | r8 b a [ e ]  g f  fs16 a c e ||

    d4. b8 \tuplet 3/2 { a16 b a } g8 \tieUp bf4 ~ | 
    bf8 \tieNeutral f \tuplet 3/2 { e16 f e } d8  e df' \tuplet 3/2 { c16 df c } bf8 | 
    c4. a8 \tuplet 3/2 { g16 a g } f8 af4 ~ | 
    af8 ef \tuplet 3/2 { d16 ef d } c8  d  df' \tuplet 3/2 { cf16 df cf } a8 | 
    bf4 \tuplet 3/2 { g8 f ef } f4 g8 af | 
    r8 bf cf [ df ]  bf af g? af | 
    df4 \tuplet 3/2 { bf8 af gf } af4 bf | 
    r8 a g [ f ]  e c f c' ~ | 

    c2 ~ 8 a \tuplet 3/2 { g16 a g } f8 | g4. a8 r2 | 
    r8 c, f [ d' ]  c a \tuplet 3/2 { g16 a g } f8 | af8 f16 df  bf8 g' ~ 4 \tuplet 3/2 { f8 g f } |
    c'8 f,4. 4. 8 ~ | 8 c f bf  \tuplet 3/2 { a16 bf a } f8  d c | 
    f8 c g' f r2 | R1 ||
}

melodyCoda = \relative c'' { 
    c8 f,4. 4. 8 ~ | 8 c f bf  \tuplet 3/2 { a16 bf a } f8  d c | 
    c'8 f,4. 4. 8 ~ | 8 af bf ef  df bf af ef |
}
melodyCodaLast = \relative c' { 
    fs8 g2.. || 
}
harmonyCodaLast = \relative c' { 
    bf8 b2.. || 
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
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \accidentalStyle modern-cautionary
                    \structure
                    \rehearsalMarkTweaksForC
                    {
                        \transpose c c <<
                            \melodyIntro
                            \harmonyIntro
                        >>
                        \melody
                    }
                >>
            }
        >>
    }
    \score {
        \transpose c c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsCoda
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \accidentalStyle modern-cautionary
                    \structureCoda
                    {
                        \melodyCoda
                        << 
                            \melodyCodaLast
                            \harmonyCodaLast
                        >>
                    }
                >>
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
        subtitle = ""
    }
    \score {
        \transpose bf, c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsIntro
                \chordsForm
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \accidentalStyle modern-cautionary
                    \structure
                    \rehearsalMarkTweaksForC
                    {
                        <<
                            \melodyIntro
                            \harmonyIntro
                        >>
                        \melody
                    }
                >>
            }
        >>
    }
    \score {
        \transpose bf, c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsCoda
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \accidentalStyle modern-cautionary
                    \structureCoda
                    {
                        \melodyCoda
                        << 
                            \melodyCodaLast
                            \harmonyCodaLast
                        >>
                    }
                >>
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
        subtitle = ""
    }
    \score {
        \transpose ef, c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsIntro
                \chordsForm
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \accidentalStyle modern-cautionary
                    \structure
                    \rehearsalMarkTweaksForC
                    {
                        <<
                            \melodyIntroForEb
                            \harmonyIntro
                        >>
                        \melody
                    }
                >>
            }
        >>
    }
    \score {
        \transpose ef, c <<
            \new ChordNames { 
                \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = 1.5
                \chordsCoda
            }
            \new Staff = "lead" \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \accidentalStyle modern-cautionary
                    \structureCoda
                    {
                        \melodyCoda
                        << 
                            \melodyCodaLast
                            \harmonyCodaLast
                        >>
                    }
                >>
            }
        >>
    }
}

