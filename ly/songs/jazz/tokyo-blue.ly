\version "2.19.81"

titleLeft = "Tokyo"
titleRight = "Blue"
title = "Tokyo Blue"
composerName = "Charles McPherson"
arrangerName = "D. Elaine Alt"

%{

rm tokyo-blue-Alto-Saxophone-in-Eb.pdf ; lilypond ly/songs/tokyo-blue.ly 
python ~/git/part-format/bookify-4page.py tokyo-blue-Alto-Saxophone-in-Eb.pdf tokyo-blue-Alto-Saxophone-in-Eb.printable.pdf
mv tokyo-blue-Alto-Saxophone-in-Eb.pdf pdf/songs
mv tokyo-blue-Alto-Saxophone-in-Eb.printable.pdf pdf/songs/printable
op pdf/songs/printable/tokyo-blue-Alto-Saxophone-in-Eb.printable.pdf

%}


\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

\header {
    arranger = \markup \italic { "Transcribed by " \arrangerName }
}


\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #12

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #20

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

structure = \relative c' { 
    \key c \major
    s1*4

    \startSection "1"
    s1*4 
    s1*4 
    s1*4 

    \startSection "2"
    s1*4 
    s1*4 
    s1*4 

    \startSection "3"
    s1*4 
    s1*4 
    s1*4 

    \startSection "4"
    s1*4 
    s1*4 
    s1*4 

    \startSection "5"
    s1*4 
    s1*4 
    s1*4 

    \startSectionWithLabel "6" "Piano"
    \bar "||"
    s1 s1*11
    \bar "||"
    s1*12
    \bar "||"
    s1*12
    \bar "||"

    \startSectionWithLabel "9" "Bass"
    s1*12 
    \bar "||"
    s1*12 
    \bar "||"

    \startSection "11"
    s1*4 
    s1*4 
    s1 | s2. \tempo "rit." s4 | s1*2 
    \bar "|."
}

chordsFormInEb = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:7 | d:7 | a:7 | e2:m7 a:7 | 
    d1:7 | s | a:7 | cs2:m7 fs:7 | 
    b1:m7 | e:7 | a:7 | b2:m7 e:7 |
}

chordsSongInEb = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1*4 ||
    \chordsFormInEb
    \chordsFormInEb
    \chordsFormInEb
    \chordsFormInEb
    \chordsFormInEb
    a1:7 | s1*11 | 
    s1*12 |
    s1*12 |

    s1*12 | 
    s1*12 | 
    \chordsFormInEb
}

