\version "2.19.81"

titleLeft = "Blue"
titleRight = "Choice"
title = "Blue Choice"
composerName = "Elaine Paul"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm blue-choice*pdf
lilypond ly/songs/alt/blue-choice.ly

python ~/git/part-format/combine-1Page-1Page.py blue-choice-for-C.pdf blue-choice-for-Bb.pdf blue-choice-for-C-and-Bb.pdf
python ~/git/part-format/combine-1Page-1Page.py blue-choice-for-C.pdf blue-choice-for-Eb.pdf blue-choice-for-C-and-Eb.pdf

mv blue-choice-for-C.pdf  pdf/songs/alt
mv blue-choice-for-Bb.pdf pdf/songs/alt
mv blue-choice-for-Eb.pdf pdf/songs/alt
mv blue-choice-for-C-and-Bb.pdf  pdf/songs/alt
mv blue-choice-for-C-and-Eb.pdf  pdf/songs/alt

op pdf/songs/alt/blue-choice-for-Eb.pdf

for file in pdf/songs/alt/blue-choice*pdf ; do open -a Preview $file ; done

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

    \key c \major
    \time 4/4
    \startSection "Head"
    \bar "[|:"
    \repeat volta 2 { 
        s1*4 \break
        s1*4 \break
        s1*4
    }
    \bar ":|]" \break

    \startSection "Fours"
    s1*4 
    s1*4 
    s1*4 
    \bar "||" \break
    s1*4 
    s1*4 
    s1*4  
    \bar "||"
    s1*4 
    s1*4 
    s1*4 
    \bar "||"
    s1*4 
    s1*4 
    s1*4 
    \bar "||"
}

blueChoiceChords = \chordmode {
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:maj7 | b2:m7.5- e:7 | a:m7 d:7 | g:m7 c:7 | 
    f1:maj7 | f2:m7 bf:7 | e:m7 a:7 | ef:m7 af:7 | 
    d1:m7 | g:aug7 | c2:maj7 ef:maj7 | af:maj7 df:maj7 |
}

blueFourChords = \chordmode {
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:maj7 | b2:m7.5- e:7 | a:m7 d:7 | g:m7 c4.:7 f8:maj7 | 
    s1*4 |
    d1:m7 | g:aug7 | c2:maj7 ef:maj7 | af:maj7 df4.:maj7 c8:maj7 |

    s1*4 |
    f1:maj7 | f2:m7 bf:7 | e:m7 a:7 | ef:m7 af:7 | 
    s1*4 |

    c1:maj7 | b2:m7.5- e:7 | a:m7 d:7 | g:m7 c:7 | 
    f4:maj7 s s2 | s1*3 |
    d1:m7 | g:aug7 | c2:maj7 ef:maj7 | af:maj7 df4.:maj7 c8:maj7 |

    s1*4 |
    f1:maj7 | f2:m7 bf:7 | e:m7 a:7 | ef:m7 af:7 | 
    s1*4 |
}


chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \blueChoiceChords
    \blueFourChords
}

head = \relative c'' { 
    b4. c8 b g4 a16 fs | f2 r | 
    r4 a4 \tuplet 3/2 { fs4 a fs } | \tuplet 3/2 { f4 a bf } d8 bf c d ~ | 

    d8 \glissando b4. e4 r | r f d8 ef c bf | 
    b8 4. ~ 8 cs b cs | bf df af gf ~ 4 r | 

    r4 f ~ 8 a4 f16 e | ds2. cs8 c ~ | 
    c4. g'8 ~ 8 ef f g ~ | 8 bf4 ef8 ~ 4 c8 b \laissezVibrer ||
}

choiceFours = \relative c'' { 
    \relative c'' { 
        c4 g8 8 ~ 8 c4 g8 | d'4 a8 gs ~ 8 b e d ~ | 
        \tuplet 3/2 { d8 e d } c8 gs a c fs, bf ~ | \tuplet 3/2 { bf8 c d } a8 c ~ 8 bf4 a8 | 
    }
    R1*4 | 
    \relative c' { 
        r4 e ~ 8 g4 f16 e | ds2. cs8 c ~ | 
        4. g'8 ~ 8 d e g ~ | 8 bf4 c8 ~ 4 \glissando f,8 b ||
    } ||


    R1*4 |
    \relative c'' { 
        c4 e, g d | ef8 f g4 r r8 b ~ | 
        b4 e, g a | bf8 af gf4 r2 |
    }
    R1*4 ||

    \relative c' { 
        r4 r8 d16 e g8 f e a ~ | 8 b4 d8 ~ 4 b | 
        e c d8 c b a | bf a e4 r8 bf'4 e,8 | 

        f8 c r4 r2 | R1*2 | r2 r4 r8 a' ~ | 
        
        \tuplet 3/2 { a8 c a } g8 f af fs4 g8 ~ | 4 ds8 cs f a g e ~ |
        e8 4 f8 \tuplet 3/2 { g8 f ef } \tuplet 3/2 { d8 c bf } | af8 c ef g bf c ef d ||
    }


    \relative c'' { 
        R1*3 | r2 r4 r8 g ~ |

        g4 4 8 4 8 | 4 8 8 ~ 8 4 8 ~ | 
        g4 4 8 8 af4 ~ | 4 \tuplet 3/2 { gf8 f ef ~ } 4 r | 

        R1*4 ||
    }
}

melody = \relative c' { 
    \head
    \choiceFours
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

