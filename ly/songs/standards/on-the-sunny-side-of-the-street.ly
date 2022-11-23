\version "2.19.81"

titleLeft = "On The Sunny"
titleRight = "Side of the Street"
title = "On The Sunny Side of the Street"
composerName = "J. McHugh/D. Fields"
arrangerName = "D. Gillespie"

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

%{

killPreview
rm on-the-sunny-side-of-the-street*pdf
lilypond ly/songs/standards/on-the-sunny-side-of-the-street.ly
# python ~/git/part-format/combine-1Page-1Page.py on-the-sunny-side-of-the-street-for-C.pdf on-the-sunny-side-of-the-street-for-Bb.pdf on-the-sunny-side-of-the-street-for-C-and-Bb.pdf
# python ~/git/part-format/combine-1Page-1Page.py on-the-sunny-side-of-the-street-for-C.pdf on-the-sunny-side-of-the-street-for-Eb.pdf on-the-sunny-side-of-the-street-for-C-and-Eb.pdf
# python ~/git/part-format/combine-1Page-1Page.py on-the-sunny-side-of-the-street-for-Bb.pdf on-the-sunny-side-of-the-street-for-Eb.pdf on-the-sunny-side-of-the-street-for-Bb-and-Eb.pdf
# python ~/git/part-format/combine-1Page-1Page.py on-the-sunny-side-of-the-street-for-C.pdf on-the-sunny-side-of-the-street-worksheet-for-C.pdf on-the-sunny-side-of-the-street-and-worksheet-for-C.pdf
# python ~/git/part-format/combine-1Page-1Page.py on-the-sunny-side-of-the-street-for-Bb.pdf on-the-sunny-side-of-the-street-worksheet-for-Bb.pdf on-the-sunny-side-of-the-street-and-worksheet-for-Bb.pdf
# python ~/git/part-format/combine-1Page-1Page.py on-the-sunny-side-of-the-street-for-Eb.pdf on-the-sunny-side-of-the-street-worksheet-for-Eb.pdf on-the-sunny-side-of-the-street-and-worksheet-for-Eb.pdf
# python ~/git/part-format/combine-1Page-1Page.py on-the-sunny-side-of-the-street-worksheet-for-C.pdf on-the-sunny-side-of-the-street-worksheet-for-C.pdf on-the-sunny-side-of-the-street-worksheet-for-C-double.pdf
# python ~/git/part-format/combine-1Page-1Page.py on-the-sunny-side-of-the-street-worksheet-for-Bb.pdf on-the-sunny-side-of-the-street-worksheet-for-Bb.pdf on-the-sunny-side-of-the-street-worksheet-for-Bb-double.pdf
# python ~/git/part-format/combine-1Page-1Page.py on-the-sunny-side-of-the-street-worksheet-for-Eb.pdf on-the-sunny-side-of-the-street-worksheet-for-Eb.pdf on-the-sunny-side-of-the-street-worksheet-for-Eb-double.pdf
mv on-the-sunny-side-of-the-street*worksheet*.pdf  pdf/songs/standards/printable
mv on-the-sunny-side-of-the-street*and*.pdf pdf/songs/standards/printable
mv on-the-sunny-side-of-the-street*.pdf pdf/songs/standards

for file in pdf/songs/standards/on-the-sunny-side-of-the-street*pdf pdf/songs/standards/on-the-sunny-side-of-the-street*pdf; do open -a Preview $file ; done

%}


\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #0

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

    \override Score.RehearsalMark.self-alignment-X = #RIGHT

    \key c \major
    \time 4/4
    \tempo "Medium Swing"
    s1
    \bar "||"

    \once \override Score.RehearsalMark #'extra-offset = #'( 6 . -2 )
    \mark \markup \box "A" 
    s1*4 \break
    s1*4 \break
    \bar "||"

    \override Score.RehearsalMark #'extra-offset = #'( 1 . 1 )
    \mark \markup \box "A" 
    s1*4 \break
    s1*4 \break
    \bar "||"

    \mark \markup \box "B" 
    s1*4 \break
    s1*4 \break
    \bar "||"

    \mark \markup \box "A" 
    s1*4 \break
    s1*4 \break
    \bar "|."
}


