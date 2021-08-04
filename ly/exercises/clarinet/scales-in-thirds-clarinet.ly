\version "2.19.15"
\include "english.ly"

titleLeft = "Scales in Thirds"
titleRight = "for Saxophone"
title = "Scales in Thirds for Saxophone"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"

\include "ly/ily/layout.ily"

\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2019 D. Elaine Alt" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \title }  }
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

scaleInThirdsMajorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1 | r | r | r | 

}
scaleInThirdsMajorNotes = \relative c' { 
        r4 c8 e  d f e g | f a g b  a c b d | c a b g  a f g e | f d c2. | 
}

scaleInThirdsMinorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:m | r | r | r | 

}
scaleInThirdsMinorNotes = \relative c'' { 
    r4 a8 c  b d c e | d f e gs  f a gs b | a f gs e  f d e c | d b a2. | 
}
scaleInThirdsMinorNotesLow = \transpose c c, \scaleInThirdsMinorNotes


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
        subtitle = "Relative Keys"
    }

    % No Accidentals
    \score {
        \header {
            title = ""
            piece = "C Major & A Minor"
        } 
        << 
            \new ChordNames \transpose c c { 
                \scaleInThirdsMajorChords 
                s1*4
                \scaleInThirdsMinorChords 
                s1*4 
            }
            \new Staff { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \scaleInThirdsMajorNotes
                \transpose c, c \scaleInThirdsMajorNotes
                \transpose c' c \scaleInThirdsMinorNotes
                \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }

    % 1 Accidentals
    \score {
        \header {
            piece = "G Major & E Minor"
        } 
        << 
            \new ChordNames \transpose c g { 
                \scaleInThirdsMajorChords 
                s1*4
                \scaleInThirdsMinorChords 
                s1*4 
            }
            \new Staff \transpose c g { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c' c \scaleInThirdsMajorNotes
                \scaleInThirdsMajorNotes
                \transpose c' c \scaleInThirdsMinorNotesLow
                \scaleInThirdsMinorNotesLow
                \bar "||"
            }
        >>
    }
    \score {
        \header {
            piece = "F Major & D Minor"
        } 
        << 
            \new ChordNames \transpose c f { 
                \scaleInThirdsMajorChords 
                s1*4
                \scaleInThirdsMinorChords 
                s1*4 
            }
            \new Staff \transpose c f { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c' c \scaleInThirdsMajorNotes 
                \scaleInThirdsMajorNotes 
                \transpose c c, \scaleInThirdsMinorNotes
                \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }

    % 2 Accidentals
    \score {
        \header {
            piece = "D Major & B Minor"
        } 
        << 
            \new ChordNames \transpose c d { 
                \scaleInThirdsMajorChords 
                s1*4
                \scaleInThirdsMinorChords
                s1*4
            }
            \new Staff \transpose c d { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \scaleInThirdsMajorNotes 
                \transpose c, c \scaleInThirdsMajorNotes
                \transpose c c, \scaleInThirdsMinorNotes
                \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }
    \score {
        \header {
            piece = "Bb Major & G Minor"
        } 
        << 
            \new ChordNames \transpose c bf { 
                \scaleInThirdsMajorChords 
                s1*4
                \scaleInThirdsMinorChords 
                s1*4 
            }
            \new Staff \transpose c bf, { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \scaleInThirdsMajorNotes 
                \transpose c, c \scaleInThirdsMajorNotes
                \transpose c' c \scaleInThirdsMinorNotes
                \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }

    % 3 Accidentals
    \score {
        \header {
            piece = "A Major & F# Minor"
        }
        << 
            \new ChordNames \transpose c a { 
                \scaleInThirdsMajorChords 
                s1*4
                \scaleInThirdsMinorChords 
                s1*4 
            }
            \new Staff \transpose c a, { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \scaleInThirdsMajorNotes
                \transpose c, c \scaleInThirdsMajorNotes
                \transpose c' c \scaleInThirdsMinorNotes
                \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }
    \score {
        \header {
            piece = "Eb Major & C Minor"
        } 
        << 
            \new ChordNames \transpose c ef { 
                \scaleInThirdsMajorChords 
                s1*4
                \scaleInThirdsMinorChords 
                s1*4 
            }
            \new Staff \transpose c ef { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \scaleInThirdsMajorNotes
                \transpose c, c \scaleInThirdsMajorNotes
                \transpose c c, \scaleInThirdsMinorNotes
                \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }

    % 4 Accidentals
    \score {
        \header {
            piece = "E Major & C# Minor"
        } 
        << 
            \new ChordNames \transpose c e { 
                \scaleInThirdsMajorChords 
                s1*4
                \scaleInThirdsMinorChords 
                s1*4 
            }
            \new Staff \transpose c e { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c' c \scaleInThirdsMajorNotes
                \scaleInThirdsMajorNotes
                \transpose c c, \scaleInThirdsMinorNotes
                \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }
    \score {
        \header {
            piece = "Ab Major & F Minor"
        } 
        << 
            \new ChordNames \transpose c af { 
                \scaleInThirdsMajorChords 
                s1*4
                \scaleInThirdsMinorChords 
                s1*4 
            }
            \new Staff \transpose c af { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c' c \scaleInThirdsMajorNotes
                \scaleInThirdsMajorNotes
                \scaleInThirdsMinorNotes
                \transpose c c, \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }

    % 5 Accidentals
    \score {
        \header {
            piece = "B Major & G# Minor"
        } 
        << 
            \new ChordNames \transpose c b { 
                \scaleInThirdsMajorChords 
                s1*4
                \scaleInThirdsMinorChords 
                s1*4 
            }
            \new Staff \transpose c b, { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \scaleInThirdsMajorNotes
                \transpose c, c \scaleInThirdsMajorNotes
                \transpose c' c \scaleInThirdsMinorNotes
                \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }
    \score {
        \header {
            piece = "Db Major & Bb Minor"
        } 
        << 
            \new ChordNames \transpose c df { 
                \scaleInThirdsMajorChords 
                s1*4
                \scaleInThirdsMinorChords 
                s1*4 
            }
            \new Staff \transpose c df { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \scaleInThirdsMajorNotes
                \transpose c, c \scaleInThirdsMajorNotes
                \transpose c c, \scaleInThirdsMinorNotes
                \transpose c c \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }

    % 6 Accidentals
    \score {
        \header {
            piece = "F# Major"
        } 
        << 
            \new ChordNames \transpose c fs { 
                \scaleInThirdsMajorChords
                s1*4
            }
            \new Staff \transpose c fs { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c' c \scaleInThirdsMajorNotes
                \scaleInThirdsMajorNotes
                \bar "||"
            }
        >>
    }
    \score {
        \header {
            piece = "Gb Major & Eb Minor"
        } 
        << 
            \new ChordNames \transpose c gf { 
                \scaleInThirdsMajorChords 
                s1*4
                \scaleInThirdsMinorChords 
                s1*4 
            }
            \new Staff \transpose c gf { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c' c \scaleInThirdsMajorNotes
                \scaleInThirdsMajorNotes
                \transpose c c, \scaleInThirdsMinorNotes
                \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }

    % 7 Accidentals
    \score {
        \header {
            piece = "C# Major"
        } 
        << 
            \new ChordNames \transpose c cs { 
                \scaleInThirdsMajorChords 
                s1*4
            }
            \new Staff \transpose c cs { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \scaleInThirdsMajorNotes
                \transpose c, c \scaleInThirdsMajorNotes
                \bar "||"
            }
        >>
    }
    \score {
        \header {
            piece = "Cb Major & Ab Minor"
        } 
        << 
            \new ChordNames \transpose c cf { 
                \scaleInThirdsMajorChords 
                s1*4
                \scaleInThirdsMinorChords 
                s1*4 
            }
            \new Staff \transpose c cf { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \scaleInThirdsMajorNotes
                \transpose c, c \scaleInThirdsMajorNotes
                \transpose c' c \scaleInThirdsMinorNotes
                \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }
}


\bookpart {
    \header {
        title = ""
        subtitle = "Parallel Keys"
            composer = ""
    }

    % No Accidentals
    \score {
        \header {
            piece = "C Major & Minor"
        } 
        << 
            \new ChordNames \transpose c c { 
                \scaleInThirdsMajorChords 
                s1*4
                \transpose a c \scaleInThirdsMinorChords 
                \transpose a c \scaleInThirdsMinorChords
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \scaleInThirdsMajorNotes
                \transpose c, c \scaleInThirdsMajorNotes
                \key c \minor
                \bar "||"
                \transpose a c \scaleInThirdsMinorNotes
                \transpose a, c \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }



    % 1 Accidentals
    \score {
        \header {
            piece = "G Major & Minor"
        } 
        << 
            \new ChordNames \transpose c g { 
                \scaleInThirdsMajorChords 
                s1*4
                \transpose a c \scaleInThirdsMinorChords 
                \transpose a c \scaleInThirdsMinorChords 
            }
            \new Staff \transpose c g { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c' c \scaleInThirdsMajorNotes
                \scaleInThirdsMajorNotes
                \key c \minor
                \bar "||"
                \transpose a' c \scaleInThirdsMinorNotes
                \transpose a c \scaleInThirdsMinorNotes
            }
        >>
     }
    \score {
        \header {
            piece = "F Major & Minor"
        } 
        << 
            \new ChordNames \transpose c f { 
                \scaleInThirdsMajorChords 
                s1*4
                \transpose a c \scaleInThirdsMinorChords 
                \transpose a c \scaleInThirdsMinorChords 
            }
            \new Staff \transpose c f { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c' c \scaleInThirdsMajorNotes
                \scaleInThirdsMajorNotes
                \key c \minor
                \bar "||"
                \transpose a' c \scaleInThirdsMinorNotes
                \transpose a c \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }

    % 2 Accidentals
    \score {
        \header {
            piece = "D Major & Minor"
        } 
        << 
            \new ChordNames \transpose c d { 
                \scaleInThirdsMajorChords 
                s1*4
                \transpose a c \scaleInThirdsMinorChords 
                \transpose a c \scaleInThirdsMinorChords 
            }
            \new Staff \transpose c d { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \scaleInThirdsMajorNotes
                \transpose c, c \scaleInThirdsMajorNotes
                \key c \minor
                \bar "||"
                \transpose a c \scaleInThirdsMinorNotes
                \transpose a, c \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }
    \score {
        \header {
            piece = "Bb Major & Minor"
        } 
        << 
            \new ChordNames \transpose c bf { 
                \scaleInThirdsMajorChords 
                s1*4
                \transpose a c \scaleInThirdsMinorChords 
                \transpose a c \scaleInThirdsMinorChords 
            }
            \new Staff \transpose c bf { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c c, \scaleInThirdsMajorNotes
                \transpose c c \scaleInThirdsMajorNotes
                \key c \minor
                \bar "||"
                \transpose a c, \scaleInThirdsMinorNotes
                \transpose a c \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }

    % 3 Accidentals
    \score {
        \header {
            piece = "A Major & Minor"
        } 
        << 
            \new ChordNames \transpose c a { 
                \scaleInThirdsMajorChords 
                s1*4
                \transpose a c \scaleInThirdsMinorChords 
                \transpose a c \scaleInThirdsMinorChords 
            }
            \new Staff \transpose c a { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c' c \scaleInThirdsMajorNotes
                \scaleInThirdsMajorNotes
                \key c \minor
                \bar "||"
                \transpose a' c \scaleInThirdsMinorNotes
                \transpose a c \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }
    \score {
        \header {
            piece = "Eb Major & Minor"
        } 
        << 
            \new ChordNames \transpose c ef { 
                \scaleInThirdsMajorChords 
                s1*4
                \transpose a c \scaleInThirdsMinorChords 
                \transpose a c \scaleInThirdsMinorChords 
            }
            \new Staff \transpose c, ef { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c c, \scaleInThirdsMajorNotes
                \transpose c c \scaleInThirdsMajorNotes
                \key c \minor
                \bar "||"
                \transpose a c, \scaleInThirdsMinorNotes
                \transpose a c \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }

    % 4 Accidentals
    \score {
        \header {
            piece = "E Major & Minor"
        } 
        << 
            \new ChordNames \transpose c e { 
                \scaleInThirdsMajorChords 
                \scaleInThirdsMajorChords

                \scaleInThirdsMajorChords 
                \transpose a c \scaleInThirdsMinorChords 
                \transpose a c \scaleInThirdsMinorChords 
                \transpose a c \scaleInThirdsMinorChords 
            }
            \new Staff \transpose c, e { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c' c, \scaleInThirdsMajorNotes
                \transpose c c, \scaleInThirdsMajorNotes
                \transpose c c \scaleInThirdsMajorNotes
                \key c \minor
                \bar "||"
                \transpose a' c, \scaleInThirdsMinorNotes
                \transpose a c, \scaleInThirdsMinorNotes
                \transpose a c \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }
    \score {
        \header {
            piece = "Ab Major & Minor"
        } 
        << 
            \new ChordNames \transpose c af { 
                \scaleInThirdsMajorChords 
                s1*4
                \transpose a c \scaleInThirdsMinorChords 
                \transpose a c \scaleInThirdsMinorChords 
            }
            \new Staff \transpose c af { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c' c \scaleInThirdsMajorNotes
                \scaleInThirdsMajorNotes
                \key c \minor
                \bar "||"
                \transpose a' c \scaleInThirdsMinorNotes
                \transpose a c \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }

    % 5 Accidentals
    \score {
        \header {
            piece = "B Major & Minor"
        } 
        << 
            \new ChordNames \transpose c b { 
                \scaleInThirdsMajorChords 
                s1*4
                \transpose a c \scaleInThirdsMinorChords 
                \transpose a c \scaleInThirdsMinorChords 
            }
            \new Staff \transpose c b { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c c, \scaleInThirdsMajorNotes
                \transpose c c \scaleInThirdsMajorNotes
                \key c \minor
                \bar "||"
                \transpose a c, \scaleInThirdsMinorNotes
                \transpose a c \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }
    \score {
        \header {
            piece = "Db Major (for Minor, see C# Minor)"
        } 
        << 
            \new ChordNames \transpose c df { 
                \scaleInThirdsMajorChords 
                s1*4
            }
            \new Staff \transpose c, df { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c c, \scaleInThirdsMajorNotes
                \transpose c c \scaleInThirdsMajorNotes
                \bar "||"
            }
        >>
    }

    % 6 Accidentals
    \score {
        \header {
            piece = "F# Major & Minor"
        } 
        << 
            \new ChordNames \transpose c fs { 
                \scaleInThirdsMajorChords 
                s1*4
                \transpose a c \scaleInThirdsMinorChords 
                \transpose a c \scaleInThirdsMinorChords 
            }
            \new Staff \transpose c fs { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c' c \scaleInThirdsMajorNotes
                \scaleInThirdsMajorNotes
                \key c \minor
                \bar "||"
                \transpose a' c \scaleInThirdsMinorNotes
                \transpose a c \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }
    \score {
        \header {
            piece = "Gb Major (for Minor, see F# Minor)"
        } 
        << 
            \new ChordNames \transpose c gf { 
                \scaleInThirdsMajorChords 
                s1*4
            }
            \new Staff \transpose c gf { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c' c \scaleInThirdsMajorNotes
                \scaleInThirdsMajorNotes
                \bar "||"
            }
        >>
    }

    % 7 Accidentals
    \score {
        \header {
            piece = "C# Major & Minor"
        } 
        << 
            \new ChordNames \transpose c cs { 
                \scaleInThirdsMajorChords 
                s1*4
                \transpose a c \scaleInThirdsMinorChords 
                \transpose a c \scaleInThirdsMinorChords 
            }
            \new Staff \transpose c, cs { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c c, \scaleInThirdsMajorNotes
                \transpose c c \scaleInThirdsMajorNotes
                \key c \minor
                \bar "||"
                \transpose a c, \scaleInThirdsMinorNotes
                \transpose a c \scaleInThirdsMinorNotes
                \bar "||"
            }
        >>
    }
    \score {
        \header {
            piece = "Cb Major (for Minor, see B Minor)"
        } 
        << 
            \new ChordNames \transpose c, cf { 
                \scaleInThirdsMajorChords 
                s1*4
            }
            \new Staff \transpose c cf { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \transpose c c \scaleInThirdsMajorNotes
                \transpose c, c \scaleInThirdsMajorNotes
                \bar "||"
            }
        >>
    }
}

