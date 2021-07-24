\version "2.19.81"

titleLeft = "Canteloupe"
titleRight = "Island"
title = "Canteloupe Island"
composerName = "H. Hancock"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview ; rm canteloupe-island*pdf ; lilypond ly/songs/jazz/canteloupe-island.ly ; for file in canteloupe-island*pdf ; do open -a Preview $file ; done

killPreview
rm canteloupe-island*pdf
lilypond ly/songs/jazz/canteloupe-island.ly
mv canteloupe-island*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/canteloupe-island*pdf ; do open -a Preview $file ; done

%}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

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
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3 . -2.5 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key f \minor
    \time 4/4
    s1*4 \break
    \bar "[|:"
    s1*4 \break
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \bar ":|]"
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f1:m7 | s | s | s || 
    f1:m7 | s | s | s | 
    df1:7 | s | s | s | 
    d1:m11 | s | s | s | 
    f1:m7 | s | s | s ||
}

melody = \relative c' { 
    R1*3
    r2 r4 f8 8 ||

    r2 af8 bf8 4 ~ | 4. af8 bf c ef, f | 
    R1 | r2 r4 f8 8 |
    
    r2 af8 bf8 4 ~ | 4. af8 bf c ef, f | 
    R1 | r2 \grace { b8 ( } c8 ) ef \grace { b8 ( } c ) ef  | 
    
    f,4 r8 8 ~ 2 ~ | 2 \grace { b8 ( } c8 ) ef \grace { b8 ( } c8 ) ef | 
    f,4 r8 8 ~ 2 ~ | 1 |

    R1*4 || 
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

