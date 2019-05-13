\version "2.19.15"
\include "english.ly"

titleLeft = "Cadential Arpeggios"
titleRight = "for Saxophone"
titleTitlePage = \markup \center-column { \titleLeft \titleRight }
titleFull = "Cadential Arpeggios for Saxophone"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-title-page.ily"
 	 

%{

rm cadential-arpeggios-for-saxophone.pdf
lilypond ly/cadential-arpeggios-for-saxophone.ly
op cadential-arpeggios-for-saxophone.pdf 
python ~/git/part-format/bookify-16page.py cadential-arpeggios-for-saxophone.pdf cadential-arpeggios-for-saxophone-printable.pdf automatic
mv cadential-arpeggios-for-saxophone.pdf pdf
mv cadential-arpeggios-for-saxophone-printable.pdf pdf/printable
op pdf/printable/cadential-arpeggios-for-saxophone-printable.pdf 

%}

\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2019 D. Elaine Alt" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold \titleFull  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
    instrumentName = ""
}

\paper {

  top-margin = #2
  right-margin = #14

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
\include "ly/ily/layout.ily"

\layout {
    \context { 
        \ChordNames
        \override ChordName.font-size = #2
    } 
}


twoFiveOneMajorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d2:m7 g:7 | c1 |
    d2:m7 g:7 | c1 |
}
twoFiveOneMajorChordsTwo = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:m7 | g:7 | c1:6 | s |
    d1:m7 | g:7 | c1:6 | s |
}
twoFiveOneMajorChordsSix = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d2:m7 g:7 | c1:6 |
    d2:m7 g:7 | c1:6 |
}

twoFiveOneMajorOne = \relative c' {
    \key c \major
    \relative c' { 
        d8 f a c  g b d f | c e g a c2 | 
    }
    \relative c''' { 
        d8 c a f  g f d b | c a g e c2 | 
        \bar "||"
    }
}
twoFiveOneMajorTwo = \relative c' {
    \key c \major
    \relative c' { 
        \tuplet 3/2 4 { d8 f a  c d f  g f d  b g f  | e c e  g e g } c2 | 
    }
    \relative c''' { 
        \tuplet 3/2 4 { d8 c a  f d c  g b d  f g b  | c g e  c g e } c2 | 
        \bar "||"
    }
}
twoFiveOneMajorThree = \relative c' {
    \key c \major
    \relative c' { 
        d8 f a c  b g f d | c1 | 
        f8 a c d  f d b g | c1 | 
        a8 c d f  g f d b | c1 | \break
        c8 d f a  b g f d | c1 |
    }
    \relative c''' { 
        d8 c a f  d f g b | c1 | 
        c8 a f d  b d f g | c1 | \break
        a8 f d c  b d f g | e c g e c2 |  
        f'8 d c a  g b d f | g e c g c2
        \bar "||"
    }
}
twoFiveOneMajorFour = \relative c' {
    \key c \major
    \relative c' { 
        \tuplet 3/2 4 { 
            d8 c d  f d f  a f a  c a c | 
            g8 f g  b g b  d b d  f d f |
            c8 a c  e c e  g e g  a g a | } 
        c1 | \break
    }
    \relative c''' { 
        \tuplet 3/2 4 { 
            d8 f d  c d c  a c a  f a f | 
            g8 b g  f g f  d f d  b d b |
            c8 e c  a c a  g a g  e g e | }
        c1 
        \bar "||"
    }
}



twoFiveOneMajorOneVersionTwo = \relative c' {
    \key c \major
    \relative c' { 
        d8 f a c  g b d f | c, e g a c2 | 
    }
    \relative c'' { 
        d8 c a f  g f d b | c' a g e c2 | 
        \bar "||"
    }
}
twoFiveOneMajorTwoVersionTwo = \relative c' {
    \key c \major
    \relative c' { 
        \tuplet 3/2 4 { d8 f a  c d f  g f d  b g f  | e c e  g e g } c2 | 
    }
    \relative c'' { 
        \tuplet 3/2 4 { d8 c a  f d c  g b d  f g b  | c g' e  c g e } c2 | 
        \bar "||"
    }
}
twoFiveOneMajorThreeVersionTwo = \relative c' {
    \key c \major
    \relative c' { 
        d8 f a c  b g f d | c1 | 
        f8 a c d  f d b g | c1 | 
        a,8 c d f  g f d b | c1 | \break
        c8 d f a  b g f d | c1 |
    }
    \relative c'' { 
        d8 c a f  d f g b | c1 | 
        c8 a f d  b d f g | c1 | \break
        a8 f d c  b d f g | e' c g e c2 |  
        f'8 d c a  g b d f | g e c g c,2
        \bar "||"
    }
}
twoFiveOneMajorFourVersionTwo = \relative c' {
    \key c \major
    \relative c' { 
        \tuplet 3/2 4 { 
            d8 c d  f d f  a f a  c a c | 
            g8 f g  b g b  d b d  f d f|
            c,8 a c  e c e  g e g  a g a | } 
        c1 | \break
    }
    \relative c'' { 
        \tuplet 3/2 4 { 
            d8 f d  c d c  a c a  f a f | 
            g8 b g  f g f  d f d  b d b  |
            c'8 e c  a c a  g a g  e g e  | } 
        c1 
        \bar "||"
    }
}


