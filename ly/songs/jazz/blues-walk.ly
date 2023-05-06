\version "2.22.0"

titleLeft = "Blues"
titleRight = "Walk"
title = "Blues Walk"
composerName = "C. Brown"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview

rm blues-walk*pdf ; lilypond ly/songs/jazz/blues-walk.ly ; for file in blues-walk*pdf ; do open -a Preview $file ; done


rm blues-walk*pdf
lilypond ly/songs/jazz/blues-walk.ly
mv blues-walk*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/blues-walk*pdf ; do open -a Preview $file ; done

git add . ; git commit -m"new song" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

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

    \key bf \major
    \time 4/4

    \partial 8
    s8 
    \bar "[|:"
    s1*4 \break 
    s1*4 \break 
    s1*4 \break 
    \bar ":|]"
}

chordsSong = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8 ||
    bf1:7 | ef:7 | bf:7 | f2:m7 bf:7 | 
    ef1:7 | s | bf:7 | d2:m7 g:7 |
    c1:m7 | f:7 | bf:7 | f:7 ||
}

melody = \relative c'' {
    bf8-> ||
    r8 bf4.-> ~ 4. g8 ( | f ) bf, r4 r4 r8 bf'8-> | 
    r8 bf4-> g8 f4 ef8 cs ( | d ) f g f ~ 4 r8 bf-> |

    r8 bf4.-> ~ 4. g8 ( | f ) bf, r4 r4 r8 bf'8-> | 
    r8 bf4-> g8 f4 ef8 cs ( | d ) f g f ~ 4 r4 |

    f8 af4.-> ~ 4 f8 af-> ~ | 4. f8 af f a bf-> |
    R1 | r2 r4 r8 bf8-> ||
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
        subtitle = ""
    }
    \score {
        \transpose c c <<
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
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose bf, c <<
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
        subtitle = ""
    }
    \score {
        \transpose ef, c <<
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

