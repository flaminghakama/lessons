\version "2.19.81"

titleLeft = "Nostalgia in"
titleRight = "Times Square"
title = "Nostalgia in Times Square"
composerName = "C. Mingus"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm nostalgia-in-times-square*pdf
lilypond ly/songs/jazz/nostalgia-in-times-square.ly
python ~/git/part-format/combine-1Page-1Page.py nostalgia-in-times-square-for-C.pdf nostalgia-in-times-square-for-Bb.pdf nostalgia-in-times-square-for-C-and-Bb.pdf
python ~/git/part-format/combine-1Page-1Page.py nostalgia-in-times-square-for-C.pdf nostalgia-in-times-square-for-Eb.pdf nostalgia-in-times-square-for-C-and-Eb.pdf
python ~/git/part-format/combine-1Page-1Page.py nostalgia-in-times-square-for-Bb.pdf nostalgia-in-times-square-for-Eb.pdf nostalgia-in-times-square-for-Bb-and-Eb.pdf
python ~/git/part-format/combine-1Page-1Page.py nostalgia-in-times-square-for-C.pdf nostalgia-in-times-square-worksheet-for-C.pdf nostalgia-in-times-square-and-worksheet-for-C.pdf
python ~/git/part-format/combine-1Page-1Page.py nostalgia-in-times-square-for-Bb.pdf nostalgia-in-times-square-worksheet-for-Bb.pdf nostalgia-in-times-square-and-worksheet-for-Bb.pdf
python ~/git/part-format/combine-1Page-1Page.py nostalgia-in-times-square-for-Eb.pdf nostalgia-in-times-square-worksheet-for-Eb.pdf nostalgia-in-times-square-and-worksheet-for-Eb.pdf
python ~/git/part-format/combine-1Page-1Page.py nostalgia-in-times-square-worksheet-for-Eb.pdf nostalgia-in-times-square-worksheet-for-Eb.pdf nostalgia-in-times-square-worksheet-for-Eb-double.pdf
mv nostalgia-*-for-*-and-*.pdf nostalgia-*-worksheet-*.pdf  pdf/songs/jazz/printable
mv nostalgia*pdf pdf/songs/jazz
for file in pdf/songs/jazz/nostalgia*pdf pdf/songs/jazz/printable/nostalgia*pdf ; do open -a Preview $file ; done

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

\include "ly/ily/layout-songs.ily"
\include "ly/ily/hideMelody.ily"

structureLead = \relative c' { 
    \key f \major
    \time 4/4
    \partial 8*1 s8
    \repeat volta 2 { 
    \bar "[|:"
        s1*4 \break
        s1*4 \break
        s1*3
    }
    \alternative {
        {
            s1
            \bar ":|]"
        }
        {
            s1
            \bar "|."
        }
    }
}

structureExercise = \relative c' { 
    \key f \major
    \time 4/4
    \bar "||"
    s1*4 \break
    s1*4 \break
    s1*4
    \bar "||" \break

    s1*4 \break
    s1*4 \break
    s1*4
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    f2:7 ef:7 | f:7 ef:7 | f:7 ef:7 | f:7 ef:7 |
    af2:m7 df:7 | af:m7 df:7 | f:7 ef:7 | f:7 ef:7 |
    d2:m7 g:7 | c2:m7 f:7 | bf2:m7 ef:7 | f1 |  
}

chordsSong = \chordmode { 
    s8
    \chordsForm
    f1
}
chordsExercise = \chordmode { 
    \chordsForm
    \chordsForm
}

melodyPickup = \relative c' { 
    c8
}
melodyHead = \relative c' { 
    f8 4. ~ 4 r8 c8 | f8 4. ~ 4 r8 c |
    \tuplet 3/2 { f8 8 8 } af8 8 f8 8 ef c | f8 4. ~ 4 r8 f |

    bf8 4. ~ 4 r8 f8 | bf8 4. ~ 4 r8 c, |
    \tuplet 3/2 { f8 8 8 } af8 8 f8 8 ef c | f8 4. ~ 4 r8 f |

    c'8 f c f, b4 r8 f | bf4 c8 a r4 r8 f |
    af4 8 8 f g4 f8 | 
}
melodyTurnaround = \relative c'' { 
    r4 d8 df  c a f c ||
}

melodySong = \relative c' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)
    \melodyPickup
    \melodyHead
    \melodyTurnaround
    R1
}
melodyExercise = \relative c'' { 
    e1 s1*3
    e1 s1*3
    e1 s1*3
    e1 s1*3
    e1 s1*3
    e1 s1*3
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
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structureLead
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
            \new ChordNames \transpose bf c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \structureLead
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
            \new ChordNames \transpose ef c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \structureLead
                    \melodySong
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "worksheet-for-C"
    \header {
        poet = "Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsExercise 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \hideMelody
                    \structureExercise
                    \transpose e, c \melodyExercise
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "worksheet-for-Bb"
    \header {
        poet = "Bb Soprano Saxophone"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose bf c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsExercise 
            }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \hideMelody
                    \structureExercise
                    \transpose e b \melodyExercise
                    s1*24
                >>
            }
        >>
    }
}

\book {
  \bookOutputSuffix "worksheet-for-Eb"
    \header {
        poet = "Eb Alto Saxophone"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsExercise 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \hideMelody
                    \structureExercise
                    \melodyExercise
                    s1*24
                >>
            }
        >>
    }
}