twoFiveOneMajorThreeVersionThree = \relative c' {
    \key c \major
    \relative c' { 
        d8 f a c  b g f d | c1 | 
        f,8 a c d  f d b g | c1 | 
        a8 c d f  g f d b | c1 | \break
        c8 d f a  b g f d | c1 |
    }
    \relative c'' { 
        d8 c a f  d f g b | c1 | 
        c8 a f d  b d f g | c1 | \break
        a8 f d c  b d f g | e' c g e c2 |  
        f'8 d c a  g b d f | g e c g c,2
        \bar "||"
    }
}


twoFiveOneMajorFourVersionThree = \relative c' {
    \key c \major
    \relative c' { 
        \tuplet 3/2 4 { 
            d8 c d  f d f  a f a  c a c | 
            g8 f g  b g b  d b d  f d f|
            c8 a c  e c e  g e g  a g a | } 
        c1 | \break
    }
    \relative c'' { 
        \tuplet 3/2 4 { 
            d8 f d  c d c  a c a  f a f | 
            g'8 b g  f g f  d f d  b d b  |
            c8 e c  a c a  g a g  e g e  | } 
        c1 
        \bar "||"
    }
}

twoFiveOneMajorFourVersionFour = \relative c' {
    \key c \major
    \relative c' { 
        \tuplet 3/2 4 { 
            d8 c d  f d f  a f a  c a c | 
            g8 f g  b g b  d b d  f d f|
            c8 a c  e c e  g e g  a g a | } 
        c1 | \break
    }
    \relative c'' { 
        \tuplet 3/2 4 { 
            d8 f d  c d c  a c a  f a f | 
            g'8 b g  f g f  d f d  b d b  |
            c8 e c  a c a  g a g  e g e  | } 
        c1 
        \bar "||"
    }
}

twoFiveOneMajorFourVersionFive = \relative c' {
    \key c \major
    \relative c' { 
        \tuplet 3/2 4 { 
            d8 c d  f d f  a f a  c a c | 
            g,8 f g  b g b  d b d  f d f|
            c8 a c  e c e  g e g  a g a | } 
        c1 | \break
    }
    \relative c'' { 
        \tuplet 3/2 4 { 
            d8 f d  c d c  a c a  f a f | 
            g8 b g  f g f  d f d  b d b  |
            c'8 e c  a c a  g a g  e g e  | } 
        c1 
        \bar "||"
    }
}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\header {
    subtitle = \markup \center-column { " "   "Major ii7 - V7 - I" }
    instrumentName = "Saxophone"
    poet = \instrumentName
}

\bookpart { 
    \markup \title-page-markup "" "" \titleTitlePage
}

