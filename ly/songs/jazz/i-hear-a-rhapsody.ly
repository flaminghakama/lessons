\version "2.22.0"

titleLeft = "I Hear A"
titleRight = "Rhapsody"
title = "I Hear A Rhapsody"
composerName = "G. Fragos, J. Baker & D. Gasparre"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview

rm i-hear-a-rhapsody*pdf ; lilypond ly/songs/jazz/i-hear-a-rhapsody.ly ; for file in i-hear-a-rhapsody*pdf ; do open -a Preview $file ; done


rm i-hear-a-rhapsody*pdf
lilypond ly/songs/jazz/i-hear-a-rhapsody.ly
mv i-hear-a-rhapsody*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/i-hear-a-rhapsody*pdf ; do open -a Preview $file ; done

git add . ; git commit -m"new song" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}


\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

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

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key c \minor
    \time 4/4

    s1*3 
    \startSection "A"
    \bar "||"
    s1*4 \break 
    s1*4 \break 
    \bar "||"
    s1*4 \break 
    s1*4 \break 
    \bar "||"
    s1*4 \break 
    s1*4 \break 
    \bar "||"
    s1*4 \break 
    s1*4 \break 
    \bar "||"
}

chordsSong = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    b2:m7 bf:7 | ef1 | d2:m7.5- g:7 ||

    c2:m7 fs:7 | f:m7 bf:7 | ef:maj7 af:7 | g:m7.5- c:aug7 |
    f2:m7.5- af:m7 | b:m7 bf:7 | ef1:maj7 | d2:m7.5- g:7 ||

    c2:m7 fs:7 | f:m7 bf:7 | ef:maj7 af:7 | g:m7.5- c:aug7 |
    f2:m7.5- af:m7 | b:m7 bf:7 | ef2:maj7 bf:m7 | af:m7.5- d:aug7 ||

    g1:m7 | a2:m7.5- d:aug7 | g1:m7 | c2:m7 f:7 |
    bf1:maj7 | f:m7 | d:m7.5- | g:7 ||

    c2:m7 fs:7 | f:m7 bf:7 | ef1:maj7 | df:7 c:aug7 |
    f2:m7.5- af:m7 | b:m7 bf:7 | ef1:maj7 | d2:m7.5- g:7 ||
}

solo = \relative c'' { 
    r8 bf \tuplet 3/2 { ef8 g cf } bf8 g ef bf | 
    g'8 ef r g af bf cf df | 
    d8 ef d8. c16  b8 af g f ||

    ef8 c4. r4 r8 g' ( | af ) f4. r2 | 
    R1 | bf16 ( cf df8 ~ 8 c16 cf  bf8 ) g e c |

    f8 c r ef  f8 g af bf | cf df cf bf  r fs d [ bf ] |
    g'4 ef f2 | r2 r4 r8 af ( ||

    g8 ) d f16 gf32 f ef8 c4 b8 d | c d ef f g af g4 | 
    R1 | df4. af'8  g f e c | 

    f8 c d e  f g af bf | cf df cf bf r fs d4 | 
    g4 bf,8 ef ~ 2 | r4 r8  


}
melody = \relative c' {
    \solo
}


\header {
    title = \title
    composer = \composerName
    subtitle = "Improvisation by J. Coltrane"
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        poet = "Concert"
        instrumentName = \poet
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
