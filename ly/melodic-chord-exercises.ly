\version "2.19.15"
\include "english.ly"

titleLeft = "Melodic Chord Exercises"
titleRight = "for Saxophone"
title = "Melodic Chord Exercises for Saxophone"
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

auPrivavePatternChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:7 | r | r | r | 
    r | r | r | 
}
auPrivavePatternNotes = \relative c'' { 
    \key d \major
    d8. ( cs16 d8. ) a16 r4 fs'8. ( f16  | \noBreak
    fs?8. ) d16 r4 a'8. ( gs16 a8. ) fs16  | \noBreak
    r4 c'8. ( b16  c8. ) a16  r4  | \noBreak
    d8. ( a16 ) cs?8. ( d16 ) r2 |
}
auPrivavePatternNotesLow = \transpose c c, \auPrivavePatternNotes


auPrivavePreparationChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:7 | r | r | r | 
    r | r | r | 
}
auPrivavePreparationNotes = \relative c'' { 
    \key d \major
    d8. ( cs16 d8. ) a16  r4 fs'8. ( f16  | fs?8. ) d16 r4 a'8. ( gs16 a8. ) fs16 |
    r4 c'8. ( b16  c8. ) a16 r4  | d8. ( cs16 d8. ) c16-> ~ \tuplet 3/2 { c4 a af } |
    \tuplet 3/2 { g4 f d } c2 ~ | 1 | d4-^ r4 r2 |
}
auPrivavePreparationNotesLow = \transpose c c, \auPrivavePreparationNotes


auPrivaveCadenceChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:7 | r | r | r |
    g1:7 | r  
}
auPrivaveCadenceNotes= \relative c'' {
    \key d \major
    d8. ( cs16 d8. ) a16  r4 fs'8. ( f16  | fs8. ) a,16  r4 a'8. ( gs16 a8. ) d,16 |
    r4 c'8. ( b16  c8. ) d,16  r4  | d'8 af g f d c4. |
    b8 g f d  b g'4. ~ | 2 r |
}
auPrivaveCadenceNotesLow = \transpose c c, \auPrivaveCadenceNotes


auPrivavePassageChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:7 | r | r | r |
    g1:7 | r | d:7 | r | 
}
auPrivavePassageNotes= \relative c'' {
    \key d \major
    d8. ( cs16 d8. ) a16  r4 fs'8. ( f16  | fs8. ) a,16  r4 a'8. ( gs16 a8. ) d,16 |
    r4 c'8. ( b16  c8. ) a16  r4  | d8 af g f d c4. |
    b8 g f d  b g'4. ~ | 2 r |
}
auPrivavePassageNotesLow = \transpose c c, \auPrivavePassageNotes



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
        subtitle = "Based on Au Privave"
    }

    \score {
        \header {
            piece = "D7 with chromatic neighbors"
        } 
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c { 
                \auPrivavePatternChords
            }
            \new Staff \transpose c c { 
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \auPrivavePatternNotes
                \bar "|."
            }
        >>
    }

    \score {
        \header {
            piece = "D7 preparing go to G7"
        } 
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c { 
                \auPrivavePreparationChords
            }
            \new Staff \transpose c c { 
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \auPrivavePreparationNotes
                \bar "|."
            }
        >>
    }

    \score {
        \header {
            piece = "Cadencde D7 to G7"
        } 
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c { 
                \auPrivaveCadenceChords
            }
            \new Staff \transpose c c { 
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \auPrivaveCadenceNotes
                \bar "|."
            }
        >>
    }
}