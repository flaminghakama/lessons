\version "2.19.15"
\include "english.ly"

titleLeft = "Careless Whisper"
titleRight = "Rhythm Exercises"
title = "Careless Whisper Rhythm Exercises"
composerName = "D. Elaine Alt"
arrangerName = "G. Michael & A. Ridgeley"
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

alternateFingering = <>^\markup \raise #0.2 { \fontsize #5 \bold "+" }


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

lickChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:m | s | g:m | s2 a2:m7 |
    bf1:maj7 | s | a:m7 | s |  
}

songChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s1 ||
    \lickChords
    \lickChords
}
song = \relative c' {
    \key f \major
    r2 r4 f4 \glissando \bar "||" 

    e'4 d8 a ~ 8 f4 e'8 ~ | 
    4 d8 a ~ 8 f4. |
    c'4 bf8 f ~ 8 d4 c'8 ~ | \break
    4 bf8 f ~ 2 | 
    
    bf4 a8 f ~ 8 d4 bf8 ~ | 
    2. r4 | 
    a4 bf c d | \break
    e f g a  \glissando |

    e'4 d8 a ~ 8 f4 e'8 ~ | 
    4 d8 a ~ 8 f4. |
    c'4 bf8 f ~ 8 d4 c'8 ~ | \break
    4 bf8 f ~ 2 | 
    
    bf4 a8 f ~ 8 d4 bf8 ~ | 
    2. r4 | 
    a4 bf c d |
    e f g a \bar "||" \break
}

rhythmOne = \relative c' {
    \key f \major
    d4 e8 d ~ 8 e4 d8 ~ | 
    4 e8 d ~ 2 |

    f4 g8 f ~ 8 g4 f8 ~ | 
    4 g8 f ~ 2 | \break

    a4 bf8 a ~ 8 bf4 a8 ~ | 
    4 bf8 a ~ 2 |

    c4 d8 c ~ 8 d4 c8 ~ | 
    4 d8 c ~ 2 \bar "||" \break

    a4 d8 a ~ 8 d4 a8 ~ | 
    4 d8 a ~ 2 |

    bf4 d8 bf ~ 8 d4 bf8 ~ | 
    4 d8 bf ~ 2 |

    d4 f8 d ~ 8 f4 d8 ~ | 
    4 f8 d ~ 2 |

    d4 e8 d ~ 8 e4 d8 ~ | 
    4 e8 d ~ 2 \bar "|."
}
rhythmOneChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \lickChords
    \lickChords
}

rhythmTwo = \relative c' {
    \key f \major
    r4 d8 f ~ 8 a4 c8 ~ | 
    4 e8 c ~ 8 a4. |

    r4 g,8 bf ~ 8 d4 f8 ~ | 
    4 a8 c ~ 8 a4. | \break

    r4 f,8 bf ~ 8 d4 f8 ~ | 
    4 a8 c ~ 8 a4.  |

    r4 a,8 bf ~ 8 c4 d8 ~ | 
    4 e8 f ~ 8 g4. \bar "||" \break

    r4 f'8 d ~ 8 a4 f'8 ~ | 
    4 d8 a ~ 8 f4. |

    r4 d'8 c ~ 8 bf4 d8 ~ | 
    4 c8 bf ~ 8 a4. | \break

    r4 d8 bf ~ 8 a4 d8 ~ | 
    4 bf8 a ~ 8 f4. |

    r4 e'8 c ~ 8 a4 e'8 ~ | 
    4 c8 a ~ 8 g4. \bar "|." 
}
rhythmTwoChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    \lickChords
    \lickChords
}
    

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\book { 
    \header {
        poet = "Eb Alto Saxophone"
    }

    \bookpart {
        \header {
            subtitle = "Two Patterns"
        }
        \score {
            \header {
                piece = "Rhythm One"
            }
            \transpose ef, c 
            << 
                \new ChordNames \transpose c c { 
                    \rhythmOneChords 
                }
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmOne
                }
            >>
        }
        \score {
            \header {
                piece = "Rhythm Two"
            }
            \transpose ef, c 
            << 
                \new ChordNames \transpose c c { 
                    \rhythmTwoChords 
                }
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    \rhythmTwo
                }
            >>
        }
    }
    \bookpart {
        \header {
            title = ""
            subtitle = "Careless Whisper (Half Time)"
            composer = \arrangerName
        }
        \score {
            \transpose ef, c 
            << 
                \new ChordNames \transpose c c { 
                    \songChords 
                }
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    \song
                }
            >>
        }
     }
}
