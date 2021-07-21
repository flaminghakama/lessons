\version "2.19.81"

titleLeft = "Four"
titleRight = ""
title = "Four"
composerName = "M. Davis"
copyright = \markup { \tiny "copyright © 2019 Elaine Alt" } 


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm four-for*pdf
lilypond ly/songs/jazz/four.ly
python ~/git/part-format/combine-1Page-1Page.py four-for-C.pdf four-for-Eb.pdf four-for-C-and-Eb.pdf
python ~/git/part-format/combine-1Page-1Page.py four-for-C.pdf four-for-Bb.pdf four-for-C-and-Bb.pdf
python ~/git/part-format/combine-1Page-1Page.py four-for-Bb.pdf four-for-Eb.pdf four-for-Bb-and-Eb.pdf
mv four-for-*-and-*.pdf pdf/songs/jazz/printable
mv four*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/four*pdf pdf/songs/jazz/printable/four*pdf ; do open -a Preview $file ; done

%}


\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #12

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

structure = \relative c' { 

    \key ef \major
    \time 4/4
    \partial 8*3 s4.
    \repeat volta 2 { 
        \bar "[|:"
        s1*12
    }
    \alternative {
        { 
            s1*4 
            \bar ":|]"
        }
        {
            s1*4 
        }
    }
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s4. ||
    ef1:maj7 | s | bf:m7 | ef:7 | 
    af1:maj7 | s | af:m7 | df:7 | 
    ef1:maj7 | fs2:m7 b:7 | f1:m7 | bf:7 | 

    ef1:maj7 | fs2:m7 b:7 | f1:m7 | bf:7 | 

    g2:m7 gf:m7 | f:m7 bf:7 | ef1:maj7 | s ||
}

melodyHead = \relative c' { 
    bf8 c [ d ~ ] || 8 bf c d ~ 8 bf c d ~ | 8 f ef d ~ 8 bf c df ~ | 1 ~ | \break 2 r8
    ef8 f [ g ~ ] | 8 ef f g ~ 8 ef f g ~ | 8 bf af g ~ 8 ef f gf ~ | 1 ~ | \break 4 r4 
    f8 g af a | bf2 d,8 ef g bf | b4 e,8 ef ~ 2 | r8 c'4. bf4-^ af8 g ~ | \break 2  

    f8 g af a | bf2 ef,8 g4 bf8 | b4 e,8 ef ~ 2 | r8 c'4. bf4-^ af8 g ~ | \break 2 r8 bf, c [ d \laissezVibrer ]  

    \relative c'' { 
        bf4 g8 bf b e,4 c'8 ~ | 4 a d8 bf4 ef8-^ | R1*2 |  
    }
}

melodySong = \relative c' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)
    \melodyHead
}

\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        poet = "Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { \chordsForm }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melodySong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        poet = "Bb Soprano Saxophone"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { \chordsForm }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \structure
                    \melodySong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        poet = "Eb Alto Saxophone"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { \chordsForm }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \structure
                    \melodySong
                >>
            }
        >>
    }
}

