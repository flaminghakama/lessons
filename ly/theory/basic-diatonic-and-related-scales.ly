\version "2.19.15"
\include "english.ly"

titleLeft = "Basic Relative and Parallel"
titleRight = "Scales for Saxophone"
title = "Basic Relative and Parallel Scales for Saxophone"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
 	 
\include "ly/ily/layout.ily"

\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2018 D. Elaine Alt" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \title }  }
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
\include "ly/ily/layout.ily"

scaleMajorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1 | r | r | 

}
scaleMajorNotes = \relative c' { 
        c4 d8 e  f g a b | c4 b8 a  g f e d | c2. r4 \bar "||" 
}

scaleDorianChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:m13 | r | r |
}
scaleDorianNotes = \relative c' { 
        d4 e8 f  g a b? c | d4 c8 b  a g f e | d2. r4 \bar "||" 
}
scaleDorianNotesLow = \transpose c c, \scaleDorianNotes

scaleNaturalMinorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:m | r | r |
}
scaleNaturalMinorNotes = \relative c'' { 
        a4 b8 c  d e f? g | a4  g8 f  e d c b | a2. r4 \bar "||" 
}
scaleNaturalMinorNotesLow = \transpose c c, \scaleNaturalMinorNotes

scaleHarmonicMinorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:m7.7+ | e:7.9- | a:m |

}
scaleHarmonicMinorNotes = \relative c'' { 
    a4 b8 c  d e f? gs | a4 gs8 f?  e  d c b | a2. r4 \bar "||" 
}
scaleHarmonicMinorNotesLow = \transpose c c, \scaleHarmonicMinorNotes


scaleMyxolydianChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    g1:7 | r | r |

}
scaleMyxolydianNotes = \relative c'' { 
    g4 a8 b  c d e f? | g4 f8 e  d c b a | g2. r4 \bar "||"
}
scaleMyxolydianNotesLow = \transpose c c, \scaleMyxolydianNotes

scaleMelodicMinorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:m | r | r |

}
scaleMelodicMinorNotes = \relative c'' { 
    a4 b8 c  d e fs gs | a4 g?8 f?  e  d c b | a2. r4 \bar "||" 
}
scaleMelodicMinorNotesLow = \transpose c c, \scaleMelodicMinorNotes

scaleBluesChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    g1:7.5-.9+ | r | r |

}
scaleBluesNotes = \relative c'' { 
    \tuplet 3/2 2 { g4 bf c  cs d f? | g f d  df c bf } | g2. r4 \bar "||" 
}
scaleBluesNotesLow = \transpose c c, \scaleBluesNotes


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 % No Accidentals
\bookpart {
    \header {
        subtitle = "Diatonc Scales of C Major and A Minor"
    }
    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c { 
                \scaleMajorChords 
                \scaleMyxolydianChords
                \scaleBluesChords
                \scaleDorianChords
                \scaleNaturalMinorChords
                \scaleHarmonicMinorChords
                \scaleMelodicMinorChords
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "C Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "G Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotes
                \break
                \mark "G Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotes
                \break
                \mark "D Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "A Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotes
                \break
                \mark "A Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotes
                \break
                \mark "A Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotes
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Parallel Scales of C"
        composer = ""
    }
    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c {
                \scaleMajorChords 
                \transpose g c \scaleMyxolydianChords
                \transpose g c \scaleBluesChords
                \transpose d c \scaleDorianChords
                \transpose a c \scaleNaturalMinorChords
                \transpose a c \scaleHarmonicMinorChords
                \transpose a c \scaleMelodicMinorChords
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "C Major"
                \scaleMajorNotes
                \break
                \mark "C Dominant, the V of F Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "C Blues, elaboration of the V of F Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "C Dorian Minor, the ii of Bb Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "C Nautral (Parallel) Minor, the vi of Eb Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "C Harmonic Minor, for the the V7 of C Minor, Dominant G7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "C Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}

% 1 Accidentals
\bookpart {
    \header {
        title = ""
        subtitle = "Diatonc Scales of G Major and E Minor"
        composer = ""
    }
    \score {
        \transpose c g <<
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c { 
                \scaleMajorChords 
                \scaleMyxolydianChords
                \scaleBluesChords
                \scaleDorianChords
                \scaleNaturalMinorChords
                \scaleHarmonicMinorChords
                \scaleMelodicMinorChords
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "G Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "D Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotesLow
                \break
                \mark "D Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotesLow
                \break
                \mark "A Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "E Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotesLow
                \break
                \mark "E Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotesLow
                \break
                \mark "E Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotesLow
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        composer = ""
        subtitle = "Parallel Scales of G"
    }
    \score {
        \transpose c g <<
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c {
                \scaleMajorChords 
                \transpose g c \scaleMyxolydianChords
                \transpose g c \scaleBluesChords
                \transpose d c \scaleDorianChords
                \transpose a c \scaleNaturalMinorChords
                \transpose a c \scaleHarmonicMinorChords
                \transpose a c \scaleMelodicMinorChords
            }
            \new Staff \transpose c c { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "G Major"
                \scaleMajorNotes
                \break
                \mark "G Dominant, the V of C Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "G Blues, elaboration of the V of C Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "G Dorian Minor, the ii of F Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "G Nautral (Parallel) Minor, the vi of Bb Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "G Harmonic Minor, for the the V7 of G Minor, Dominant D7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "G Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        composer = ""
        subtitle = "Diatonc Scales of F Major and D Minor"
    }

    \score {
        \transpose c f <<
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c { 
                \scaleMajorChords 
                \scaleMyxolydianChords
                \scaleBluesChords
                \scaleDorianChords
                \scaleNaturalMinorChords
                \scaleHarmonicMinorChords
                \scaleMelodicMinorChords
            }
            \new Staff \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "F Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "C Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotesLow
                \break
                \mark "C Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotesLow
                \break
                \mark "G Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "D Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotesLow
                \break
                \mark "D Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotesLow
                \break
                \mark "D Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotesLow
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        composer = ""
        subtitle = "Parallel Scales of F"
    }
    \score {
        \transpose c f <<
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c {
                \scaleMajorChords 
                \transpose g c \scaleMyxolydianChords
                \transpose g c \scaleBluesChords
                \transpose d c \scaleDorianChords
                \transpose a c \scaleNaturalMinorChords
                \transpose a c \scaleHarmonicMinorChords
                \transpose a c \scaleMelodicMinorChords
            }
            \new Staff \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "F Major"
                \scaleMajorNotes
                \break
                \mark "F Dominant, the V of Bb Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "F Blues, elaboration of the V of Bb Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "F Dorian Minor, the ii of Eb Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "F Nautral (Parallel) Minor, the vi of Ab Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "F Harmonic Minor, for the the V7 of F Minor, Dominant C7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "F Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}

% 2 Accidentals
\bookpart {
    \header {
        title = ""
        composer = ""
        subtitle = "Diatonc Scales of D Major and B Minor"
    }

    \score {
        \transpose c d <<
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c { 
                \scaleMajorChords 
                \scaleMyxolydianChords
                \scaleBluesChords
                \scaleDorianChords
                \scaleNaturalMinorChords
                \scaleHarmonicMinorChords
                \scaleMelodicMinorChords
            }
            \new Staff \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "D Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "A Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotes
                \break
                \mark "A Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotes
                \break
                \mark "E Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "B Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotes
                \break
                \mark "B Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotes
                \break
                \mark "B Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotes
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        composer = ""
        subtitle = "Parallel Scales of D"
    }
    \score {
        \transpose c d <<
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c {
                \scaleMajorChords 
                \transpose g c \scaleMyxolydianChords
                \transpose g c \scaleBluesChords
                \transpose d c \scaleDorianChords
                \transpose a c \scaleNaturalMinorChords
                \transpose a c \scaleHarmonicMinorChords
                \transpose a c \scaleMelodicMinorChords
            }
            \new Staff \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "D Major"
                \scaleMajorNotes
                \break
                \mark "D Dominant, the V of G Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "D Blues, elaboration of the V of G Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "D Dorian Minor, the ii of C Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "D Nautral (Parallel) Minor, the vi of F Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "D Harmonic Minor, for the the V7 of D Minor, Dominant A7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "D Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        composer = ""
        subtitle = "Diatonc Scales of Bb Major and G Minor"
    }

    \score {
        \transpose c bf <<
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c { 
                \scaleMajorChords 
                \scaleMyxolydianChords
                \scaleBluesChords
                \scaleDorianChords
                \scaleNaturalMinorChords
                \scaleHarmonicMinorChords
                \scaleMelodicMinorChords
            }
            \new Staff \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "Bb Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "F Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotesLow
                \break
                \mark "F Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotesLow
                \break
                \mark "C Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "G Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotesLow
                \break
                \mark "G Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotesLow
                \break
                \mark "G Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotesLow
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        composer = ""
        subtitle = "Parallel Scales of Bb"
    }
    \score {
        \transpose c bf <<
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c {
                \scaleMajorChords 
                \transpose g c \scaleMyxolydianChords
                \transpose g c \scaleBluesChords
                \transpose d c \scaleDorianChords
                \transpose a c \scaleNaturalMinorChords
                \transpose a c \scaleHarmonicMinorChords
                \transpose a c \scaleMelodicMinorChords
            }
            \new Staff \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "Bb Major"
                \scaleMajorNotes
                \break
                \mark "Bb Dominant, the V of Eb Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "Bb Blues, elaboration of the V of Eb Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "Bb Dorian Minor, the ii of Ab Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "Bb Nautral (Parallel) Minor, the vi of Db Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "Bb Harmonic Minor, for the the V7 of Bb Minor, Dominant F7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "Bb Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}

% 3 Accidentals
\bookpart {
    \header {
        title = ""
        composer = ""
        subtitle = "Diatonc Scales of A Major and F# Minor"
    }

    \score {
        \transpose c a <<
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c { 
                \scaleMajorChords 
                \scaleMyxolydianChords
                \scaleBluesChords
                \scaleDorianChords
                \scaleNaturalMinorChords
                \scaleHarmonicMinorChords
                \scaleMelodicMinorChords
            }
            \new Staff \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "A Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "E Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotesLow
                \break
                \mark "E Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotesLow
                \break
                \mark "B Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "F# Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotesLow
                \break
                \mark "F# Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotesLow
                \break
                \mark "F# Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotesLow
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        composer = ""
        subtitle = "Parallel Scales of A"
    }
    \score {
        \transpose c a <<
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c {
                \scaleMajorChords 
                \transpose g c \scaleMyxolydianChords
                \transpose g c \scaleBluesChords
                \transpose d c \scaleDorianChords
                \transpose a c \scaleNaturalMinorChords
                \transpose a c \scaleHarmonicMinorChords
                \transpose a c \scaleMelodicMinorChords
            }
            \new Staff \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "A Major"
                \scaleMajorNotes
                \break
                \mark "A Dominant, the V of D Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "A Blues, elaboration of the V of D Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "A Dorian Minor, the ii of G Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "A Nautral (Parallel) Minor, the vi of C Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "A Harmonic Minor, for the the V7 of A Minor, Dominant E7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "A Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        composer = ""
        subtitle = "Diatonc Scales of Eb Major and C Minor"
    }

    \score {
        \transpose c ef <<
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c { 
                \scaleMajorChords 
                \scaleMyxolydianChords
                \scaleBluesChords
                \scaleDorianChords
                \scaleNaturalMinorChords
                \scaleHarmonicMinorChords
                \scaleMelodicMinorChords
            }
            \new Staff \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "Eb Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "Bb Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotes
                \break
                \mark "Bb Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotes
                \break
                \mark "F Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "C Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotes
                \break
                \mark "C Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotes
                \break
                \mark "C Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotes
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        composer = ""
        subtitle = "Parallel Scales of Eb"
    }
    \score {
        \transpose c ef <<
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c {
                \scaleMajorChords 
                \transpose g c \scaleMyxolydianChords
                \transpose g c \scaleBluesChords
                \transpose d c \scaleDorianChords
                \transpose a c \scaleNaturalMinorChords
                \transpose a c \scaleHarmonicMinorChords
                \transpose a c \scaleMelodicMinorChords
            }
            \new Staff \transpose c c {
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "Eb Major"
                \scaleMajorNotes
                \break
                \mark "Eb Dominant, the V of Ab Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "Eb Blues, elaboration of the V of Ab Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "Eb Dorian Minor, the ii of Db Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "Eb Nautral (Parallel) Minor, the vi of Gb Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "Eb Harmonic Minor, for the the V7 of Eb Minor, Dominant Bb7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "Eb Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}



