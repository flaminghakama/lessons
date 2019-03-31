\version "2.19.15"
\include "english.ly"

titleLeft = "Advanced Relative and Parallel"
titleRight = "Scales for Saxophone"
title = "Advanced Relative and Parallel Scales for Saxophone"
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

 % 4 Accidentals
\bookpart {
    \header {
        subtitle = "Diatonc Scales of E Major and C# Minor"
    }
    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c e { 
                \scaleMajorChords 
                \scaleMyxolydianChords
                \scaleBluesChords
                \scaleDorianChords
                \scaleNaturalMinorChords
                \scaleHarmonicMinorChords
                \scaleMelodicMinorChords
            }
            \new Staff \transpose c e { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "E Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "B Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotes
                \break
                \mark "B Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotes
                \break
                \mark "F# Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "C# Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotes
                \break
                \mark "C# Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotes
                \break
                \mark "C# Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotes
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Parallel Scales of E"
        composer = ""
    }
    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c e {
                \scaleMajorChords 
                \transpose g c \scaleMyxolydianChords
                \transpose g c \scaleBluesChords
                \transpose d c \scaleDorianChords
                \transpose a c \scaleNaturalMinorChords
                \transpose a c \scaleHarmonicMinorChords
                \transpose a c \scaleMelodicMinorChords
            }
            \new Staff \transpose c e { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "E Major"
                \scaleMajorNotes
                \break
                \mark "E Dominant, the V of A Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "E Blues, elaboration of the V of A Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "E Dorian Minor, the ii of D Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "E Nautral (Parallel) Minor, the vi of G Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "E Harmonic Minor, for the the V7 of E Minor, Dominant B7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "E Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Diatonc Scales of Ab Major and F Minor"
        composer = ""
    }
    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c af { 
                \scaleMajorChords 
                \scaleMyxolydianChords
                \scaleBluesChords
                \scaleDorianChords
                \scaleNaturalMinorChords
                \scaleHarmonicMinorChords
                \scaleMelodicMinorChords
            }
            \new Staff \transpose c af { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "Ab Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "Eb Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotesLow
                \break
                \mark "Eb Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotesLow
                \break
                \mark "Bb Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "F Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotesLow
                \break
                \mark "F Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotesLow
                \break
                \mark "F Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotesLow
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Parallel Scales of Ab"
        composer = ""
    }
    \score {
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c af {
                \scaleMajorChords 
                \transpose g c \scaleMyxolydianChords
                \transpose g c \scaleBluesChords
                \transpose d c \scaleDorianChords
                \transpose a c \scaleNaturalMinorChords
                \transpose a c \scaleHarmonicMinorChords
                \transpose a c \scaleMelodicMinorChords
            }
            \new Staff \transpose c af { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "Ab Major"
                \scaleMajorNotes
                \break
                \mark "Ab Dominant, the V of Db Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "Ab Blues, elaboration of the V of Db Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "Ab Dorian Minor, the ii of Gb Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "Ab Nautral (Parallel) Minor, the vi of Cb Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "Ab Harmonic Minor, for the the V7 of Ab Minor, Dominant Eb7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "Ab Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}

% 5 Accidentals
\bookpart {
    \header {
        title = ""
        subtitle = "Diatonc Scales of B Major and G# Minor"
        composer = ""
    }
    \score {
        \transpose c c <<
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c b { 
                \scaleMajorChords 
                \scaleMyxolydianChords
                \scaleBluesChords
                \scaleDorianChords
                \scaleNaturalMinorChords
                \scaleHarmonicMinorChords
                \scaleMelodicMinorChords
            }
            \new Staff \transpose c b { 
                \include "ly/ily/staff-properties.ily"
                \key c \major
                \mark "B Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "F# Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotesLow
                \break
                \mark "F# Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotesLow
                \break
                \mark "C# Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "G# Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotesLow
                \break
                \mark "G# Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotesLow
                \break
                \mark "G# Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
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
        subtitle = "Parallel Scales of B"
    }
    \score {
        \transpose c b <<
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
                \mark "B Major"
                \scaleMajorNotes
                \break
                \mark "B Dominant, the V of E Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "B Blues, elaboration of the V of E Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "B Dorian Minor, the ii of A Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "B Nautral (Parallel) Minor, the vi of D Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "B Harmonic Minor, for the the V7 of D Minor, Dominant F#7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "B Melodic Minor, combination of Major and Natural minor"
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
        subtitle = "Diatonc Scales of Db Major and Bb Minor"
    }

    \score {
        \transpose c df <<
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
                \mark "Db Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "Ab Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotes
                \break
                \mark "Ab Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotes
                \break
                \mark "Eb Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "Bb Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotes
                \break
                \mark "Bb Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotes
                \break
                \mark "Bb Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
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
        subtitle = "Parallel Scales of Db"
    }
    \score {
        \transpose c df <<
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
                \mark "Db Major"
                \scaleMajorNotes
                \break
                \mark "Db Dominant, the V of Ab Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "Db Blues, elaboration of the V of Ab Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "Db Dorian Minor, the ii of Cb Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "Db Nautral (Parallel) Minor, the vi of Fb Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "Db Harmonic Minor, for the the V7 of Fb Minor, Dominant C7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "Db Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}

% 6 Accidentals
\bookpart {
    \header {
        title = ""
        composer = ""
        subtitle = "Diatonc Scales of F# Major and D# Minor"
    }

    \score {
        \transpose c fs <<
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
                \mark "F# Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "C# Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotes
                \break
                \mark "C# Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotes
                \break
                \mark "G# Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "D# Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotesLow
                \break
                \mark "D# Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotesLow
                \break
                \mark "D# Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
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
        subtitle = "Parallel Scales of F#"
    }
    \score {
        \transpose c fs <<
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
                \mark "F# Major"
                \scaleMajorNotes
                \break
                \mark "F# Dominant, the V of B Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "F# Blues, elaboration of the V of B Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "F# Dorian Minor, the ii of E Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "F# Nautral (Parallel) Minor, the vi of A Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "F# Harmonic Minor, for the the V7 of B Minor, Dominant C#7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "F# Melodic Minor, combination of Major and Natural minor"
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
        subtitle = "Diatonc Scales of Gb Major and Eb Minor"
    }

    \score {
        \transpose c gf <<
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
                \mark "Gb Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "Db Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotesLow
                \break
                \mark "Db Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotesLow
                \break
                \mark "Ab Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "Eb Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotesLow
                \break
                \mark "Eb Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotesLow
                \break
                \mark "Eb Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
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
        subtitle = "Parallel Scales of Gb"
    }
    \score {
        \transpose c gf <<
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
                \mark "Gb Major"
                \scaleMajorNotes
                \break
                \mark "Gb Dominant, the V of Cb Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "Gb Blues, elaboration of the V of Cb Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "Gb Dorian Minor, the ii of Fb Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "Gb Nautral (Parallel) Minor, the vi of Bbb Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "Gb Harmonic Minor, for the the V7 of Bbb Minor, Dominant Db7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "Gb Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}

% 7 Accidentals
\bookpart {
    \header {
        title = ""
        composer = ""
        subtitle = "Diatonc Scales of C# Major and A# Minor"
    }

    \score {
        \transpose c cs <<
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
                \mark "C# Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "G# Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotes
                \break
                \mark "G# Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotes
                \break
                \mark "D# Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "A# Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotes
                \break
                \mark "A# Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotes
                \break
                \mark "A# Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
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
        subtitle = "Parallel Scales of C#"
    }
    \score {
        \transpose c cs <<
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
                \mark "C# Major"
                \scaleMajorNotes
                \break
                \mark "C# Dominant, the V of F# Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "C# Blues, elaboration of the V of F# Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "C# Dorian Minor, the ii of B Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "C# Nautral (Parallel) Minor, the vi of E Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "C# Harmonic Minor, for the the V7 of C# Minor, Dominant G#7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "C# Melodic Minor, combination of Major and Natural minor"
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
        subtitle = "Diatonc Scales of Cb Major and Ab Minor"
    }

    \score {
        \transpose c cf <<
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
                \mark "Cb Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "Gb Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotes
                \break
                \mark "Gb Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotes
                \break
                \mark "Db Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "Ab Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotes
                \break
                \mark "Ab Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotes
                \break
                \mark "Ab Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
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
        subtitle = "Parallel Scales of Cb"
    }
    \score {
        \transpose c cf <<
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
                \mark "Cb Major"
                \scaleMajorNotes
                \break
                \mark "Cb Dominant, the V of Fb Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "Cb Blues, elaboration of the V of Fb Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "Cb Dorian Minor, the ii of Bbb Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "Cb Nautral (Parallel) Minor, the vi of Ebb Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "Cb Harmonic Minor, for the the V7 of Cb Minor, Dominant Gb7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "Cb Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}



