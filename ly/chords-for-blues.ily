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
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #8

  % Spacing in between systems
  system-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  #(define fonts
    (make-pango-font-tree "Hardwood" 
                          "Highlander ITC TT" 
                          "Papyrus"
                           (/ myStaffSize 20)))
}
%BodoniClassicChancery" 

\include "../scores/flaming-libs/flaming-fonts.ily"

\include "ly/ily/saxophone-fingerings.ily"    
\include "ly/ily/layout.ily"

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
    \key d \major
    \time 4/4
    \bar "[|:"
    d2 fs | a c | d fs | a c | \break
    g, b | d f | d, fs | a c | \break
    a4 cs e g | g, b d f | d, fs a c | a cs e g  
    \bar ":|]"
}
arpeggiosRockBluesLow = \transpose c c, \arpeggiosRockBlues

arpeggiosBasicJazzBlues  = \relative c' { 
    \key d \major
    \time 4/4
    \bar "[|:"
    d2 fs | a c | d fs | a c | \break
    g, b | d f | d, fs | a c | \break
    e,4 g b d | a cs e g | d, fs a c | a cs e g  
    \bar ":|]"
}
arpeggiosBasicJazzBluesLow = \transpose c c, \arpeggiosBasicJazzBlues

arpeggiosJazzBlues  = \relative c' { 
    \key d \major
    \time 4/4
    \bar "[|:"
    d4 fs a c | g b d f | d, fs a c | e g a c | \break
    g, b d f | g, b d f | d, fs a c | fs, a b ds, | \break
    e4 g b d | a cs e g | fs d, ds fs | e g a cs |  
    \bar ":|]"
}
arpeggiosJazzBluesLow = \transpose c c, \arpeggiosJazzBlues


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\bookpart {
    \header {
        subtitle = "Some Blues Forms in C"
    }
    \score {
        \transpose d c <<
           \include "ly/ily/score-properties.ily"
           \new ChordNames { 
                \rockBluesChords 
            }
            \new Staff { 
                \autoPageBreaksOff
                \include "ly/ily/staff-properties.ily"
                \arpeggiosRockBlues
            }
        >>
        \header {
            piece = \markup \pad-markup #2 "R&B (Rock) Blues Form"
        } 
    }
    \score {
        \transpose d c <<
           \include "ly/ily/score-properties.ily"
           \new ChordNames { 
                \basicJazzBluesChords
            }
            \new Staff { 
                \autoPageBreaksOff
                \include "ly/ily/staff-properties.ily"
                \arpeggiosBasicJazzBlues
            }
        >>
        \header {
            piece = \markup \pad-markup #2 "Basic Jazz Blues Form"
        } 
    }
    \score {
        \transpose d c <<
           \include "ly/ily/score-properties.ily"
           \new ChordNames { 
                \jazzBluesChords
            }
            \new Staff { 
                \autoPageBreaksOff
                \include "ly/ily/staff-properties.ily"
                \arpeggiosJazzBlues
            }
        >>
        \header {
            piece = \markup \pad-markup #2 "Jazz Blues Form"
        } 
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Some Blues Forms in G"
        composer = ""
    }
    \score {
        \transpose d g <<
           \include "ly/ily/score-properties.ily"
           \new ChordNames { 
                \rockBluesChords 
            }
            \new Staff { 
                \autoPageBreaksOff
                \include "ly/ily/staff-properties.ily"
                \arpeggiosRockBlues
            }
        >>
        \header {
            subtitle = "Some Blues Forms in G"
            piece = \markup \pad-markup #2 "R&B (Rock) Blues Form"
        } 
    }
    \score {
        \transpose d g <<
           \include "ly/ily/score-properties.ily"
           \new ChordNames { 
                \basicJazzBluesChords
            }
            \new Staff { 
                \autoPageBreaksOff
                \include "ly/ily/staff-properties.ily"
                \arpeggiosBasicJazzBlues
            }
        >>
        \header {
            piece = \markup \pad-markup #2 "Basic Jazz Blues Form"
        } 
    }
    \score {
        \transpose d g <<
           \include "ly/ily/score-properties.ily"
           \new ChordNames { 
                \jazzBluesChords
            }
            \new Staff { 
                \autoPageBreaksOff
                \include "ly/ily/staff-properties.ily"
                \arpeggiosJazzBlues
            }
        >>
        \header {
            piece = \markup \pad-markup #2 "Jazz Blues Form"
        } 
    }
}

\bookpart {
    \header {
        title = ""
        subtitle = "Some Blues Forms in D"
        composer = ""
    }
    \score {
        \transpose d d <<
           \include "ly/ily/score-properties.ily"
           \new ChordNames { 
                \rockBluesChords 
            }
            \new Staff { 
                \autoPageBreaksOff
                \include "ly/ily/staff-properties.ily"
                \arpeggiosRockBlues
            }
        >>
        \header {
            piece = \markup \pad-markup #2 "R&B (Rock) Blues Form"
        } 
    }
    \score {
        \transpose d d <<
           \include "ly/ily/score-properties.ily"
           \new ChordNames { 
                \basicJazzBluesChords
            }
            \new Staff { 
                \autoPageBreaksOff
                \include "ly/ily/staff-properties.ily"
                \arpeggiosBasicJazzBlues
            }
        >>
        \header {
            piece = \markup \pad-markup #2 "Basic Jazz Blues Form"
        } 
    }
    \score {
        \transpose d d <<
           \include "ly/ily/score-properties.ily"
           \new ChordNames { 
                \jazzBluesChords
            }
            \new Staff { 
                \autoPageBreaksOff
                \include "ly/ily/staff-properties.ily"
                \arpeggiosJazzBlues
            }
        >>
        \header {
            piece = \markup \pad-markup #2 "Jazz Blues Form"
        } 
    }
}