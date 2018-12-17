\version "2.19.15"
\include "english.ly"

titleLeft = "Grand Arpeggios"
titleRight = "for Saxophone"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
 	 
\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2018 D. Elaine Alt" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { Grand Arpeggios for Saxophone }  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
    instrumentName = ""
}

\paper {

  top-margin = #14
  right-margin = #17

  % First page spacing after header
  markup-system-spacing.padding = #4

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #14

  % Spacing in between systems
  system-system-spacing.basic-distance = #18
  system-system-spacing.minimum-distance = #15

  page-breaking = #ly:minimal-breaking

  #(define fonts
    (make-pango-font-tree "Hardwood" 
                          "Highlander ITC TT" 
                          "Papyrus"
                           (/ myStaffSize 20)))
}
%BodoniClassicChancery" 
\include "../scores/flaming-libs/flaming-fonts.ily"


grandArpeggioMajorSixthChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:6 | g:7 | c:6 |
    c1:6 | g:7 | c:6 |
}
grandArpeggioMajorSixth = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e g a  c e g a  b g f d  b g f d  | c1 | 
    }
    \relative c''' { 
         c8 a g e  c a g e  d f g b  d f g b    | c1 | 
        \bar "||"
    }
}
grandArpeggioMajorSixthTwo = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e g a  c e g a  g f d b  g f d b | c1 | 
    }
    \relative c''' { 
         c8 a g e  c a g e  f g b d  f g b d | c1 | 
        \bar "||"
    }
}
grandArpeggioMajorSixthThree = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e g a  c e g a | b g f d  b g f d | c1 | 
    }
    \relative c'' { 
         c8 a g e   c a g e  | f g b d  f g b d | c1 | 
        \bar "||"
    }
}
grandArpeggioMajorSixthFour = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e g a  c e g a | g f d b  g f d b | c1 | 
    }
    \relative c'' { 
         c8 g' e c  a g e c | b d f g  b d f g | e8 ( c2.. ) | 
        \bar "||"
    }
}
grandArpeggioMajorSixthFive = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e, g a  c e g a | b g f d  b g f d | c'1 | 
    }
    \relative c'' { 
         c8 a g e   c a g e  | f g b d  f g b d | e8 ( c'2.. ) | 
        \bar "||"
    }
}
grandArpeggioMajorSixthSix = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e g a  c e g a  g f d b  g f d b | c1 | 
    }
    \relative c''' { 
         c8 a g e  c a g e  d b d f  g b d f  | e2 ( c' ) | 
        \bar "||"
    }
}
grandArpeggioMajorSixthSeven = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 g a c  e g a c  d b g f  d b g f | g a' g e c2 | 
    }
    \relative c'' { 
         c8 a g e  c a g a  b d f g  b d f g  | a8 ( af16 g fs8. g16  c2 ) | 
        \bar "||"
    }
}
grandArpeggioMajorSixthEight = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e g a  c e g a  g f d b  g f d b | c1 | 
    }
    \relative c'' { 
         c8 a g e  c a c e  f g b d  f g b d | c1 | 
        \bar "||"
    }
}
grandArpeggioMajorSixthNine = \relative c' {
    \key c \major
    \time 4/4 
    \relative c'' { 
         c8 e g a  c e g e  d b g f  d b g f | e ( c'2.. ) | 
    }
    \relative c''' { 
         c8 a g e  c a g e  f g b d  f g b d | c1 | 
        \bar "||"
    }
}
grandArpeggioMajorSixthTen = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
         c8 e g a  c e g a | g f d b  g f d b | c1 | 
    }
    \relative c'' { 
         c8 a' g e   c a g e  | d b g f  g b d f | e8 ( c'2.. ) | 
        \bar "||"
    }
}

grandArpeggioMinorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:m | e:7 | a:m | 
    a1:m | e:7 | a:m | 
}
grandArpeggioMinor = \relative c' {
    \key a \minor
    \time 4/4 
    \relative c'' {
         a8 c e g  a c e g  f d b gs  f d b gs | a1 | 
    }
    \relative c''' { 
         a8 g e c   a g e c  d f gs b  d f gs b | a1 | 
        \bar "||"
    }
}
grandArpeggioMinorTwo = \relative c' {
    \key a \minor
    \time 4/4 
    \relative c'' {
         a8 c e g  a c e g  f d b gs  f d b gs | a1 | 
    }
    \relative c''' { 
         a8 g e c   a g e c  d f gs b  d f gs b | a1 | 
        \bar "||"
    }
}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\layout { 
    indent = 1.25\cm
    short-indent = 1.25\cm
    \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.padding = #0
        \override StaffGrouper.staff-staff-spacing.basic-distance = #0
    }
}

