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
jazzBluesShoutChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:7 | g:7 | d:7 | a2:m7 d:7 |
    g1:7 | r | d:7 | fs2:m7 b:7 |
    e1:m7 | a:7 | d2:7 b:7 | e:m7 a:aug7 |
}
jazzBluesRollingChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:7 | g:7 | d:7 | a2:m7 d:7 |
    g1:7 | gs:dim7 | d:7 | fs2:m7 b:7 |
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

walkingJazzBlues = \relative c' { 
    \key d \major
    \time 4/4
    \bar "[|:"
    d4 e fs a | g a b d | d, e fs a | g a c d | \break
    g,4 a b d | g e d b | d e fs a | fs gs a b | \break
    e,,4 fs g b | a b cs e | d fs, a b | d e g a    
    \bar ":|]"    
}
walkingJazzBluesLow = \transpose c c, \walkingJazzBlues

shoutJazzBlues = \relative c''' { 
    \key d \major
    \time 4/4
    \bar "[|:"
    d4 d,, a' fs' | d' d,, b' g' | d' d,, a' fs' | c' a, fs' a | \break
    d4 f,, g d' | d' g,, f' b | d fs,, a c | cs? e fs a | \break
    d4 g,, e' b' | cs e,, g a' | d4 8 ds ~ 4 8 e ~ | 4 8 es ~ 2 |     
    \bar ":|]"    
}
shoutJazzBluesLow = \relative c''' { 
    \key g \major
    \time 4/4
    \bar "[|:"
    d4 d,, g b | c' e,, bf' g' | d' d,, b' g' | d' f,, g d' | \break
    c'4 g, bf e | bf' e,, g c' | d f,, g' b | d b,, gs' e' | \break
    e'4 g,, c a' | d fs,, a' c | d4 b,, gs'' d' | c e,, as c''      
    \bar ":|]"    
}

riffJazzBlues = \relative c'' { 
    \key g \major
    \time 4/4
    \bar "[|:"
    r8 fs4 d8 fs4 r | r8 f4 d8 f4 r | r8 fs4 d8 fs4 r | r8 fs4 d8 c4 r | \break
    r8 f4 d8 f4 r | r8 f4 d8 f4 r | r8 fs4 d8 fs4 r | r8 fs4 e8 ds4 r | \break
    r8 g4 e8 g4 r | r8 e4 cs8 e4 r | r8 fs4 a,8 ds8 e fs g | r8 e8 g [ es ] r cs a4 
    \bar ":|]"    
}
riffJazzBluesLow = \transpose c c, \riffJazzBlues

bounceJazzBlues = \relative c'' { 
    \key g \major
    \time 4/4
    \bar "[|:"
    b8 d r b r d r4 | bf8 c r bf r c r4 | b8 d r b r d r4  | c8 d r b r g r4  | \break
    bf8 c r bf r c r4 | cs8 e r cs r e r4 | b8 d r b r d r4 | b8 fs' r e r gs, r4 | \break
    c8 e r c r e r4 | a,8 c r a r c r4 | g8 b r d r e r4 | a,8 c r d r fs r4 |
    \bar ":|]"    
}

rollingJazzBlues = \relative c'' { 
    \key c \major
    \time 4/4
    \bar "[|:"
    c8 d e g c, d e g | c, d ef f c d ef f | c8 d e g c, d e g | f8 e d c r bf r4 | \break
    a8 bf c ef a, bf c ef | c d ef fs c d ef fs | c8 d e g c, d e g | fs e d cs r a r4 | \break
    d8 e f a d, e f a | d, e f g d e f g | c, d e g e g a cs | d c a g r f g4  
    \bar ":|]"    
}
rollingJazzBluesLow = \relative c'' { 
    \key c \major
    \time 4/4
    \bar "[|:"
    c8 d e g c, d e g | c, d ef f c d ef f | c8 d e g c, d e g | f8 e d c r bf r4 | \break
    a8 bf c ef a, bf c ef | c d ef fs c d ef fs | c8 d e g c, d e g | fs e d cs r a r4 | \break
    d8 e f a d, e f a | d, e f g d e f g | c, d e g e, g a cs | d c a g r f g4  
    \bar ":|]"    
}

fifthsJazzBlues = \relative c'' { 
    \key d \major
    \time 4/4
    \bar "[|:"
    r8 a d4 a8 d r4 | r8 g, d'4 b8 g r4 | r8 a d4 a8 d r4 | r8 a e'4 d8 fs, r4 | \break
    r8 g8 d'4 g,8 d' r4 | r8 b8 f'4 b,8 f' r4 | r8 a, d4 a8 d r4 | r8 fs, cs'4 b8 fs r4 | \break
    r8 b8 e4 b8 bf r4 | r8 cs?8 e4 bf8 a r4 | r8 a8 d4 fs,8 b r4 | r8 g8 e'4 cs8 a r4 |    
    \bar ":|]"    
}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book { 

    \bookOutputSuffix "complete"

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
        \score {
            \transpose d c <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \walkingJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Walking"
            } 
        }
        \score {
            \transpose d c <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesShoutChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \shoutJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Shout"
            } 
        }
        \score {
            \transpose d c <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesRollingChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \riffJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Riff"
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
                    \transpose g, d \bounceJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Bounce"
            } 
        }
        \score {
            \transpose d c <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesRollingChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \transpose c d \rollingJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Rolling"
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
                    \fifthsJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Fifths"
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
        \score {
            \transpose d g <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \walkingJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Walking"
            } 
        }
        \score {
            \transpose d g <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesShoutChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \transpose g d \shoutJazzBluesLow
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Shout"
            } 
        }
        \score {
            \transpose d g, <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesRollingChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \riffJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Riff"
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
                    \transpose g d \bounceJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Bounce"
            } 
        }
        \score {
            \transpose d g, <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesRollingChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \transpose c d \rollingJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Rolling"
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
                    \fifthsJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Fifths"
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
        \score {
            \transpose d d <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \walkingJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Walking"
            } 
        }
        \score {
            \transpose d d <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesShoutChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \shoutJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Shout"
            } 
        }
        \score {
            \transpose d d <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesRollingChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \riffJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Riff"
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
                    \transpose g d \bounceJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Bounce"
            } 
        }
        \score {
            \transpose d d <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesRollingChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \transpose c d \rollingJazzBluesLow
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Rolling"
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
                    \fifthsJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Fifths"
            } 
        }
    }
}


\book { 

    \bookOutputSuffix "in-D"

    \bookpart {
        \header {
            subtitle = "Some Blues Forms in D"
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
        \score {
            \transpose d d <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \walkingJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Walking"
            } 
        }
        \score {
            \transpose d d <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesShoutChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \shoutJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Shout"
            } 
        }
        \score {
            \transpose d d <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesRollingChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \riffJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Riff"
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
                    \transpose g d \bounceJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Riff"
            } 
        }
        \score {
            \transpose d d <<
               \include "ly/ily/score-properties.ily"
               \new ChordNames { 
                    \jazzBluesRollingChords
                }
                \new Staff { 
                    \autoPageBreaksOff
                    \include "ly/ily/staff-properties.ily"
                    \transpose c d \rollingJazzBluesLow
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Rolling"
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
                    \fifthsJazzBlues
                }
            >>
            \header {
                piece = \markup \pad-markup #2 "Jazz Blues Fifths"
            } 
        }
    }
}