\version "2.19.15"
\include "english.ly"

titleLeft = "Blues Forms"
titleRight = "and Chords"
title = "Blues Forms and Chords"
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
  top-system-spacing.minimum-distance = #8

  % Spacing in between systems
  system-system-spacing.minimum-distance = #16

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

rockBluesChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:7 | r | r | r |
    g:7 | r | d:7 | r | 
    a:7 | g:7 | d:7 | a:7 |

}
basicJazzBluesChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:7 | r | r | r |
    g:7 | r | d:7 | r | 
    e1:m7 | a:7 | d1:7 | a:7 |
}
jazzBluesChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:7 | g:7 | d:7 | a2:m7 d:7 |
    g1:7 | r | d:7 | fs2:m7 b:7 |
    e1:m7 | a:7 | d2:7 b:7 | e:m7 a:7 |
}

arpeggiosRockBlues  = \relative c' { 
    d2 fs | a c | d fs | a c | \break
    g, b | d f | d, fs | a c | \break
    a4 cs e g | g, b d f | d, fs a c | a cs e g  
     \bar "||" 
}
arpeggiosRockBluesLow = \transpose c c, \arpeggiosRockBlues

arpeggiosBasicJazzBlues  = \relative c' { 
    d2 fs | a c | d fs | a c | \break
    g, b | d f | d, fs | a c | \break
    e,4 g b d | a cs e g | d, fs a c | a cs e g  
     \bar "||" 
}
arpeggiosBasicJazzBluesLow = \transpose c c, \arpeggiosBasicJazzBlues

arpeggiosJazzBlues  = \relative c' { 
    d4 fs a c | g b d f | d, fs a c | e g a c | \break
    g, b d f | g, b d f | d, fs a c | fs, a b ds, | \break
    e4 g b d | a cs e g | fs d, ds fs | e g a cs |  
     \bar "||" 
}
arpeggiosJazzBluesLow = \transpose c c, \arpeggiosJazzBlues


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
        subtitle = ""
    }

    \score {
        \header {
            piece = "Some Blues Forms in C"
        } 
        \transpose d c <<
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c { 
                \rockBluesChords 
                \basicJazzBluesChords
                \jazzBluesChords
            }
            \new Staff \transpose c c { 
                \autoPageBreaksOff
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key d \major
                \mark "R&B (Rock) Blues Form"
                \arpeggiosRockBlues
                \break
                \mark "Basic Jazz Blues Form"
                \arpeggiosBasicJazzBlues
                \break
                \mark "Jazz Blues Form"
                \arpeggiosJazzBlues
                \bar "|."
            }
        >>
    }
}


\bookpart {
    \header {
        title = ""
        subtitle = "Blues Forms and Chords"
        composer = ""
    }

    \score {
        \header {
            piece = "Some Blues Forms in G"
            composer = ""
        } 
        \transpose d g <<
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c { 
                \rockBluesChords 
                \basicJazzBluesChords
                \jazzBluesChords
            }
            \new Staff \transpose c c { 
                \autoPageBreaksOff
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key d \major
                \mark "R&B (Rock) Blues Form"
                \arpeggiosRockBlues
                \break
                \mark "Basic Jazz Blues Form"
                \arpeggiosBasicJazzBlues
                \break
                \mark "Jazz Blues Form"
                \arpeggiosJazzBlues
                \bar "|."
            }
        >>
    }
}


\bookpart {
    \header {
        title = ""
        subtitle = "Blues Forms and Chords"
        composer = ""
    }

    \score {
        \header {
            piece = "Some Blues Forms in D"
            composer = ""
        } 
        << 
            \override Score.RehearsalMark.self-alignment-X = #LEFT
            \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
            \new ChordNames \transpose c c { 
                \rockBluesChords 
                \basicJazzBluesChords
                \jazzBluesChords
            }
            \new Staff \transpose c c { 
                \autoPageBreaksOff
                \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
                \key d \major
                \mark "R&B (Rock) Blues Form"
                \arpeggiosRockBlues
                \break
                \mark "Basic Jazz Blues Form"
                \arpeggiosBasicJazzBlues
                \break
                \mark "Jazz Blues Form"
                \arpeggiosJazzBlues
                \bar "|."
            }
        >>
    }
}