
\version "2.19.81"

titleLeft = "Isfahan"
titleRight = ""
title = "Isfahan"
composerName = "D. Ellington & B. Strayhorn"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm isfahan*pdf
lilypond ly/songs/jazz/isfahan.ly
mv isfahan*pdf pdf/songs/jazz
for file in pdf/songs/jazz/isfahan*pdf ; do open -a Preview $file ; done

https://www.youtube.com/watch?v=m2U1MGX8SLU&feature=youtu.be&t=15
%}


\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

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

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

	\key df \major
	\time 4/4
	\partial 2 s2
	\bar "||"		
    s1*4 
    s1*4
    \bar "||"
    s1*8 
    \bar "||" 
    s1*4
    s1*4 
    s1*8
    \bar "|." 
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
}

melodyInEb = \relative c''' {
    r8 a8 \tuplet 3/2 { f8 d bf } || a2. bf8 fs' ~ | 2 g | a8 d,2.. | r2 
    r8 f8 \tuplet 3/2 { d8 bf gf } | f2. gf4 | df'2 d | c1 | r4
    bf4 d f | g2. \tuplet 3/2 { r8 g gf } | f1 | 
    a4 b8 bf a fs4. | g32 a g fs g4.  r2 | 
    bf4 c bf8 g4. | a4. bf8 c2 | a1 ~ | 2

    r8 a8 \tuplet 3/2 { f8 d bf } ||  a2. bf8 fs' ~ | 2 g | a8 d,2.. | r2 
    r8 f8 \tuplet 3/2 { d8 bf gf } | f2. gf8 df' ~ | 2 \tuplet 3/2 { r4 d4 ds8. e16 ~ } | e1 | r2
    r4 e | f gf f gf8-. [ r16 af32 a ] | c2 bf4.. a16 | af2 f4. d8 | r2 
    r8 a'8 \tuplet 3/2 { f8 d bf } | a2. bf8 fs' ~ | 2 g | g32 a g fs g4. ~ 4.  f16 d | bf4 r r2 || 
}
bari = \relative c {
    r2 || r4 r8 \tuplet 3/2 { bf16 af f } af2 | r4 c32 cf bf bff af8 ~ 2 | 
    r8 cf16 bf  cf8 c ~  8 cf16 bf  cf8 bf ~ | 8 cf4 c8 ~ 4 r | 

    r4  r8 cf16 bff cf2 | r8 bf16 a  bf8 a ~ 2 |
    bf1 | R1 ||

    g2 bf | R1 | a2 d, | g2.. r8 | 
    bf1 | df | <<
        { r8 a'4. af2 | g gf } \\
        << 
            { c,2 b | bf a }
            { f2 e | ef d }
        >>
    >> |

    r4 r8 \tuplet 3/2 { bf'16 af f } af2 | r4 c32 cf bf bff af8 ~ 2 | 
    r8 cf16 bf  cf8 c ~  8 cf16 bf  cf8 bf ~ | 8 cf4 c8 ~ 4 r | 

    r4  r8 cf16 bff cf2 | r8 bf16 a  bf8 a ~ 2
    ef8 g b df ef f4 ef8 | df4\startTrillSpan cf8\stopTrillSpan df ~ 2 |

    df,1 | df | f2.. bf8 | R1 | 
    f'1 ~ | 2 e | ef2.. df8 | 
}


\header {
    title = \title
    composer = \composerName
}

\book {
    \bookOutputSuffix "for-C"
    \header {
        poet = "    Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \transpose c ef, \melodyInEb
                >>
            }
        >>
    }
}

\book {
    \bookOutputSuffix "for-Eb"
    \header {
        poet = "    Eb Alto Saxophone"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \transpose c ef, \melodyInEb
                >>
            }
        >>
    }
}

\book {
    \bookOutputSuffix "bari-in-Eb"
    \header {
        poet = "Eb Bari Sax"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose ef,, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \bari
                >>
            }
        >>
    }
}

\book {
    \bookOutputSuffix "score"
    \header {
        poet = "Transposed Score"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \set Staff.instrumentName = "Eb Alto Sax"
                \set Staff.shortInstrumentName = #"A.S."                
                <<
                    \structure
                    \transpose c ef, \melodyInEb
                >>
            }
            \new Staff \transpose ef,, c { 
                \include "ly/ily/staff-properties.ily"
                \set Staff.instrumentName = "Eb Bari Sax"
                \set Staff.shortInstrumentName = #"B.S."                
                <<
                    \structure
                    \bari
                >>
            }
        >>
    }
}
