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


\layout {
    \context {
        \Score
        \omit BarNumber
    }
}

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
        d4 e8 f  g a b c | d4 c8 b  a g f e | d2. r4 \bar "||" 
}
scaleDorianNotesLow = \transpose c c, \scaleDorianNotes

scaleNaturalMinorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:m | r | r |
}
scaleNaturalMinorNotes = \relative c'' { 
        a4 b8 c  d e f g | a4  g8 f  e d c b | a2. r4 \bar "||" 
}
scaleNaturalMinorNotesLow = \transpose c c, \scaleNaturalMinorNotes

scaleHarmonicMinorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    a1:m7.7+ | e:7.9- | a:m |

}
scaleHarmonicMinorNotes = \relative c'' { 
    a4 b8 c  d e f gs | a4 gs8 f?  e  d c b | a2. r4 \bar "||" 
}
scaleHarmonicMinorNotesLow = \transpose c c, \scaleHarmonicMinorNotes


scaleMyxolydianChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    g1:7 | r | r |

}
scaleMyxolydianNotes = \relative c'' { 
    g4 a8 b  c d e f | g4 f8 e  d c b a | g2. r4 | 
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
    g4 bf8 c  cs d f fs | g4 f?8 ef  d df c bf | g2. r4 \bar "||" 
}
scaleBluesNotesLow = \transpose c c, \scaleBluesNotes


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


 % No Accidentals