structureExercise = \relative c' { 

    \key c \major
    \time 4/4
    \tempo "Medium Swing"
    \mark \markup \box "A1" 
    s1*4 \break
    s1*4 \break
    \bar "||"

    \mark \markup \box "A2" 
    s1*4 \break
    s1*4 \break
    \bar "||"

    \mark \markup \box "B3" 
    s1*4 \break
    s1*4 \break
    \bar "||"

    \mark \markup \box "A4" 
    s1*4 \break
    s1*4 
    \bar "|."
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:maj7 | e:7 | f:6 | g2:13 gs:dim7 | 
    a1:m7 | d:7.11+ | d2:m7 g:13 | c g:13 || 

    c1:maj7 | e:7 | f:6 | g2:13 gs:dim7 | 
    a1:m7 | d:7.11+ | d2:m7 g:1.4.5.7 | c1:6 || 

    g1:m7 | c:7 | f:maj7 | s4 f4:7/c e:7/b ef:7/bf | 
    d1:7 | s | d:m7 | g:1.4.5.7.9.13 ||

    c1:maj7 | e:7 | f:6 | g2:13 gs:dim7 | 
    a1:m7 | d:7.11+ | d2:m7 g4.:1.4.5.7 c8:6 | df1:maj7 || 
}
chordsSong = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    g1:13
    \chordsForm
}

melodyAOne = \relative c' { 
    c4-. r8 d8 e g r e' | R1 | 
    r2 d8. \turn c16 a8 f | e g ef d r2 | 
    r8 c r d e g c b | r2 r4 a8 c | 
    r8 d, f [ a ] c4 ( \grace { d16 c } b8 ) g | r2 
}
melodyATwo = \relative c' { 
        r8 e4. \glissando  ||
    c4-. r8 d8 e g r gs ~ | 4 \turn e8 e' r2 | 
    r2 d8. \turn c16 a8 f | e g ef d r2 | 
    r8 c r d e g c b | r2 r4 a8 c | 
    r8 d, f [ a ] c8 8 r c | 
}
instrumentalBridge = \relative c'' { 
    <<
        \relative c'' {
            r8 c4 \turn a8  c4 \turn a8 c ~ ||
            c8 \turn a  c4 \turn a8 c4 \turn a8 | 
            c4 \turn a8 c8 ~ 8 \turn a8 c4 \turn | 
            a8 c4 \turn a8 c4 \turn a8 c ~ |  
            c8 \turn a  c4 \turn a8 c4 \turn a8 | 

            c8 c4 \turn a8 c4 r8 c8 ~ | 
            c8 \turn a  c4 \turn a8 c4 \turn a8 | 
            c8 4 \turn a8 c4 r8 c8 ~ | 
            c8 \turn a8 c4 
        } \\
        \relative c' {
            r2 r8 c4 ( \turn a8 ||
            c4 ) r8 c8 ( ~ 8 \turn a8 c4 ) |
            r8 c4 ( \turn a8 c ) c4 ( \turn a8 |
            c4 ) r8 c8 ( ~ 8 \turn a8 c4 ) |
            r8 c4 ( \turn a8 c ) c4 ( \turn a8 |

            c4 ) r8 c8 ( ~ 8 \turn a8 c4 ) |
            r8 c4 ( \turn a8 c ) c4 ( \turn a8 |
            c4 ) r8 c8 ( ~ 8 \turn a8 c4 ) |
            r8 c4 ( \turn a8 ) 
        }
    >> 
}
melodyBridge = \relative c'' { 
    r8 c4. 4 4 ||
    c2 r8 d,8 f [ e ] ~ | 2 r8 c'4 8 | 2 e,8 g4 f8 ~ | 2. c'4 | 
    c2 e,8 g4 fs8 ~ | 2. a4 | b8 d4. r4 e, | f8 a4. 
}
melodySong = \relative c' { 
    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.2)
    \override Glissando.breakable = ##t
    \override Glissando.after-line-breaking = ##t
    \fermata e1 \glissando
    \melodyAOne
    \melodyATwo
    \melodyBridge
    \melodyATwo
    \relative c' {
        r8 df f [ af ] c8 8 r c 
    }
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


\header {
    title = \title
    subtitle = "(as played by Dizzy Gillespie)"
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
            \new ChordNames \transpose c c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong 
            }
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
        poet = "    Bb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose bf c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong 
            }
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
        poet = "    Eb Lead Sheet"
        instrumentName = \poet
    }
    \score {
        <<
            \new ChordNames \transpose ef c  { 
                \include "ly/ily/chord-names-properties.ily" 
                \chordsSong 
            }
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
