\version "2.19.81"

titleLeft = "Shoe Shine"
titleRight = "Boy"
title = "Shoe Shine Boy"
composerName = "S. Cahn & S. Chaplin"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview ; rm shoe-shine-boy*pdf ; lilypond ly/songs/jazz/shoe-shine-boy.ly ; for file in shoe-shine-boy*pdf ; do open -a Preview $file ; done

killPreview
rm shoe-shine-boy*pdf
lilypond ly/songs/jazz/shoe-shine-boy.ly
mv shoe-shine-boy*.pdf  pdf/songs/jazz
for file in pdf/songs/jazz/shoe-shine-boy*pdf ; do open -a Preview $file ; done

git add . ; git commit -m"fixing chords" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl


%}

atCoda = <>^\markup { \translate #'( -10 . 1.75) \huge \bold \musicglyph #"scripts.coda" }

\paper {

  top-margin = #2
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
    %\override Score.RehearsalMark #'extra-offset = #'( -3 . -2.5 )

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)

    \key f \major
    \time 4/4
    \startSection "Chorus 1 A"
    s1*4 \break
    s1*4 \bar "||" \break
    \startSection "A"
    s1*4 \break
    s1*4 \bar "||" \break
    \startSection "B"
    s1*4 \break
    s1*4 \bar "||" \break
    \startSection "A"
    s1*4 \break
    s1*4 \bar "||" \pageBreak

    \startSection "Chorus 2 A"
    s1*4 \break
    s1*4 \bar "||" \break
    \startSection "A"
    s1*4 \break
    s1*4 \bar "||" \break
    \startSection "B"
    s1*4 \break
    s1*4 \bar "||" \break
    \startSection "A"
    s1*4 \break
    s1*4 \bar "||" \break

}

chordsSongI = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

    f2 d:m | g:m7 c:7 | 
    f d:m | g:m7 c:7 | 
    f2 d:7 | a:m7 d:7 | 
    g2:m7 c:7 | f1  ||

    f2 d:m | g:m7 c:7 | 
    f d:m | g:m7 c:7 | 
    f2 d:7 | a:m7 d:7 | 
    g2:m7 c:7 | f1  ||

    a1:7 | s | d:m | s | 
    g1:7 | s | c:7 | s || 

    f2 d:m | g:m7 c:7 | 
    f d:m | g:m7 c:7 | 
    f2 d:7 | a:m7 d:7 | 
    g2:m7 c:7 | f1  ||


}
chordsSongII = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f

}
chordsSongIII = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
}


melody = \relative c' {


    % 1 A1

    c8 f r c  f4  d  | f  df  f  df  | 
    c8 f r c  f4  a8 g | f d bf g  a4.  g8 |

    e8 f a c  e4.  d8 | c8 bf g d  bf' g a f | 
    e8 f g gs  a4  d,8 f ~ | 2  r || 

    % 1 A2

    c'4  c'8 a ~ 4  r  | r  d, \glissando d'4-.  r8 a |
    g8 f d e  f g a g | f d c g  a c a g |

    e8 f a c  e d c g | a g f g  a4 r |
    c8 f r c  f4  df | c  a'2.  ||

    % 1 B
    a,2  r4  a8 cs | e4  \tuplet 3/2 { f8 g f }  e4  a, ~ | 
    a4  r  d8 e \tuplet 3/2 { f8 g f } | e8 c a f  d4-.  b' ~ | 

    b4  r  d8 e \tuplet 3/2 { f8 g f } | d8 b a g  a4-.  bf ~ | 
    bf4  r   c8 e g c | a f d bf  g f g a ||


    % 1 A3 
    c8 a c a  c4.  a8 | c a c a  c4.  a8 |
    c8 a c a  c a c a | c4 4  4.  gs8 |

    a8 c d f ~ 4  r  | e8 c a4  d-.  d8 e |
    \tuplet 3/2 { f8 g f } d8 bf  g4  f8 g | c2 r || 



    % 2 A1
    d8 f a c  \tuplet 3/2 { a16 c a } f8 d f | a c \tuplet 3/2 { a16 c a } f8  df4 r |
    r4 \tuplet 3/2 { c8 f a } c4  r8 a | g f d bf  g f d a' | 

    c8 a c a  c4.  e8 ~ | 4  d8 c  a g d e | 
    f8 g a d  df4  8 c ~ | 2  r ||

    % 2 A2
    d8 a d d  a a d4 | bf8 d bf bf  d4.  bf8 | 
    a8 a d a  a d a a | d d bf d  bf4  d8 d |

    df8 8 c4 ~  4  r  | e2   d4-. \tuplet 3/2 { a'8 g f } | 
    d8 bf g d  a'4.  f8 ~ | 2  r4 f8  a ||

    % 2 B  
    cs8 e f e  cs bf a4  | cs4. e8  r4  r8 a, |
    d8 e \tuplet 3/2 { f8 g f }  d bf g d | a'4.  d8  r4  r8 d8 |

    b8 c d e  f e d bf | a4.  d8  r4  r8 g, | 
    c8 d e f  g e \tuplet 3/2 { f8 g f } | d8 bf g d  a'4  r ||


    % 2 A3
    d4-. f-. a4 r | d,4-. f-.  g8 a r f | 
    d4-. \tuplet 3/2 { f8 g f }  d4-.  e8 f | d bf g4-.  f8 a f4-. |

    e8 f a c  e4  r  | d4-.  a8 c  r4  c8 d | 
    e8 f c a  f4  c'8 a | f4 r r2 ||

}

\header {
    title = \title
    composer = \composerName
}

\book {
  \bookOutputSuffix "for-C"
    \header {
        poet = "    Concert Lead Sheet"
        instrumentName = \poet
        subtitle = "(Lester Young solo transcription)"
    }
    \score {
        \transpose c, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSongI
                \chordsSongI
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
        subtitle = "(Lester Young solo transcription)"
    }
    \score {
        \transpose bf,, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSongI
                \chordsSongI
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
  \bookOutputSuffix "for-Eb"
    \header {
        poet = "    Eb Lead Sheet"
        instrumentName = \poet
        subtitle = "(Lester Young solo transcription)"
    }
    \score {
        \transpose ef, c <<
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSongI
                \chordsSongI
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