introMelodyInEb = \relative c''' { 
    a8. 16  16 8.  \tuplet 3/2 { g8 a b }  a16 e8. | 
    a8. 16  16 8.  \tuplet 3/2 { c8 d e }  c16 a8. | 
    \tuplet 3/2 { c8 d8 8 }  \tuplet 3/2 { d8 8 8 }  \tuplet 3/2 { c8 d8 8 }  \tuplet 3/2 { d8 8 8 } |
    \tuplet 3/2 { c8 d8 8 }  \tuplet 3/2 { d8 8 8 }  c4  g16 fs d e 
}

melodySongInEb = \relative c' { 

    \override Beam.damping = #2.75 
    \override Stem.length-fraction = #(magstep 1.25)

    << 

        \new CueVoice {
            <>^"piano cue"
            \introMelodyInEb
        } \\
        { 
            R1*4 
            \breakPart
        } 
    >>

    % 1
    r8 e16 fs  a b c cs  \tuplet 3/2 { d8 ef e } c32 cs a8. ~ | 
    a8 e16 fs  a fs e' d ~  16 a b c ~  8 a16 fs | 
    c'16 [ 
            \set stemRightBeamCount = #1
            cs 
            \set stemLeftBeamCount = #1 
            \tuplet 3/2 { c16 cs c ] } cs16 a fs e  a g b8 ~  8 a16 fs | 
    cs'16 e fs e ~  16 cs a g ~  4 r | 

    r8. e32 fs  a16 b c d  e a, d c ~  8 a16 r | 
    r16 b a b ~  4 ~  8 [ \tuplet 3/2 { a16 b a ] } c8. cs16 | 
    e,16 fs a8 ~  8 g16 a  c cs d ef  e cs'8 e,16 | 
    b'16 a cs,8 ~  8 b16 cs  e a gs8 ~  8 [ \tuplet 3/2 { fs16 gs fs ] } | 

    a16 b, cs d ~  4  r  r8 \tuplet 3/2 { e16 fs a } | 
    cf8 8  8 [ b ]  a16 b32 a g16 a32 g  e16 d b a | 
    cs16 e cs b  a4 ~  8 fs16 a  cs a e8 ~ |
    e4  \tuplet 3/2 { b'8 a b ~ } 4  r ||
    \pageBreakPart

    %2
    r4  r16 a d ef  a e ef d ~  4 ~ |
    d8 c16 a  d e r8  r2 | 
    r8. a,16  d ef a8  g16 a32 g e16 d  r a c cs | 
    d16 ef e8  c'16 a b bf  a8 gs  \tuplet 6/4 { g16 a fs a f a } | 

    e4 ~  8 c32 cs c a  d16 c8. ~  4 | 
    r16 a c ef ~  16 d8 a16  ef'16 16 d a  e' d b g |
    cs4  a16 e8.  b'16 fs8.  r8 cs'16 c | 
    b16 a gs cs  e fs b a  gs4 ~  8. fs16 | 

    a16 b,8. ~  4  r  r16 a'16 16 16 | 
    a16 c,8. ~  4  r  r8 gs'16 e | 
    a8 8 ~  8 e16 d  cs4  r | 
    r16 a8.  e16 a c cs  e [ 
        \set stemRightBeamCount = #1
        ef 
        \set stemLeftBeamCount = #1 
        \tuplet 3/2 { d16 a e ] }  cs'8 e,16 fs ||

    %3
    a8 b  \tuplet 3/2 { cs8 e fs ~ }  16 8 r16  fs e a gs | 
    b16 a cf b ~  16 fs b a ~  8 g16 a  fs [ \tuplet 3/2 { g32 fs 
        \set stemRightBeamCount = #1
        e } 
        \set stemLeftBeamCount = #1
        d16 fs ] | 
    e16 b' a8 ~  4  d,  r8 e16 fs ~ | 
    fs16 d e8  cs16 d b cs  \tuplet 6/4 { a16 b g a fs g }  e4 | 

    r8 a8  e'8 [ 8 ] ~  8 d16 c  cs d e c | 
    d8 c ~  8 a16 c  ef d c a  d c a g | 
    b16 a c a ~  16 d8 a16 ~  16 e'8 a,16 ~ 4 | 
    r16 cs e fs  gs a b a  gs4 ~  8. fs16 | 

    a8 8 ~  4 ~  8 fs16 e  cs'4 | 
    r8 e,32 fs a16  b c cs d  e a, cs8 ~  8 e,16 fs | 
    a16 [
        \set stemRightBeamCount = #1
        b \tuplet 3/2 { 
        \set stemLeftBeamCount = #1 
        a16 b a ] } fs16 e cs a  e'16 8.  ef16 d c a |
    cs16 e16 16 16  d e8. ~  4  r8 e16 fs ||

    %4
    a16 c cs d  ef e8. ~  2 | \pageBreakPart
    r8 e,16 fs  a c cs d  ef e8. ~  4 | 
    r8 e,16 fs  a c cs d  \tuplet 3/2 { ef8 e, a }  \tuplet 6/4 { c16 cs d cs d cs } | 
    d16 cs a b  g4 ~  4  r8 b16 a | 
    
    e'8 8 ~  4 ~  4  d16 a c d | 
    ef16 e d c  a4  \tuplet 6/4 { g16 a g e g a }  b16 a b a ~ | 
    a8 fs  \tuplet 3/2 { e8 a, d }  cs16 e, b' a  cs,4 | 
    r4  \tuplet 3/2 { cs'8 e8 8 } \tuplet 3/2 { e8 8 a, }  e'16 ef d a | 

    d16 cs e, fs  cs'8 8 ~  8 [ \tuplet 3/2 { b16 a fs ] } cs16 e a b | 
    \tuplet 3/2 { d8 e8 8 }  d16 b r8  \tuplet 3/2 { cs8 a e }  d16 cs'8. |
    a16 e b' e,  a8 b16 e,  cs' a e' d ~  16 cs a e |
    \tuplet 3/2 { cs'8 e8 8 }  d16 e8.  r4  r8 e16 a | 

    %5
    cs16 d ef e  e4  d16 a cs a ~  4 ~  | 
    a8 [ \tuplet 3/2 { e16 a c ] }  d16 e8.  d16 a c e  d8 cs16 a | 
    \tuplet 3/2 { cs8 a cs } \tuplet 3/2 { d16 [ cs c } b8 ~ ]  4  r8 cs16 a | 
    bf16 b g e  g a8 e16  \tuplet 3/2 { g8 fs e }  f8 [ \tuplet 3/2 { e16 d b ] } |

    a16 fs'8. ~  16 d e d ~  4  r8 \tuplet 3/2 { g16 a b } | 
    cf8 8  4 ~  16 a b a ~  a [ \tuplet 3/2 { g32 a
        \set stemRightBeamCount = #1
        g 
        \set stemLeftBeamCount = #1 
        } e16 fs ] | 
    e8 cs'16 a  b8. a16  cs b8 d16  cs4 |
    a16 e8.  b'16 a gs fs  e cs gs e  f ds' c cs | 

    d4  r  r16 e fs a  b8 8 | 
    b8. [ \tuplet 3/2 { c32 b a ]  }  b16 fs8.  e16 fs a b  c cs d8 | 
    cs8 a16 e  a4  c8 a16 e  a4 |
    g16 e g a ~  16 b a g  \tuplet 3/2 { g16 [ a 
        \set stemRightBeamCount = #1
        g } 
        \set stemLeftBeamCount = #1
        e16 fs ]  e d b e, ||

    %6
    cs'16 e8. ~  4  r2 | \pageBreakPart R1*11 |
    R1*12 | 
    R1*12 | 
    \breakPart

    %9
    R1*12
    R1*11 | r2  r4  r16 e fs a ||

    %11
    cs8 8 ~  8 [ \tuplet 3/2 { a16 fs e ] }  c'8 a ~  8 e16 fs |
    b16 a c b ~  16 a8 a,16  fs' e b'8 ~  8 a16 fs | 
    cs'16 e r8  r16 d16 cs a ~  16 b a g  g [ \tuplet 3/2 { a32 g 
        \set stemRightBeamCount = #1
        e } \tuplet 3/2 { 
        \set stemLeftBeamCount = #1 
        fs16 e d ] } |
    e16 b' a8 ~  16 fs a,8  f'8. a,16  e' cs'8. | 

    a4  \tuplet 3/2 { r8 a a }  16 8. ~  4 ~ | 
    a32 e a b a e a b   a32 e a b a e a b   a32 e a b a e a b   a32 e a b a e a b |
    a32 e a b a e a b   a32 e a b a e a b   a32 b a g e8 ~  8 b16 e | 
    cs16 e fs gs  a b gs8 ~  4 ~  8. fs16 | 

    cs'8 8 ~  16 a g e  cs'4  r | \breakPart
    cs8 e  d cs  a e  gs a ~ | 
    8 a,  \tuplet 3/2 { g'8 b a }  fs8 a,  f' b | 
    a8 a,  c8. b16 ~ \fermata 4. \glissando b,8 
}

\header {
    title = \title
    composer = \composerName
    poet = "Eb Alto Saxophone"
    instrumentName = \poet
}

\book {
  \bookOutputSuffix "Alto-Saxophone-in-Eb"
    \score {
        <<
            \override Score.BarNumber.break-visibility = #'#(#f #f #t)
            \new ChordNames \transpose ef ef { \chordsSongInEb }
            \new Staff = "lead" \transpose ef ef {
                \include "ly/ily/staff-properties.ily"
                %\autoPageBreaksOff
                <<
                    \transpose ef c \structure
                    \melodySongInEb
                >>
            }
        >>
        \layout { 
            indent = 4.25\cm
            short-indent = 1.25\cm
            \context {
                \Score
                \override StaffGrouper.staff-staff-spacing.padding = #0
                \override StaffGrouper.staff-staff-spacing.basic-distance = #0
            }
        }
    }
}
