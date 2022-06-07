\version "2.19.81"

titleLeft = "New"
titleRight = "comer"
title = "Newcomer"
composerName = "D. Pullen"

%{

killPreview ; rm newcomer*pdf ;  lilypond ly/songs/jazz/newcomer.ly  ; for file in newcomer*.pdf ; do op $file ; done  

killPreview
rm newcomer*pdf
lilypond ly/songs/jazz/newcomer.ly
mv newcomer*.pdf pdf/songs/jazz
for file in pdf/songs/jazz/newcomer*.pdf ; do op $file ; done  

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

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

structureIntro = \relative c' { 
    \tempo "Rubato" 4=56
    \partial 8 s8
    \startSection "Intro"

}

structure = \relative c' { 
    \tempo "Ballad" 4=56
    \partial 8 s8
    \startSection "A1"
    s1*4 \break
    s1*4 \break

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -5 . -1 )

    \startSection "A2"
    s1*4 \break
    s1*4 \break

    \startSection "B"
    s1*4 \break
    s1*4 \break

    \startSection "A1"
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsIntro = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    s8

    g1:7.5- | af:7.5- | a:7.5- | bf2:7.5- e:7.9+ | 
    df1:maj7 | d2:m7.5- g:aug7 | b1:maj7 | s ||

    a1:7.5- | bf:7.5- | b:7.5- | bf2:maj13.11+ e:7.9+ | 
    df1:maj7 | d2:m7.5- g:7 | c1:maj7 | s ||

    af1:aug7.7+/g | s | c2:maj7 f:7 | e:m11 a:aug7.5-.9- |
    df1:maj7 | g2:m7.5- c:7.9- | df1:maj7 | d2:m7.5- g:7.9- ||

    g1:7.5- | af:7.5- | a:7.5- | bf2:7.5- e:7.9+ | 
    df1:maj7 | d2:m7.5- g:aug7 | b1:maj7 | s ||
}

melodyIntro = \relative c'' { 
    g16 gs | a2. a8 g \grace { gs ( } | a2. ) a16 g |
    a8 d c4 a4.  g ~ | 4 a8 f ~ 2 | 
    r4 r8 f g4 f8 g | af4 bf4 ~ 4. c16 df | 
    c2\trill \grace { bf16 [ af f df ] c [ df c bf ] } | 
        c2 c'16 [ df \tuplet 3/2 { c16 df c ] } \tuplet 6/4 { bf16 af f  df c af } | 
    f4 af b \glissando f'8 \glissando af  ~ | 4. g16 f g4 r |

    d'32 b g f  d c b16 ~ 4 \grace { c16 cs }  d4 \grace { e16 f } g  |   
    e8 b \repeat tremolo 6 { e,16 b' } |
    \tuplet 3/2 { a'16 g e  d c a ~ } a8 \tuplet 3/2 { c16 a g } d8. g16 e4 ~ | 1 |  
    s1*2 | s2..
}

melodyACommon = \relative c'' { 
    a4 r8 a16 g a2 ~ | 4. 16 g a8 bf4. | 
    g4 r8 g16 f g2 ~ | 4. 16 f g8 af4. | 

    f4 r8 f16 e f2 ~ | 4. 16 ef f8 gf4. | 
    ds1 ~ | 2.
}
melodyAOne = \relative c' { 
    c8 ||
    \melodyACommon
}
melodyATwo = \relative c' { 
    r8 c8 ||
    a'4 r8 a16 g a2 ~ | 4. 16 g a8 bf4. | 
    g4 r8 g16 f g2 ~ | 4. 16 f g8 af4. | 

    f4 r8 f16 e f2 ~ | 4. 16 e f8 g4. | 
    e1 ~ | 2.
}
melodyB = \relative c'' { 
    \override Glissando.breakable = ##t
    \override Glissando.after-line-breaking = ##t
    r16 g af bf \glissando ||
    e4. 16 d e2 | \tuplet 3/2 { e4 d c } \tuplet 3/2 { b4 c d } | 
    g,4. 8 2 | 8 a g a bf4 a | 

    af4 bf df f | 4. ef16 df c4 bf | 
    af1 | 8 bf4 af16 bf af4 g |    
}
melodyAThree = \relative c' { 
    \melodyACommon
    r4
}

melody = \relative c'' { 
    \melodyAOne
    \melodyATwo
    \melodyB
    \melodyAThree
}

\layout {
    \context { 
        \Staff \RemoveAllEmptyStaves 
   }
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        title = \title
        composer = \composerName
        poet = "Concert Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose c c <<
            \key c \major 
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "lead" \with {
                \consists "Merge_rests_engraver"
            } \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Bb"
    \header {
        title = \title
        composer = \composerName
        poet = "Bb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose bf, c <<
            \key bf \major 
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "lead" \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}

\book {
  \bookOutputSuffix "for-Eb"
    \header {
        title = \title
        composer = \composerName
        poet = "Eb Lead Sheet"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        \transpose ef, c <<
            \key ef \major 
            \new ChordNames \transpose c c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm 
            }
            \new Staff = "lead" \keepWithTag #'(C) \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \structure
                    \melody
                >>
                \noPageBreak
            }
        >>
    }
}
