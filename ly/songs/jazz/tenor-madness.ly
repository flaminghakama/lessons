\version "2.19.81"

titleLeft = "Tenor"
titleRight = "Madness"
title = "Tenor Madness"
composerName = "S. Rollins"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm tenor-madness*pdf
lilypond ly/songs/jazz/tenor-madness.ly
python ~/git/part-format/combine-1Page-1Page.py tenor-madness-for-C.pdf tenor-madness-for-Bb.pdf tenor-madness-for-C-and-Bb.pdf
python ~/git/part-format/combine-1Page-1Page.py tenor-madness-for-C.pdf tenor-madness-for-Eb.pdf tenor-madness-for-C-and-Eb.pdf
mv tenor-madness*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/tenor-madness*pdf ; do open -a Preview $file ; done

%}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #6

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

\include "ly/ily/layout.ily"
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3 . -2.5 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key bf \major
    \time 4/4
    \partial 8*1 s8
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*3 
    }
    \alternative {
        { s1 \bar ":|]" } 
        { s1 \bar "||" }
    }
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8 ||
    bf1 | ef:7 | bf | bf:7 | 
    ef1:7 | s | bf:7 | s | 
    c1:m7 | f:7 | bf:7 | f:7 |
                         f:7 ||
}

melody = \relative c'' { 
    d8 ||
    r8 bf4 g8 bf4 r8 df | r bf4 g8 bf4 r8 d |
    r8 bf4 g8 bf c bf g | bf c bf bf r4 r8 df |

    r8 bf4 g8 bf4 r8 df | r bf4 g8 bf4 r8 d |
    r8 bf4 g8 bf c bf g | bf c bf bf r4 r8 c |

    r8 g4 c8 b g ef c | bf' g gs a r4 r8 d |
    r8 bf4 g8 bf c bf g | bf c bf bf r4 r8 df |
                        | bf c bf bf r2 ||
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
                    \melody
                    \noPageBreak
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        poet = "    Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong  
            }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        poet = "    Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melody
                >>
            }
        >>
    }
}

