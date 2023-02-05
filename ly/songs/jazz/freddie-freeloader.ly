\version "2.22.0"

titleLeft = "Freddie"
titleRight = "Freeloader"
title = "Freddie Freeloader"
composerName = "M. Davis"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview

rm freddie-freeloader*pdf ; lilypond ly/songs/jazz/freddie-freeloader.ly ; for file in freddie-freeloader*pdf ; do open -a Preview $file ; done

rm freddie-freeloader*pdf
lilypond ly/songs/jazz/freddie-freeloader.ly
mv freddie-freeloader*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/freddie-freeloader*pdf ; do open -a Preview $file ; done

./bin/createIndexes.sh 
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
    \repeat volta 2 { 
        \bar "[|:"
        s1*4 \break 
        s1*4 \break 
    }
    \alternative { 
        { s1*4 \bar ":|]" \break }
        { s1*4 }
    }
    \bar "|."
}

chordsSong = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    bf1:7 | s | s | s | 
    ef1:7 | s | bf:7 | s | 
    f1:7 | ef:7 | af:7 | s ||
    f1:7 | ef:7 | bf:7 | s ||
}

melody = \relative c'' {
    <g d bf>2 <f c af> ~ | 2 r | 
    <g d bf>2 <f c af> ~ | 2 r | 

    <c' g ef>2 <bf f df> ~ | 2 r |  
    <g d bf>2 <f c af> ~ | 2 r4 <af d, b> |

    <a ef c>2. <af d, b>4 | <g df bf>2. f8  <gf c, af> ~ | 
    <gf c, af>1 ~ | 2 r2 || 
    
    <a ef c>2. <af d, b>4 | <g df bf>2. <f c af>4 |
    <g d bf>2 <f c af> ~ | 2 r | 
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

