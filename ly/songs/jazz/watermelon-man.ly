\version "2.19.81"

titleLeft = "Watermelon"
titleRight = "Man"
title = "Watermelon Man"
composerName = "H. Hancock"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

rm watermelon-man*pdf ; lilypond ly/songs/jazz/watermelon-man.ly ; for file in watermelon-man*pdf pdf/songs/jazz/printable/watermelon-man*pdf ; do op $file ; done

rm watermelon-man*pdf
lilypond ly/songs/jazz/watermelon-man.ly
mv watermelon-man*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/watermelon-man*pdf pdf/songs/jazz/printable/watermelon-man*pdf ; do op $file ; done

%}


\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #8

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

structureRealBook = \relative c' { 

    \startSection "Takin' Off Quintet Version"
    \key f \major
    \time 4/4
    \bar "[|:" 
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \bar ":|]"
}

structureHeadHunters = \relative c' { 
    \startSection "Headhunters Version"
    \key f \major
    \time 4/4
    \bar "[|:" 
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4
    \bar "||"
    \time 3/4
    s2.
    \bar ":|]"
}

chordsFormRealBook = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f1:7 | s | s | s |
    bf1:7 | s | f:7 | s |
    
    c1:7 | bf:7 | c1:7 | bf:7 |
    c1:7 | bf:7 | f:7 | s | 
}
chordsFormHeadhunters = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f1:7 | s | s | s |
    f1:7 | s | s | s |
    
    bf1:7 | s | s | s |
    f1:7 | s | s | s |
    
    c1:7 | s | bf:7 | s | 
    c1:7 | s | bf:7 | s | 

    c1:7 | s | bf:7 | s | 
    af1:7 | s | s | s |
    s2. ||
}

melodyRealBook = \relative c'' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)
    ef1 | r4 f,8 8 <c' af,> <d bf,>4 f,8 ~ | 1 ~ | 2 r |
    f'1 | r4 f,8 8 <c' af,> <d bf,>4 f,8 ~ | 1 ~ | 2 r |

    r4 c'8 8  g'4 a | <af f,>8 <g ef,> <f d,> <d bf,> <f d,>4 <g ef,> | 
    r4 c,8 8  g'4 a | <af c,>8 <g bf,> <f af,> <d bf> <f af,>4 <g bf,> | 

    r4 c,8 8 g'4 af | f f,8 8 <c' af,> <d bf,>4 f,8 ~ | 2 r | R1 |
}
melodyRealBookForBb = \relative c'' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)
    ef1 | r4 f,8 8 <c' af> <d bf>4 f,8 ~ | 1 ~ | 2 r |
    f'1 | r4 f,8 8 <c' af> <d bf>4 f,8 ~ | 1 ~ | 2 r |

    r4 c'8 8  g'4 a | <af f>8 <g ef> <f d> <d bf> <f d>4 <g ef> | 
    r4 c,8 8  g'4 a | <af c,>8 <g bf,> <f af,> <d bf> <f af,>4 <g bf,> | 

    r4 c,8 8 g'4 af | f f,8 8 <c' af> <d bf>4 f,8 ~ | 2 r | R1 |
}
melodyRealBookForEb = \relative c'' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)
    ef1 | r4 f,8 8 <c' af> <d bf>4 f,8 ~ | 1 ~ | 2 r |
    f'1 | r4 f,8 8 <c' af> <d bf>4 f,8 ~ | 1 ~ | 2 r |

    r4 c8 8  g'4 a | <af f>8 <g ef> <f d> <d bf> <f d>4 <g ef> | 
    r4 c,8 8  g'4 a | <af c,>8 <g bf,> <f af,> <d bf> <f af,>4 <g bf,> | 

    r4 c,8 8 g'4 af | f f8 8 <c' af> <d bf>4 f,8 ~ | 2 r | R1 |
}

melodyHeadHeadhuntersPartOne = \relative c'' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)
    ef1 ~ | 1 ~ | 1 | ef8 d c bf c d r f, ~ |
    f1 ~ | 1 | R1 | r2 r4 f' ~ | 

    f1 ~ | 1 ~ | 1 | ef8 d c bf c d r f, ~ | 
    f1 ~ | 1 | R1 |
}
melodyHeadHeadhuntersPartTwo = \relative c'' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)
    R1 | 

    r2 r4 c8 8 | g'4. af8 r2 | r2 af8 g f d | f4. g8 r2 | 
    r2 r4 c,8 8 | g'4. af8 r2 | r2 af8 g f d | f4. g8 r2 | 

    r2 r8 c,4 8 | g'2 ~ 8 af8 r4 | R1 | ef8 d c bf  c d r ef ~ | 
    ef1 ~ | 4 \tuplet 3/2 { f8 gf f } ef4 df8 c ~ | 4 df8 bf ~ 2 ~ | 4 r r8 ef4. ~ | 
    ef2. ||
}
melodyHeadHeadhuntersPartTwoForEb = \relative c' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)
    R1 | 

    r2 r4 c8 8 | g'4. af8 r2 | r2 af8 g f d | f4. g8 r2 | 
    r2 r4 c,8 8 | g'4. af8 r2 | r2 af8 g f d | f4. g8 r2 | 

    r2 r8 c,4 8 | g'2 ~ 8 af8 r4 | R1 | ef'8 d c bf  c d r ef ~ | 
    ef1 ~ | 4 \tuplet 3/2 { f8 gf f } ef4 df8 c ~ | 4 df8 bf ~ 2 ~ | 4 r r8 ef4. ~ | 
    ef2. ||
}


hits = \relative c'' {
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    r2 r4 r8 g ||

    R1 | r2 r8 gf r f | 
    R1 | r2 r8 b r c | 
    
    r8 e r4 r2 | r2 r8 c r bf | 
    R1 | r2 r8 b r c | 
    
    r8 e r4 r2 | r2 r8 c r bf | 
    R1 | r2 r8 d r ef \laissezVibrer |
    
    s1 | s | s | r8 c r b  r bf4. ~ | 
    2. ||
}

\layout {
    \context {
        \Staff
        \RemoveAllEmptyStaves
    }
}

\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose c c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsFormRealBook 
            }
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \structureRealBook
                    \melodyRealBook
                >>
            }
        >>
    }
    \score {
        \transpose c c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsFormHeadhunters
            }
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \structureHeadHunters
                    {
                        \melodyHeadHeadhuntersPartOne
                        <<
                            \melodyHeadHeadhuntersPartTwo \\
                            \hits
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
        poet = "Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose bf, c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsFormRealBook 
            }
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \structureRealBook
                    \melodyRealBookForBb
                >>
            }
        >>
    }
    \score {
        \transpose bf, c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsFormHeadhunters
            }
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \structureHeadHunters
                    {
                        \melodyHeadHeadhuntersPartOne
                        <<
                            \melodyHeadHeadhuntersPartTwo \\
                            \transpose c c, \hits
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
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        \transpose ef, c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsFormRealBook 
            }
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \structureRealBook
                    \melodyRealBookForEb
                >>
            }
        >>
    }
    \score {
        \transpose ef, c <<
            \new ChordNames { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsFormHeadhunters
            }
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \structureHeadHunters
                    {
                        \melodyHeadHeadhuntersPartOne
                        <<
                            \melodyHeadHeadhuntersPartTwoForEb \\
                            \transpose c c, \hits
                        >>
                    }
                >>
            }
        >>
    }
}