\bookpart {
    \header {
        subtitle = "Major 6th / Dominant 7th"
    }

    % No Accidentals
    \score {
        \header {
            piece = "C Major (G Dominant)"
        } 
        << 
            \new ChordNames \transpose c c { \grandArpeggioMajorSixthChords }
            \new Staff \grandArpeggioMajorSixth
            \new ChordNames \transpose c c { \grandArpeggioMajorSixthChords }
            \new Staff \grandArpeggioMajorSixthTwo
        >>
    }

    % 1 Accidentals
    \score {
        \header {
            piece = "G Major (D Dominant)"
        } 
        << 
            \new ChordNames \transpose c g { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c g \grandArpeggioMajorSixthThree
            \new ChordNames \transpose c g { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c g \grandArpeggioMajorSixthTen
        >>
    }
    \score {
        \header {
            piece = "F Major (C Dominant)"
        } 
        << 
            \new ChordNames \transpose c f { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c f \grandArpeggioMajorSixth
            \new ChordNames \transpose c f { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c f \grandArpeggioMajorSixthSeven
        >>
    }

    % 2 Accidentals
    \score {
        \header {
            piece = "D Major (A Dominant)"
        } 
        << 
            \new ChordNames \transpose c d { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c d \grandArpeggioMajorSixth
            \new ChordNames \transpose c d { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c d \grandArpeggioMajorSixthEight
        >>
    }
    \score {
        \header {
            piece = "Bb Major (F Dominant)"
        } 
        << 
            \new ChordNames \transpose c bf' { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c bf, \grandArpeggioMajorSixth
            \new ChordNames \transpose c bf' { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c bf, \grandArpeggioMajorSixthNine
        >>
    }

    % 3 Accidentals
    \score {
        \header {
            piece = "A Major (E Dominant)"
        } 
        << 
            \new ChordNames \transpose c a { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c a \grandArpeggioMajorSixthFour
            \new ChordNames \transpose c a { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c a \grandArpeggioMajorSixthFive
        >>
    }
    \score {
        \header {
            piece = "Eb Major (Bb Dominant)"
        } 
        << 
            \new ChordNames \transpose c ef { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c ef \grandArpeggioMajorSixth
            \new ChordNames \transpose c ef { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c ef \grandArpeggioMajorSixthTwo
        >>
    }

    % 4 Accidentals
    \score {
        \header {
            piece = "E Major (B Dominant)"
        } 
        << 
            \new ChordNames \transpose c e { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c e \grandArpeggioMajorSixth
            \new ChordNames \transpose c e { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c e \grandArpeggioMajorSixthTwo
        >>
    }
    \score {
        \header {
            piece = "Ab Major (Eb Dominant)"
        } 
        << 
            \new ChordNames \transpose c af { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c af \grandArpeggioMajorSixthFive
        >>
    }

    % 5 Accidentals
    \score {
        \header {
            piece = "B Major (F# Dominant)"
        } 
        << 
            \new ChordNames \transpose c b' { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c b, \grandArpeggioMajorSixth
        >>
    }
    \score {
        \header {
            piece = "Db Major (Ab Dominant)"
        } 
        << 
            \new ChordNames \transpose c df { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c df \grandArpeggioMajorSixth
            \new ChordNames \transpose c df { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c df \grandArpeggioMajorSixthSix
        >>
    }

    % 6 Accidentals
    \score {
        \header {
            piece = "F# Major (C# Dominant)"
        } 
        << 
            \new ChordNames \transpose c fs { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c fs \grandArpeggioMajorSixth
            \new ChordNames \transpose c fs { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c fs \grandArpeggioMajorSixthThree
        >>
    }
    \score {
        \header {
            piece = "Gb Major (Db Dominant)"
        } 
        << 
            \new ChordNames \transpose c gf { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c gf \grandArpeggioMajorSixth
            \new ChordNames \transpose c gf { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c gf \grandArpeggioMajorSixthTwo
        >>
    }

    % 7 Accidentals
    \score {
        \header {
            piece = "C# Major (G# Dominant)"
        } 
        << 
            \new ChordNames \transpose c cs { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c cs \grandArpeggioMajorSixth
        >>
    }
    \score {
        \header {
            piece = "Cb Major (Fb Dominant)"
        } 
        << 
            \new ChordNames \transpose c cf { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c cf \grandArpeggioMajorSixth
            \new ChordNames \transpose c cf { \grandArpeggioMajorSixthChords }
            \new Staff \transpose c cf' \grandArpeggioMajorSixthTwo
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Minor 7th / Diminished 7th"
    }

    % No Accidentals
    \score {
        \header {
            piece = "A Minor (E Dominant)"
        } 
        << 
            \new ChordNames \transpose c c { \grandArpeggioMinorChords }
            \new Staff \grandArpeggioMinor
        >>
    }

    % 1 Accidentals
    \score {
        \header {
            piece = "E Minor (B Dominant)"
        } 
        << 
            \new ChordNames \transpose c g { \grandArpeggioMinorChords }
            \new Staff \transpose c g, \grandArpeggioMinorTwo
        >>
    }
    \score {
        \header {
            piece = "D Minor (A Dominant)"
        } 
        << 
            \new ChordNames \transpose c f { \grandArpeggioMinorChords }
            \new Staff \transpose c f, \grandArpeggioMinorTwo
        >>
    }

    % 2 Accidentals
    \score {
        \header {
            piece = "B Minor (F# Dominant)"
        } 
        << 
            \new ChordNames \transpose c d { \grandArpeggioMinorChords }
            \new Staff \transpose c d \grandArpeggioMinor
            \new ChordNames \transpose c d { \grandArpeggioMinorChords }
            \new Staff \transpose c d, \grandArpeggioMinorTwo
        >>
    }
    \score {
        \header {
            piece = "G Minor (D Dominant)"
        } 
        << 
            \new ChordNames \transpose c bf' { \grandArpeggioMinorChords }
            \new Staff \transpose c bf, \grandArpeggioMinor
        >>
    }

    % 3 Accidentals
    \score {
        \header {
            piece = "F# Minor (C# Dominant)"
        } 
        << 
            \new ChordNames \transpose c a { \grandArpeggioMinorChords }
            \new Staff \transpose c a, \grandArpeggioMinor
            \new ChordNames \transpose c a { \grandArpeggioMinorChords }
            \new Staff \transpose c a, \grandArpeggioMinorTwo
        >>
    }
    \score {
        \header {
            piece = "C Minor (G Dominant)"
        } 
        << 
            \new ChordNames \transpose c ef { \grandArpeggioMinorChords }
            \new Staff \transpose c ef, \grandArpeggioMinorTwo
        >>
    }

    % 4 Accidentals
    \score {
        \header {
            piece = "C# Minor (G# Dominant)"
        } 
        << 
            \new ChordNames \transpose c e { \grandArpeggioMinorChords }
            \new Staff \transpose c e, \grandArpeggioMinorTwo
        >>
    }
    \score {
        \header {
            piece = "F Minor (C Dominant)"
        } 
        << 
            \new ChordNames \transpose c af { \grandArpeggioMinorChords }
            \new Staff \transpose c af, \grandArpeggioMinorTwo
        >>
    }

    % 5 Accidentals
    \score {
        \header {
            piece = "G# Minor (D# Dominant)"
        } 
        << 
            \new ChordNames \transpose c b' { \grandArpeggioMinorChords }
            \new Staff \transpose c b, \grandArpeggioMinor
        >>
    }
    \score {
        \header {
            piece = "Bb Minor (F Dominant)"
        } 
        << 
            \new ChordNames \transpose c df { \grandArpeggioMinorChords }
            \new Staff \transpose c df \grandArpeggioMinor
            \new ChordNames \transpose c df { \grandArpeggioMinorChords }
            \new Staff \transpose c df, \grandArpeggioMinorTwo
        >>
    }

    % 6 Accidentals
    \score {
        \header {
            piece = "D# Minor (A# Dominant)"
        } 
        << 
            \new ChordNames \transpose c fs { \grandArpeggioMinorChords }
            \new Staff \transpose c fs, \grandArpeggioMinorTwo
        >>
    }
    \score {
        \header {
            piece = "Eb Minor (Bb Dominant)"
        } 
        << 
            \new ChordNames \transpose c gf { \grandArpeggioMinorChords }
            \new Staff \transpose c gf, \grandArpeggioMinorTwo
        >>
    }

    % 7 Accidentals
    \score {
        \header {
            piece = "Ab Minor (Eb Dominant)"
        } 
        << 
            \new ChordNames \transpose c cf { \grandArpeggioMinorChords }
            \new Staff \transpose c cf \grandArpeggioMinor
        >>
    }
}