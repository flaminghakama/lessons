\version "2.19.81"

titleLeft = "Cham"
titleRight = "eleon"
title = "Chameleon"
composerName = "H. Hancock"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

rm chameleon*pdf
lilypond ly/songs/jazz/chameleon.ly
python ~/git/part-format/combine-1Page-1Page.py chameleon-for-C.pdf chameleon-for-Eb.pdf chameleon-for-C-and-Eb.pdf
mv chameleon-for-C-and-Eb.pdf pdf/songs/jazz/printable
mv chameleon*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/chameleon*pdf pdf/songs/jazz/printable/chameleon*pdf ; do op $file ; done

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

structure = \relative c' { 

    \key bf \major
    \time 4/4
    \partial 8*4 s2 
    \bar "[|:" 
    s1*2 

    \bar ":|][|:"
    \startSectionWithLabel ""  "Play 4X"
    s1*3 \break s1

    \bar ":|][|:"
    \startSectionWithLabel ""  "Play 3X"
    s1*2 \break s1*2

    \bar ":|]"
    \startSectionWithLabel ""  ""
    s1 \break s1*3

    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s2 ||
    bf1:m7 | ef:7 ||
    bf1:m7 | ef:7 | bf:m7 | ef:7 ||
    bf1:m7 | ef:7 | bf:m7 | ef:7 ||
    bf1:m7 | ef:7 | s | s ||
}

bassPickup = \relative c { 
    r8 g8 af [ a ] ||
}
bassLick = \relative c { 
    bf8. af'16-.  r8 bf-.  r c,  df [ d ] | 
    ef8. bf'16-.  r8 df-.  r g,,  af [ a ] || 
}
bassEndLick = \relative c { 
    bf8. af'16-.  r8 bf-.  r c,  df [ d ] | 
    ef8. bf'16-.  r8 bf ~ 2 | 
    R1 | r2 \bassPickup 
}
bassSong = \relative c { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)
    \bassPickup

    \bassLick

    \bassLick
    \bassLick

    \bassLick
    \bassLick

    \bassEndLick
}

melodyPickup = \relative c'' { s2 } 

melodyIntro = \relative c' { s1*2 } 

melodyHead = \relative c'' { 
    bf16-> 16-. r8  af16-> 16-. r8  bf16-> 16-. r8  df4^\lheel | 
    bf4-^  r  r  bf16 af f af-> ~ | 8 bf  r4  r  r8 df-> ~ | 8 ef  r4  r2 |
} 
melodyBridgeCommon = \relative c'' { 
        ef4--  8-. df-> ~  8 df16 ef |
    df16 bf ef, df ~  8 bf ~  4  bf'16 af f af ~ | 
    af8 bf  r4  r  r8 df-> ~ | 8 ef-^  r4  r2 |  
} 
melodyFirstNoteEb = \relative c'' { 
    << \relative c'' { 
        \stemDown
        \once \hide NoteHead \once \hide Stem bf8 \glissando f'8 } \\
       \relative c' { d8 \rest s8 } >>
}
melodyFirstNoteConcert = \relative c'' { 
    << \relative c'' { 
        \stemDown 
        \once \hide NoteHead \once \hide Stem bf8 \glissando f'8 } \\
       \relative c'' { bf8 \rest s8 } >>
}


melodyBridgeConcert = \relative c'' { 
    \melodyFirstNoteConcert
    \melodyBridgeCommon
} 
melodyBridgeEb = \relative c'' { 
    \melodyFirstNoteEb
    \melodyBridgeCommon
} 
melodyEndCommon = \relative c'' {
        ef4--  8-. df-> ~  8 df16 ef |
    df16 bf ef, df ~  8 bf ~  2 | 
}
melodyEndConcert = \relative c'' {
    \melodyFirstNoteConcert
    \melodyEndCommon
} 
melodyEndEb = \relative c'' {
    \melodyFirstNoteEb
    \melodyEndCommon
} 
melodySong = \relative c' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)
    \melodyPickup
    \melodyIntro
    \melodyHead
    \melodyBridgeConcert
    \melodyEndConcert R1*2
}

melodyEb = \relative c' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)
    \transpose c, c { 
        \bassPickup 
        \bassLick
    }
    \transpose c c, \melodyHead
    \melodyBridgeEb
    \melodyEndEb
    R1 r2 \transpose c, c \parenthesize \bassPickup
}

\layout {
    \context {
        \Staff
        \RemoveAllEmptyStaves
    }
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
        \new StaffGroup <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                <<
                    \structure
                    \melodySong
                >>
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \clef bass
                \new Voice <<
                    \structure
                    \bassSong
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
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \new Voice <<
                    \structure
                    \melodyEb
                >>
            }
        >>
    }
}
