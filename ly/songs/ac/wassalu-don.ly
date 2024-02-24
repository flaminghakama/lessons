\version "2.24.0"

titleLeft = "Wassalu"
titleRight = "Don"
titleFull = "Wassalu Don"
composerName = "transcribed by AC"
arranger = ""
copyright = ""

%{

killPreview ; rm wassalu-don*pdf ;  lilypond ly/songs/ac/wassalu-don.ly  ; for file in wassalu-don*.pdf ; do op $file ; done  

killPreview
rm wassalu-don*pdf
lilypond ly/songs/ac/wassalu-don.ly
mv wassalu-don*.pdf pdf/songs/ac
for file in pdf/songs/ac/wassalu-don*.pdf ; do op $file ; done  

git add . ; git commit -m"adding alto part" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"


\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #5

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #14

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

structure = \relative c'' { 
    \key g \major

    \once \override Score.MetronomeMark.extra-offset = #'( -8 . 1 )
    \tempo 4.=130
    \time 12/8

    \override Score.RehearsalMark.self-alignment-X = #LEFT
    
    s1.*4
    
    \startSection "A"
    s1.*16

    \startSection "B"
    s1.*12

    \startSection "A1"
    s1.*16

    \startSection "B1"
    s1.*16
    \break

    \startSection "C"
    \startRepeat
    s1.*6 \break
    s1.*6 \break
    
    \startSection "D"
    \endRepeat
    s1.*16 

    \startSection "E"
    s1.*24
    \bar "|."
}

breaksAndMarksForAlto = \relative c'' { 
    \once \override Score.MetronomeMark.extra-offset = #'( -8 . 1 )
    s1.*4
    
    \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "A"
    s1.*16

    \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "B"
    s1.*12

    \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "A1"
    s1.*6
    \pageBreak
    s1.*10

    \override Score.RehearsalMark.extra-offset = #'( 0 . 1 )
    % "B1"
    s1.*16

    \override Score.RehearsalMark.extra-offset = #'( -3 . -2 )
    % "C"
    s1.*12

    \override Score.RehearsalMark.extra-offset = #'( 0 . 0 )
    % "D"
    s1.*16 

    \pageBreak

    \override Score.RehearsalMark.extra-offset = #'( 1 . 0 )
    % "E"
    s1.*24
    \bar "|."
}

breaksAndMarksForTenor = \relative c'' { 
}

chordsForm = \chordmode { 
    \set chordChanges = ##t 
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1.*4
    
    % "A"
    s1.*16

    % "B"
    s1.*12

    % "A1"
    s1.*6
    s1.*10

    % "B1"
    s1.*16

    % "C"
    a1.:m | s | s | s | 
    d1.:m | s | | a:m | s |
    e1.:7 | d:7 | a:m | e:7 |

    % "D"
    s1.*16 

    % "E"
    s1.*24
}

altoIntro = {
    R1.*3 | r2. r4. 
}
altoA = \relative c'' {
    e8 fs gs ||
    gs8 fs4 ~  8 e cs  e [ r fs ~ ]  4. ~ | 2.  r8 e cs ~  8 e fs | 
    cs8 b4 ~  8 a fs  a [ r b ~ ]  4. ~ | 4.  r8 b8 8  4 r8  a a cs | 
    cs8 e cs ~  8 e8 8  cs b fs ~  8 8 b | a a fs ~  8 e4  fs8 4 ~  4. |
    R1. | r2. r4. e'8 fs gs |

    gs8 fs4 ~  8 e cs  e [ r fs ~ ]  4. ~ | 2.  r8 e cs ~  8 e fs | 
    cs8 b4 ~  8 a fs  a [ r b ~ ]  4. ~ | 4.  r8 b8 8  4 r8  a a cs | 
    cs8 e cs ~  8 e8 8  cs b fs ~  8 8 b | a a fs ~  8 e4  fs8 4 ~  4. |
    R1. | r2. r4
}
altoB = \relative c'' { 
    cs8  e b b ||
    b8 cs a ~  4.  r4 b8  cs a a | b b cs ~  4.  r4 a8  b b a | 
    b8 8 8  a b8 8  4. ~  8 a8 8 | 8 fs4  e fs8 ~  8 [ r a ]  b b a | 
    b8 cs4  gs fs8  r [ b b ]  b b a | b8 cs4  a b8  r4 a8  b b a | 
    b8 cs4  gs fs8  r4 fs8  gs e fs | gs8 8 fs ~  4.  r4 b8  a b4 | 
    cs8 a b ~  4.  r  e,8 8 8 | gs8 8 fs ~  8 e4  fs8 4 ~ 4. |
    R1. | r2. r4. 
}
altoBOne = \relative c'' { 
    cs8  e b b ||
    b8 cs a ~  4.  r4 b8  b a b | b cs cs ~  4.  r4 a8  b b a | 
    b8 8 a  b b b8  4.  r8 a a | 8 fs e  r4.  r4 a8  b b a | 
    b8 cs cs  a4.  r8 b b  b b b | cs b gs ~ 4.  r4 a8  b b a | 
    b8 cs4  gs4.  r4 gs8  8 fs gs | 8 fs8 8  r4.  r4 b8  a4 b8 | 
    cs8 a b ~  4.  r8 fs8 8  8 a8 8 ~ | 8 fs gs  r4.  r4 fs8  8 a a ~ | 
    a8 fs gs ~ 4.  r8 fs8 8  8 a8 8 ~ | 8 fs gs ~  4.  r8 b4  a8 b4 |
    cs8 a b ~  4.  r8 gs4  8 4 | 8 e fs  e8 8 fs8  8 8 8 ~  8 8 8 | 
    R1.*2 
}
altoC = \relative c'' { 
    <>\xp \compp #16
    <>\xp \compp #16
    <>\xp \compp #15
}
altoD = \relative c'' { 
    fs8 gs8 8 ||
    cs,4. ~  8 e cs8  8 b8 8  8 a4 | fs4.  r  r  a8 8 cs | 
    cs4.  e8 fs4  8 cs8 8  b a4 | fs4.  r8 fs'4 ~  4 r8  fs e cs |
    cs4.  8 e cs8  8 b8 8  8 a4 | fs4.  r  r  e8 gs4 | 
    fs4.  r8 e8 8  8 4  8 gs4 | fs4.  r  r  e8 gs4 | 
    fs4. r4 e8  8 4  8 gs4 | fs4.  r  r  e8 gs4 | 
    fs4.  r  r8 e8 8  8 gs4 | fs4.  r  r8 e8 8  8 gs4 | 
    fs4.  r  r  e8 gs4 | fs4.  r  r  e8 fs a | 
    a8 8 fs8  8 e cs8  8 8 8  b e fs | 8 8 8 ~  8 e fs8  8 4  r4. | 
}
altoELickOne = \relative c' { 
    e8 fs a | 8 8 fs8  8 e cs8  8 8 8  b e fs | 8 8 8 ~  8 e fs8  8 4 
}
altoELickTwo = \relative c'' { 
    a8  8 4 | cs8 8 8 ~  8 e fs8  8 e cs  b a4 | fs8 8 8 ~  4.
}
altoE = \relative c'' { 
    R1. | r2. r4. \altoELickOne r4. |
    r4.  r8 a cs  b a fs ~ 4. | r2. r4 
    \altoELickTwo r4 
    \altoELickTwo r4 
    \altoELickTwo r4 
    \altoELickTwo r4 
    \altoELickTwo r4  a8  8 4 | 
    cs8 8 8 ~  8 e fs8  8 cs8 8  8 b4 | fs8 8 8 ~  8 b4  4 a8  e cs e | 
    e8 8 cs8 ~ 8 b4  r4.  r8 b cs | fs8 8 8 ~  8 4 ~  2. ~ | 1. | 
    r2. r4 a8  8 8 b | 8 8 a ~ 8 8 b  cs a4  e8 fs8 8 | 
    gs8 8 fs ~  8 e fs8  8 4 ~ \fermata fs4. ||
}


alto = {
    \altoIntro
    \altoA
    \altoB
    \altoA
    \altoBOne
    \altoC
    \altoD
    \altoE
}

\book {
  \bookOutputSuffix "alto-sax-in-Eb"
    \header {
        title = \title
        composer = \markup \italic { \composerName }
        arranger = \markup \italic { \arranger }
        poet = "Eb Alto Saxophone"
        instrumentName = \poet
        subtitle = ""
    }
    \score {
        <<
            \new ChordNames \transpose ef c { 
                \include "ly/ily/chord-names-properties.ily"
                \chordsForm
            }
            \new Staff \with { 
                % instrumentName = "Melody"
            } \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \transpose ef c \structure
                    \breaksAndMarksForAlto
                    \alto 
                >>
            }
        >>
    }
}