\bookpart {
    \header {
        subtitle = "Scales in Relative Keys"
    }

    \score {
        \header {
            piece = "Diatonc Scales of C Major and A Minor"
        } 
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
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key c \major
                \mark "C Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotes
                \break
                \mark "Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotes
                \break
                \mark "Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotes
                \break
                \mark "Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotes
                \break
                \mark "Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotes
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Scales in Parallel Keys"
    }

    \score {
        \header {
            title = ""
            composer = ""
            piece = "Basic Parallel Scales of C"
        } 
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
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key c \major
                \mark "C Major"
                \scaleMajorNotes
                \break
                \mark "Dominant, the V of F Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "Blues, elaboration of the V of F Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "Dorian Minor, the ii of Bb Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "Nautral (Parallel) Minor, the vi of Eb Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "Harmonic Minor, for the the V7 of C Minor, Dominant G7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "Melodic Minor, combination of Major and Natural minor"
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
        subtitle = "Scales in Relative Keys"
    }

    \score {
        \header {
            title = ""
            composer = ""
            piece = "Diatonc Scales of G Major and E Minor"
        } 
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
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key c \major
                \mark "G Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotesLow
                \break
                \mark "Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotesLow
                \break
                \mark "Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotesLow
                \break
                \mark "Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotesLow
                \break
                \mark "Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotesLow
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Scales in Parallel Keys"
    }

    \score {
        \header {
            title = ""
            composer = ""
            piece = "Basic Parallel Scales of G"
        } 
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
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key c \major
                \mark "G Major"
                \scaleMajorNotes
                \break
                \mark "Dominant, the V of C Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "Blues, elaboration of the V of C Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "Dorian Minor, the ii of F Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "Nautral (Parallel) Minor, the vi of Bb Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "Harmonic Minor, for the the V7 of G Minor, Dominant D7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Scales in Relative Keys"
    }

    \score {
        \header {
            title = ""
            composer = ""
            piece = "Diatonc Scales of F Major and D Minor"
        } 
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
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key c \major
                \mark "F Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotesLow
                \break
                \mark "Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotesLow
                \break
                \mark "Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotesLow
                \break
                \mark "Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotesLow
                \break
                \mark "Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotesLow
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Scales in Parallel Keys"
    }

    \score {
        \header {
            title = ""
            composer = ""
            piece = "Basic Parallel Scales of F"
        } 
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
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key c \major
                \mark "F Major"
                \scaleMajorNotes
                \break
                \mark "Dominant, the V of Bb Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "Blues, elaboration of the V of Bb Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "Dorian Minor, the ii of Eb Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "Nautral (Parallel) Minor, the vi of Ab Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "Harmonic Minor, for the the V7 of F Minor, Dominant C7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "Melodic Minor, combination of Major and Natural minor"
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
        subtitle = "Scales in Relative Keys"
    }

    \score {
        \header {
            title = ""
            composer = ""
            piece = "Diatonc Scales of D Major and B Minor"
        } 
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
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key c \major
                \mark "D Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotes
                \break
                \mark "Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotes
                \break
                \mark "Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotes
                \break
                \mark "Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotes
                \break
                \mark "Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotes
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Scales in Parallel Keys"
    }

    \score {
        \header {
            title = ""
            composer = ""
            piece = "Basic Parallel Scales of D"
        } 
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
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key c \major
                \mark "D Major"
                \scaleMajorNotes
                \break
                \mark "Dominant, the V of G Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "Blues, elaboration of the V of G Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "Dorian Minor, the ii of C Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "Nautral (Parallel) Minor, the vi of F Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "Harmonic Minor, for the the V7 of D Minor, Dominant A7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Scales in Relative Keys"
    }

    \score {
        \header {
            title = ""
            composer = ""
            piece = "Diatonc Scales of Bb Major and G Minor"
        } 
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
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key c \major
                \mark "Bb Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotesLow
                \break
                \mark "Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotesLow
                \break
                \mark "Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotesLow
                \break
                \mark "Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotesLow
                \break
                \mark "Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotesLow
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Scales in Parallel Keys"
    }

    \score {
        \header {
            title = ""
            composer = ""
            piece = "Basic Parallel Scales of Bb"
        } 
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
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key c \major
                \mark "Bb Major"
                \scaleMajorNotes
                \break
                \mark "Dominant, the V of Eb Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "Blues, elaboration of the V of Eb Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "Dorian Minor, the ii of Ab Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "Nautral (Parallel) Minor, the vi of Db Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "Harmonic Minor, for the the V7 of Bb Minor, Dominant F7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "Melodic Minor, combination of Major and Natural minor"
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
        subtitle = "Relative Keys"
    }

    \score {
        \header {
            title = ""
            composer = ""
            piece = "Diatonc Scales of A Major and F# Minor"
        } 
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
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key c \major
                \mark "A Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotesLow
                \break
                \mark "Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotesLow
                \break
                \mark "Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotesLow
                \break
                \mark "Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotesLow
                \break
                \mark "Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotesLow
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Parallel Keys"
    }

    \score {
        \header {
            title = ""
            composer = ""
            piece = "Basic Parallel Scales of A"
        } 
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
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key c \major
                \mark "A Major"
                \scaleMajorNotes
                \break
                \mark "Dominant, the V of D Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "Blues, elaboration of the V of D Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "Dorian Minor, the ii of G Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "Nautral (Parallel) Minor, the vi of C Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "Harmonic Minor, for the the V7 of A Minor, Dominant E7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Relative Keys"
    }

    \score {
        \header {
            title = ""
            composer = ""
            piece = "Diatonc Scales of Eb Major and C Minor"
        } 
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
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key c \major
                \mark "Eb Major, Scale degree I"
                \scaleMajorNotes
                \break
                \mark "Dominant Myxolydian, Scale degree V"
                \scaleMyxolydianNotes
                \break
                \mark "Blues, elaboration of Myxoldian scale degree V with its Parallel Minor"
                \scaleBluesNotes
                \break
                \mark "Dorian Minor, Scale degree ii"
                \scaleDorianNotes
                \break
                \mark "Natural Minor, Scale degree vi"
                \scaleNaturalMinorNotes
                \break
                \mark "Harmonic Minor, Scale degree vi"
                \scaleHarmonicMinorNotes
                \break
                \mark "Melodic Minor, Scale degree vi, ascending Major, descending Natural minor"
                \scaleMelodicMinorNotes
                \bar "|."
            }
        >>
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Parallel Keys"
    }

    \score {
        \header {
            title = ""
            composer = ""
            piece = "Basic Parallel Scales of Eb"
        } 
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
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key c \major
                \mark "Eb Major"
                \scaleMajorNotes
                \break
                \mark "Dominant, the V of Ab Major, b7"
                \transpose g c { \key c \major \scaleMyxolydianNotes }
                \break
                \mark "Blues, elaboration of the V of Ab Major, b7, b3, b5"
                \transpose g c { \key c \major \scaleBluesNotes }
                \break
                \mark "Dorian Minor, the ii of Db Major, b7 b3"
                \transpose d c { \key c \major \scaleDorianNotes }
                \break
                \mark "Nautral (Parallel) Minor, the vi of Gb Major, b7 b3 b6"
                \transpose a c { \key a \minor \scaleNaturalMinorNotes }
                \break
                \mark "Harmonic Minor, for the the V7 of Eb Minor, Dominant Bb7b9"
                \transpose a c { \key a \minor \scaleHarmonicMinorNotes }
                \break
                \mark "Melodic Minor, combination of Major and Natural minor"
                \transpose a c { \key a \minor \scaleMelodicMinorNotes }
                \bar "|."
            }
        >>
    }
}



