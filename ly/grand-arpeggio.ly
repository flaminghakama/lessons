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


grandArpeggioMajorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c2 g:7 | c2 r |
    c2 g:7 | c2 r |
}
grandArpeggioMajor = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
        \tuplet 3/2 4 { c8 e g  c e g  f d b  g f d } | c1 | 
    }
    \relative c''' { 
        \tuplet 3/2 4 { c8 g e  c g e  g b d   f g b   } | c1 | 
        \bar "||"
    }
}
grandArpeggioMajorTwo = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' { 
        \tuplet 3/2 4 { c8 e g  c e g  f d b  g f d } | c1 | 
    }
    \relative c'' { 
        \tuplet 3/2 4 { c8 g e  c g e  g b d   f g b   } | c1 | 
        \bar "||"
    }
}

grandArpeggioMinorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a2:m e:7 | a:m r | 
    a2:m e:7 | a:m r | 
}
grandArpeggioMinor = \relative c' {
    \key a \minor
    \time 4/4 
    \relative c'' {
        \tuplet 3/2 4 { a8 c e  a c e  d b gs  e d b } | a1 | 
    }
    \relative c''' { 
        \tuplet 3/2 4 { a8 e c  a e c  e gs b  d e gs  } | a1 | 
        \bar "||"
    }
}
grandArpeggioMinorTwo = \relative c' {
    \key a \minor
    \time 4/4 
    \relative c'' {
        \tuplet 3/2 4 { a8 c e  a c e  d b gs  e d b } | a1 | 
    }
    \relative c'''' { 
        \tuplet 3/2 4 { a8 e c  a e c  e gs b  d e gs  } | a1 | 
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
        subtitle = "Major"
    }

    % No Accidentals
    \score {
        \header {
            piece = "C Major (G Dominant)"
        } 
        << 
            \new ChordNames \transpose c c { \grandArpeggioMajorChords }
            \new Staff \grandArpeggioMajor
        >>
    }

    % 1 Accidentals
    \score {
        \header {
            piece = "G Major (D Dominant)"
        } 
        << 
            \new ChordNames \transpose c g { \grandArpeggioMajorChords }
            \new Staff \transpose c g \grandArpeggioMajorTwo
        >>
    }
    \score {
        \header {
            piece = "F Major (C Dominant)"
        } 
        << 
            \new ChordNames \transpose c f { \grandArpeggioMajorChords }
            \new Staff \transpose c f \grandArpeggioMajor
        >>
    }

    % 2 Accidentals
    \score {
        \header {
            piece = "D Major (A Dominant)"
        } 
        << 
            \new ChordNames \transpose c d { \grandArpeggioMajorChords }
            \new Staff \transpose c d \grandArpeggioMajor
        >>
    }
    \score {
        \header {
            piece = "Bb Major (F Dominant)"
        } 
        << 
            \new ChordNames \transpose c bf { \grandArpeggioMajorChords }
            \new Staff \transpose c bf \grandArpeggioMajorTwo
            \new ChordNames \transpose c bf' { \grandArpeggioMajorChords }
            \new Staff \transpose c bf, \grandArpeggioMajor
        >>
    }

    % 3 Accidentals
    \score {
        \header {
            piece = "A Major (E Dominant)"
        } 
        << 
            \new ChordNames \transpose c a { \grandArpeggioMajorChords }
            \new Staff \transpose c a \grandArpeggioMajorTwo
        >>
    }
    \score {
        \header {
            piece = "Eb Major (Bb Dominant)"
        } 
        << 
            \new ChordNames \transpose c ef { \grandArpeggioMajorChords }
            \new Staff \transpose c ef \grandArpeggioMajor
        >>
    }

    % 4 Accidentals
    \score {
        \header {
            piece = "E Major (B Dominant)"
        } 
        << 
            \new ChordNames \transpose c e { \grandArpeggioMajorChords }
            \new Staff \transpose c e \grandArpeggioMajor
        >>
    }
    \score {
        \header {
            piece = "Ab Major (Eb Dominant)"
        } 
        << 
            \new ChordNames \transpose c af { \grandArpeggioMajorChords }
            \new Staff \transpose c af \grandArpeggioMajorTwo
        >>
    }

    % 5 Accidentals
    \score {
        \header {
            piece = "B Major (F# Dominant)"
        } 
        << 
            \new ChordNames \transpose c b { \grandArpeggioMajorChords }
            \new Staff \transpose c b \grandArpeggioMajorTwo
            \new ChordNames \transpose c b' { \grandArpeggioMajorChords }
            \new Staff \transpose c b, \grandArpeggioMajor
        >>
    }
    \score {
        \header {
            piece = "Db Major (Ab Dominant)"
        } 
        << 
            \new ChordNames \transpose c df { \grandArpeggioMajorChords }
            \new Staff \transpose c df \grandArpeggioMajor
        >>
    }

    % 6 Accidentals
    \score {
        \header {
            piece = "F# Major (C# Dominant)"
        } 
        << 
            \new ChordNames \transpose c fs { \grandArpeggioMajorChords }
            \new Staff \transpose c fs \grandArpeggioMajor
            \new ChordNames \transpose c fs { \grandArpeggioMajorChords }
            \new Staff \transpose c fs \grandArpeggioMajorTwo
        >>
    }
    \score {
        \header {
            piece = "Gb Major (Db Dominant)"
        } 
        << 
            \new ChordNames \transpose c gf { \grandArpeggioMajorChords }
            \new Staff \transpose c gf \grandArpeggioMajor
            \new ChordNames \transpose c gf { \grandArpeggioMajorChords }
            \new Staff \transpose c gf \grandArpeggioMajorTwo
        >>
    }

    % 7 Accidentals
    \score {
        \header {
            piece = "C# Major (G# Dominant)"
        } 
        << 
            \new ChordNames \transpose c cs { \grandArpeggioMajorChords }
            \new Staff \transpose c cs \grandArpeggioMajor
        >>
    }
    \score {
        \header {
            piece = "Cb Major (Fb Dominant)"
        } 
        << 
            \new ChordNames \transpose c cf { \grandArpeggioMajorChords }
            \new Staff \transpose c cf \grandArpeggioMajor
            \new ChordNames \transpose c cf { \grandArpeggioMajorChords }
            \new Staff \transpose c cf' \grandArpeggioMajorTwo
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Minor"
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