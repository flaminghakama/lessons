\version "2.19.81"

titleLeft = "Ms. Garvey,"
titleRight = "Ms. Garvey"
title = "Ms. Garvey, Ms. Garvey!!"
composerName = "J. Marshall"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

rm ms-garvey-ms-garvey*pdf ; lilypond ly/songs/jazz/ms-garvey-ms-garvey.ly ; for file in ms-garvey-ms-garvey*pdf ; do open -a Preview $file ; done


killPreview
rm ms-garvey-ms-garvey*pdf
lilypond ly/songs/jazz/ms-garvey-ms-garvey.ly
mv ms-garvey-ms-garvey*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/ms-garvey-ms-garvey*pdf ; do open -a Preview $file ; done

%}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

\paper {

  top-margin = #4
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #4

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

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( -3 . -2.5 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key f \minor
    \time 4/4
    \bar "[|:"
    s1*4 \break

    \startSection "A"
    \repeat volta 2 {    
        \bar ":|]S[|:"
        s1*4 \break
        s1*4 \break

        \startSection "B"
        s1*4 \break
        s1*3
    }
    \alternative { 
        { s1 \bar ":|]" }
        { 
            s4 <>_\markup \center-column { 
                    "D.S. for solos"
                    \line { "on" \box "A" \box "B" }
                } s2. \bar "|." 
        }
    }

}

chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
 
    f2:m d:m7.5- | g:m7.5- c:7 |
    f2:m d:m7.5- | g:m7.5- c:7 ||

    
    f2:m d:m7.5- | g:m7.5- c:7 |
    f2:m d:m7.5- | g:m7.5- c:7 |

    f1:m | s | 
    c1:7 | s || 

    f1:m | s | 
    bf1:7 | s |

    g1:m7.5- | df2:7 c:7 | 
    f1:m | c:7 || f:m  ||
}

melodyLickPickup = \relative c'' { 
    r8 c ef [ f ] || 
}
melodyLickOne = \relative c'' { 
    \melodyLickPickup 
    r4 c8 8  r4 \tuplet 3/2 { r8 f, af } | 
    \tuplet 3/2 { bf8 8 af } bf8 [ r16 c ] bf8.*2/3 [ s16 \turn af16 ]  \tuplet 3/2 { f8 ef f } |
    R1 | r2
}
melodyLickTwo = \relative c'' { 
    \melodyLickPickup 
    r4 c8 8  r4 \tuplet 3/2 { r8 f, af } | 
    \tuplet 3/2 { bf8 8 af } bf8 [ r16 c ] bf8.*2/3 [ s16 \turn af16 ] \tuplet 3/2 { bf8 af c } |
    R1*2 | 
}
melodyLickThree = \relative c'' {
    r4 f4 ~ 4 ef8 c | 
    bf8.*2/3 [ s16 \turn af16 ]  \tuplet 3/2 { bf8 f af ~ } 4 c,8 cs | 
    d8 bf'4. ~ 2 ~ | 4 r 
}
melodyLickFour = \relative c'' { 
    \melodyLickPickup 
    r4 c8 8  r4 \tuplet 3/2 { r8 f, af } | 
    \tuplet 3/2 { bf8 8 af } bf8 [ r16 c ]  bf8.*2/3 [ s16 \turn af16 ]  \tuplet 3/2 { f8 ef f } |
    r4 \tuplet 3/2 { f'8 ef c } cf8.*2/3 [ s16 \turn af16 ] \tuplet 3/2 { f8 ef f } | 
        r2 \melodyLickPickup || 
        R1 ||
}
melody = { 
    R1*3 r2 
    \melodyLickOne
    \melodyLickTwo
    \melodyLickThree
    \melodyLickFour
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
        \transpose f g <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \override Script.padding = #0.5
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
        \transpose f g <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong  
            }
            \new Staff \transpose bf, c { 
                \include "ly/ily/staff-properties.ily"
                \override Script.padding = #0.5
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
        \transpose f g <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsSong 
            }
            \new Staff \transpose ef, c { 
                \include "ly/ily/staff-properties.ily"
                \override Script.padding = #1.5
                <<
                    \structure
                    \melody
                >>
            }
        >>
    }
}

