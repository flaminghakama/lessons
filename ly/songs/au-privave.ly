\version "2.19.81"

titleLeft = "Au"
titleRight = "Privave"
title = "Au Privave"
composerName = "C. Parker"

\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm au-privave*pdf
lilypond ly/songs/au-privave.ly

python ~/git/part-format/combine-1Page-1Page.py au-privave-for-C.pdf au-privave-for-Bb.pdf au-privave-for-C-and-Bb.pdf
python ~/git/part-format/combine-1Page-1Page.py au-privave-for-C.pdf au-privave-for-Eb.pdf au-privave-for-C-and-Eb.pdf

mv au-privave-for-C.pdf  pdf/songs
mv au-privave-for-Bb.pdf pdf/songs
mv au-privave-for-Eb.pdf pdf/songs
mv au-privave-for-C-and-Bb.pdf  pdf/songs
mv au-privave-for-C-and-Eb.pdf  pdf/songs

for file in pdf/songs/au-privave*pdf ; do open -a Preview $file ; done

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

    \key f \major
    \time 4/4
    s1*4 \break
    s1*4 \break
    s1*4 \break
    \bar "||" 
}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f1 | g2:m7 c:7 | f g:m7 | c:m7 f:aug7 | 
    bf1:7 | bf2:m7 ef:7 | f g:m7 | a:m7 d:7 | 
    g1:m7 | g2:m7 c:7 | f d:7 | g:m7 c:7 |
}
melody = \relative c' { 
    f8 ( e f ) c-. r4 a'8 ( gs | a ) c,-. r e r g ( f ) [ c ] | 
    g'8 ( f ) a bf ( a ) f ( g ) ef-. | r d'-> r4 r8 df r f, | 

    cf'4.^\lheel f8 r cf bf4-> ~ | 4 r8 af8 ~ 8 f ( g f ) | 
    c'4-. r8 a bf4-. r8 g | c4-. 4 ~ 8 a bf c16 ( d ) | 

    a8 g f ( e ) f4-. r8 c'8 | bf4-. r8 f'-> ( ~ 8 c ) e f-> |
    r4 r8 c8 4 . a8 | bf a f ( d ) a'8 << { a4.^"Last X" } \\ { g4._"1st X" } >>
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
            \new ChordNames \transpose c c  { \chordsSong }
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
            \new ChordNames \transpose bf c  { \chordsSong  }
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
            \new ChordNames \transpose ef c  { \chordsSong }
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
