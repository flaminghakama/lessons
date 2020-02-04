\version "2.19.81"

titleLeft = "On Green"
titleRight = "Dolphin St."
title = "On Green Dolphin St."
composerName = "Kaper/Washington"

\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm on-green-dolphin-street*pdf
lilypond ly/songs/on-green-dolphin-street.ly
python ~/git/part-format/combine-1Page-1Page.py on-green-dolphin-street-for-C.pdf on-green-dolphin-street-for-Bb.pdf on-green-dolphin-street-for-C-and-Bb.pdf
python ~/git/part-format/combine-1Page-1Page.py on-green-dolphin-street-for-C.pdf on-green-dolphin-street-for-Eb.pdf on-green-dolphin-street-for-C-and-Eb.pdf
python ~/git/part-format/combine-1Page-1Page.py on-green-dolphin-street-for-Bb.pdf on-green-dolphin-street-for-Eb.pdf on-green-dolphin-street-for-Bb-and-Eb.pdf
python ~/git/part-format/combine-1Page-1Page.py on-green-dolphin-street-for-C.pdf on-green-dolphin-street-worksheet-for-C.pdf on-green-dolphin-street-and-worksheet-for-C.pdf
python ~/git/part-format/combine-1Page-1Page.py on-green-dolphin-street-for-Bb.pdf on-green-dolphin-street-worksheet-for-Bb.pdf on-green-dolphin-street-and-worksheet-for-Bb.pdf
python ~/git/part-format/combine-1Page-1Page.py on-green-dolphin-street-for-Eb.pdf on-green-dolphin-street-worksheet-for-Eb.pdf on-green-dolphin-street-and-worksheet-for-Eb.pdf
python ~/git/part-format/combine-1Page-1Page.py on-green-dolphin-street-worksheet-for-C.pdf on-green-dolphin-street-worksheet-for-C.pdf on-green-dolphin-street-worksheet-for-C-double.pdf
python ~/git/part-format/combine-1Page-1Page.py on-green-dolphin-street-worksheet-for-Bb.pdf on-green-dolphin-street-worksheet-for-Bb.pdf on-green-dolphin-street-worksheet-for-Bb-double.pdf
python ~/git/part-format/combine-1Page-1Page.py on-green-dolphin-street-worksheet-for-Eb.pdf on-green-dolphin-street-worksheet-for-Eb.pdf on-green-dolphin-street-worksheet-for-Eb-double.pdf
mv on-green-dolphin-street-for-C.pdf  pdf/songs
mv on-green-dolphin-street-for-Bb.pdf pdf/songs
mv on-green-dolphin-street-for-Eb.pdf pdf/songs
mv on-green-dolphin-street-for-C-and-Bb.pdf pdf/songs/printable
mv on-green-dolphin-street-for-C-and-Eb.pdf pdf/songs/printable
mv on-green-dolphin-street-for-Bb-and-Eb.pdf pdf/songs/printable
mv on-green-dolphin-street-and-worksheet-for-C.pdf  pdf/songs/printable
mv on-green-dolphin-street-and-worksheet-for-Bb.pdf  pdf/songs/printable
mv on-green-dolphin-street-and-worksheet-for-Eb.pdf  pdf/songs/printable
mv on-green-dolphin-street-worksheet-for-C-double.pdf pdf/songs/printable
mv on-green-dolphin-street-worksheet-for-Bb-double.pdf pdf/songs/printable
mv on-green-dolphin-street-worksheet-for-Eb-double.pdf pdf/songs/printable

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

\include "ly/ily/layout.ily"
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \key c \major
    \time 4/4
    \mark \markup \box "A" 
    s1*4 \break
    s1*4
    \bar "||" \break

    \mark \markup \box "B" 
    s1*4 \break
    s1*4
    \bar "||" \break

    \mark \markup \box "A" 
    s1*4 \break
    s1*4
    \bar "||" \break

    \mark \markup \box "C" 
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:maj7 | s | c:m7 | s | 
    d1:7/c | s2 df2/c | c1:maj7 | s || 

    d1:m7 | g:7.8+.9+ | c1:maj7 | s |
    f1:m7 | bf:7.8+.9+ | ef1:maj7 | s2 g2:7 |

    c1:maj7 | s | c:m7 | s | 
    d1:7/c | s2 df2/c | c1:maj7 | s || 

    d2:m7 d:m/c | b:m7.5- e:7.9- | a:m7 a:m/g | fs:m7.5- b:7 | 
    e2:m7 a:7 | d:m7 g:7 | c1:maj7 | d2:m7 g:7 ||
}

melodyHead = \relative c'' { 
    c4. 8 ~ 2 ~ | 2 \tuplet 3/2 { b4 g e } | bf'1 ~ | 1 | 
    a4. 8 ~ 2 ~ | 2 \tuplet 3/2 { af4 f df } | g1 ~ | 1 ||

    r8 g4. d4 e | f g af bf8 g ~ | 1 ~ | 1 | 
    r8 bf4. f4 g | af bf cf df8 bf ~ | 1 ~ | 2 b2 ||

    c4. 8 ~ 2 ~ | 2 \tuplet 3/2 { b4 g e } | bf'1 ~ | 1 | 
    a4. 8 ~ 2 ~ | 2 \tuplet 3/2 { af4 f df } | g1 ~ | 1 ||

    r8 g4. d4 e | f g gs e' | d4. c8 ~ 2 | c,4 d ds b' | 
    a4. g8 ~ 2 | r8 g4. 4 4 | g1 ~ | 1 ||
}
melodyExercise = \relative c''' { 
    b1 s1*3 
    b1 s1*3 

    b1 s1*3 
    b1 s1*3 

    b1 s1*3 
    b1 s1*3 

    b1 s1*3 
    b1 s1*3 
}

emptyHead = \relative c'' { 
    s1*8
    s1*8
    s1*8 
    s1*8 
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
        poet = "    Concert Pitch"
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
        poet = "    Bb Soprano Saxophone"
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
        poet = "    Eb Alto Saxophone"
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

\book {
  \bookOutputSuffix "worksheet-for-C"
    \header {
        poet = "    Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { \chordsForm }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \hideMelody
                    \structure
                    \transpose b, c \melodyExercise
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "worksheet-for-Bb"
    \header {
        poet = "    Bb Soprano Saxophone"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { \chordsForm }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \hideMelody
                    \structure
                    \melodyExercise
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "worksheet-for-Eb"
    \header {
        poet = "    Eb Alto Saxophone"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { \chordsForm }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \hideMelody
                    \structure
                    \transpose b e \melodyExercise
                >>
            }
        >>
    }
}