\bookpart {
    % No Accidentals
    \score {
        \header {
            piece = "C Major"
        } 
        << 
            \new ChordNames \transpose c c { 
                \twoFiveOneMajorChordsSix
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChordsTwo
            }
            \new Staff {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMajorOne \break
                \twoFiveOneMajorTwo \break
                \twoFiveOneMajorThree \break
                \twoFiveOneMajorFour
                \pageBreak
            }
        >>
    }


    % 1 Accidentals
    \score {
        << 
            \new ChordNames \transpose c g { 
                \twoFiveOneMajorChordsSix
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChordsTwo
            }
            \new Staff \transpose c g {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMajorOneVersionTwo \break
                \twoFiveOneMajorTwoVersionTwo \break
                \twoFiveOneMajorThreeVersionTwo \break
                \twoFiveOneMajorFourVersionTwo
                \pageBreak
            }
        >>
        \header {
            piece = "G Major"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    \score {
        << 
            \new ChordNames \transpose c f { 
                \twoFiveOneMajorChordsSix
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChordsTwo
            }
            \new Staff \transpose c f {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMajorOneVersionTwo \break
                \twoFiveOneMajorTwoVersionTwo \break
                \twoFiveOneMajorThreeVersionTwo \break
                \twoFiveOneMajorFourVersionTwo
                \pageBreak
            }
        >>
        \header {
            piece = "F Major"
            title = ""
            composer = ""
            poet = ""
        } 
     }

    % 2 Accidentals
    \score {
        << 
            \new ChordNames \transpose c d { 
                \twoFiveOneMajorChordsSix
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChordsTwo
            }
            \new Staff \transpose c d {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMajorOne \break
                \twoFiveOneMajorTwo \break
                \twoFiveOneMajorThree \break
                \twoFiveOneMajorFourVersionThree
                \pageBreak
            }
        >>
        \header {
            piece = "D Major"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    \score {
        << 
            \new ChordNames \transpose c bf { 
                \twoFiveOneMajorChordsSix
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChordsTwo
            }
            \new Staff \transpose c bf, {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMajorOne \break
                \twoFiveOneMajorTwo \break
                \twoFiveOneMajorThree \break
                \twoFiveOneMajorFour
                \pageBreak
            }
        >>
        \header {
            piece = "Bb Major"
            title = ""
            composer = ""
            poet = ""
        } 
     }

    \score {
        << 
            \new ChordNames \transpose c a { 
                \twoFiveOneMajorChordsSix
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChordsTwo
            }
            \new Staff \transpose c a {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMajorOneVersionTwo \break
                \twoFiveOneMajorTwoVersionTwo \break
                \twoFiveOneMajorThreeVersionTwo \break
                \twoFiveOneMajorFourVersionTwo
                \pageBreak
            }
        >>
        \header {
            piece = "A Major"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    \score {
        << 
            \new ChordNames \transpose c ef { 
                \twoFiveOneMajorChordsSix
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChordsTwo
            }
            \new Staff \transpose c ef {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMajorOneVersionTwo \break
                \twoFiveOneMajorTwoVersionTwo \break
                \twoFiveOneMajorThreeVersionTwo \break
                \twoFiveOneMajorFourVersionThree
                \pageBreak
            }
        >>
        \header {
            piece = "Eb Major"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    % 4 Accidentals
    \score {
        << 
            \new ChordNames \transpose c e { 
                \twoFiveOneMajorChordsSix
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChordsTwo
            }
            \new Staff \transpose c e {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMajorOneVersionTwo \break
                \twoFiveOneMajorTwoVersionTwo \break
                \twoFiveOneMajorThreeVersionTwo \break
                \twoFiveOneMajorFourVersionThree
                \pageBreak
            }
        >>
        \header {
            piece = "E Major"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    \score {
        << 
            \new ChordNames \transpose c af { 
                \twoFiveOneMajorChordsSix
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChordsTwo
            }
            \new Staff \transpose c af {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMajorOneVersionTwo \break
                \twoFiveOneMajorTwoVersionTwo \break
                \twoFiveOneMajorThreeVersionTwo \break
                \twoFiveOneMajorFourVersionFive
                \pageBreak
            }
        >>
        \header {
            piece = "Ab Major"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    % 5 Accidentals
    \score {
        << 
            \new ChordNames \transpose c b { 
                \twoFiveOneMajorChordsSix
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChordsTwo
            }
            \new Staff \transpose c b, {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMajorOne \break
                \twoFiveOneMajorTwo \break
                \twoFiveOneMajorThree \break
                \twoFiveOneMajorFour
                \pageBreak
            }
        >>
        \header {
            piece = "B Major"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    \score {
        << 
            \new ChordNames \transpose c df { 
                \twoFiveOneMajorChordsSix
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChordsTwo
            }
            \new Staff \transpose c df {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMajorOne \break
                \twoFiveOneMajorTwo \break
                \twoFiveOneMajorThree \break
                \twoFiveOneMajorFourVersionThree
                \pageBreak
            }
        >>
        \header {
            piece = "Db Major"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    % 6 Accidentals
    \score {
        << 
            \new ChordNames \transpose c fs { 
                \twoFiveOneMajorChordsSix
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChordsTwo
            }
            \new Staff \transpose c fs {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMajorOneVersionTwo \break
                \twoFiveOneMajorTwoVersionTwo \break
                \twoFiveOneMajorThreeVersionTwo \break
                \twoFiveOneMajorFourVersionTwo
                \pageBreak
            }
        >>
        \header {
            piece = "F# Major"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    \score {
        << 
            \new ChordNames \transpose c gf { 
                \twoFiveOneMajorChordsSix
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChordsTwo
            }
            \new Staff \transpose c gf {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMajorOneVersionTwo \break
                \twoFiveOneMajorTwoVersionTwo \break
                \twoFiveOneMajorThreeVersionTwo \break
                \twoFiveOneMajorFourVersionTwo
                \pageBreak
            }
        >>
        \header {
            piece = "Gb Major"
            title = ""
            composer = ""
            poet = ""
        } 
     }


    % 7 Accidentals
    \score {
        << 
            \new ChordNames \transpose c cs { 
                \twoFiveOneMajorChordsSix
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChordsTwo
            }
            \new Staff \transpose c cs {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMajorOne \break
                \twoFiveOneMajorTwo \break
                \twoFiveOneMajorThree \break
                \twoFiveOneMajorFour
                \pageBreak
            }
        >>
        \header {
            piece = "C# Major"
            title = ""
            composer = ""
            poet = ""
        } 
    }

    \score {
        << 
            \new ChordNames \transpose c cf { 
                \twoFiveOneMajorChordsSix
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChords
                \twoFiveOneMajorChordsTwo
            }
            \new Staff \transpose c cf {
                \include "ly/ily/staff-properties.ily"
                \twoFiveOneMajorOne \break
                \twoFiveOneMajorTwo \break
                \twoFiveOneMajorThree \break
                \twoFiveOneMajorFour
            }
        >>
        \header {
            piece = "Cb Major"
            title = ""
            composer = ""
            poet = ""
        } 
     }
}
