\version "2.19.81"

titleLeft = "Lady"
titleRight = "Bird"
title = "Lady Bird"
composerName = "T. Dameron"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm lady-bird*pdf
lilypond ly/songs/jazz/lady-bird.ly
mv lady-bird*pdf pdf/songs/jazz
for file in pdf/songs/jazz/lady-bird*pdf ; do open -a Preview $file ; done

%}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

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
\include "ly/ily/hideMelody.ily"

structure = \relative c' { 

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.RehearsalMark #'extra-offset = #'( 0 . 0 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.15)

    \key c \major
    \time 4/4
    \mark \markup \box "V.1"
    \repeat volta 2 {
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 \break
    }
    \bar "||"

    \mark \markup \box "V.2"
    \repeat volta 2 {
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 
    } 
    \bar "[|:"

    \mark \markup \box "Shout"
    \repeat volta 2 {
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 \break 
    } \bar ":|][|:"

    \mark \markup \box "V.3"
    \repeat volta 2 {
        s1*4 \break
        s1*4 \break
        s1*4 \break
        s1*4 
    } 
    \bar ":|]"
}

chordsReal = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:maj7 | s | f:m7 | bf:7 | 
    c1:maj7 | s | bf:m7 | ef:7 | 
    af1:maj7 | s | a:m7 | d:7 | 
    d1:m7 | g:7 | c2:maj7 ef:maj7 | af:maj7 df:maj7 ||
}
chordsScher = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    c1:maj7 | s | f:m7 | bf:7 | 
    c1:maj7 | s | bf:m7 | ef:7 | 
    af1:maj7 | s | a:m7 | d:7 | 
    d1:m7 | g:7 | c2:maj7 ef:7 | af:7 g:7.5- ||
}
chordsDexter = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    c1:maj7 | s | f:m7 | bf:7 | 
    c1:maj7 | s | b2:m7 e:7 | bf:m7 ef:7 | 
    af1:maj7 | s | a:m7 | d:7 | 
    d1:m7 | g:7 | c2:maj7 ef:7 | af:maj7 g:7.9- ||
}

melodyReal = \relative c'' { 
    r8 g4. 4 4 | 4. 8 ~ 4 4 | 
    bf2 \tuplet 3/2 { af4 c, ef } | g4. \glissando e8 ~ 2 | 
    
    r8 g4. 4 4 | 4. 8 ~ 4 4 | 
    c2 \tuplet 3/2 { bf4 df, f } | c'4. \glissando a8 ~ 2 | 

    r8 bf4. a4 af | bf a8 af ~ 2 | 
    r8 b4. bf4 a | b bf8 a ~ 2  | 

    c2 ~ 8 a f e ~ | 2 cs4 d8 g ~ | 
    g1 ~ | 1 |     
}

melodyScher = \relative c'' { 
    r8 g4. 4 4 | 4. 8 r g4. | 
    bf2 \tuplet 3/2 { af4 ef c } | g'4 f2. |  

    r8 g4. 4 4 | 4. 8 r g4. | 
    c2 \tuplet 3/2 { bf4 f df } | c'4 b2. |  

    r8 bf4. a4 af | bf a8 af ~ 2 | 
    r8 b4. bf4 a | b bf8 a ~ 2  | 

    c2 ~ \tuplet 3/2 {  c4 a f } | e2 cs4 d | 
    << \relative c'' { g1 ~ | 1 } \\
       \relative c'' { g4 4 f ef | f f ef df } >>
}

melodyDexter = \relative c'' { 
    r8 g4. 4 4 | 4. 8 r g4 8 | 
    bf2 af8 c, ef g | r e2.. | 
    
    r8 g4. 4 4 | 4. 8 r g4 8 | 
    c2 bf8 df, f c' | r a2.. | 

    r8 bf4. a4 af | bf a8 af ~ 4 r | 
    r8 b4. bf4 a | b bf8 a ~ 4 r | 

    c2 r8 a4 f8 | e2 r8 e4 f8 | 
    g4. ( gs16 a bf2 ) | ef,4. ( f16 g af2 ) |
}

shoutMelody = \relative c'' { 
    r8 d4. b8 g r b | d4 b8 g r b d [ bf ~ ] |
    bf2.. 8 | r2 r8 b4. |

    d8 8 r4 r8 b r b ~ | 4 g g8 b d ef ~ | 
    ef2.. 8 | r ef8 8 [ 8 ] r gf4.  | 

    ef4 \comp #3 | \comp #12 | 
    \comp #16 | 
}


\header {
    title = \title
    composer = \composerName
}

melody = {
    \melodyReal 
    \melodyScher
    \pageBreak 
    \shoutMelody
    \melodyDexter 
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        poet = "    Concert Pitch"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsReal
                \chordsScher
                \chordsScher
                \chordsDexter
            }
            \new Staff \transpose c c { 
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
  \bookOutputSuffix "for-Bb"
    \header {
        poet = "    Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsReal
                \chordsScher
                \chordsScher
                \chordsDexter
            }
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
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsReal
                \chordsScher
                \chordsScher
                \chordsDexter
            }
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

