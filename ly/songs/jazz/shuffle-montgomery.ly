\version "2.22.0"

titleLeft = "Shuffle"
titleRight = "Montgomery"
title = "Shuffle Montgomery"
composerName = "H. Nichols"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm shuffle-montgomery*pdf
lilypond ly/songs/jazz/shuffle-montgomery.ly
mv shuffle-montgomery*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/shuffle-montgomery*pdf ; do open -a Preview $file ; done

%}


\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #8

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #24

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-right = ##f
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

    \override Score.RehearsalMark.self-alignment-X = #RIGHT
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key g \major
    \time 4/4

    \partial 8
    s8 

    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
    \mark \markup \box "A"
    \repeat volta 2 { 
        \bar "[|:"
        s1*4 \break 
        s1*3 
    }
    \alternative {
        { s1 \bar ":|]" }
        { s1 }
    } 
    \bar "||"
    \break

    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
    \mark \markup \box "B"
    s1*4 \break 
    s1*4 \break 
    \bar "||"

    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )
    \mark \markup \box "A"
    s1*4 \break 
    s1*3 \break 
    s1*3 
    \bar "|."
}

chordsSong = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8 ||
    g2:7 bf:7 | a:7 gs:7 | g:7 bf:7 | a:7 gs:7 |
    g2:7 bf:7 | a:7 gs:7 | g1:7 | gs:13 || gs:13 ||


    g1:7 | s | c:7 | s | 
    f1:7 | s | bf:7 | ef:7 ||

    g2:7 bf:7 | a:7 gs:7 | g:7 bf:7 | a:7 gs:7 |
    g2:7 bf:7 | a:7 gs:7 | g1:7 | gs:13 |
    cs1:7.5- | s ||
}

chordsSongForFlats = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8 ||
    g2:7 bf:7 | a:7 af:7 | g:7 bf:7 | a:7 af:7 |
    g2:7 bf:7 | a:7 af:7 | g1:7 | af:13 || af:13 ||


    g1:7 | s | c:7 | s | 
    f1:7 | s | bf:7 | ef:7 ||

    g2:7 bf:7 | a:7 af:7 | g:7 bf:7 | a:7 af:7 |
    g2:7 bf:7 | a:7 af:7 | g1:7 | af:13 |
    df1:7.5- | s ||
}

melodyA = \relative c'' {
    g8 ||
    a8 e' e, fs f'2 | e4 8 ef8 r4 r8 g, | 
    a8 e' e, fs bf2 | b4 8 d8 r4 r8 g, | 
    a8 e' e, fs f'2 | e4 8 ef8 r4 r8 b | 
    r8 c r cs d ds e f ~ | 2.
}

melodyB = \relative c''' {
    r8 g ||
    r8 f4 d8 df c bf g ~ | 2. r8 g' | 
    r8 f4 d8 df c bf g ~ | 2. r8 g' | 
    r8 f4 d8 df c bf g ~ | 2. r8 g' | 
    r8 f4 d8 df c bf g ~ | 2. r8  
}

melody = {
    \melodyA 
    \relative c'' { r8 g || f'2.\repeatTie }
    \melodyB
    \melodyA 
    \relative c''' { 
        r8 g || 
        r8 f4 d8 df c bf g ~ | 2. r4 | 
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
        \transpose c ef <<
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
  \bookOutputSuffix "for-Eb"
    \header {
        poet = "Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSongForFlats 
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
