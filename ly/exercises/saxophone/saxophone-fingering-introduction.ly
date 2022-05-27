\version "2.19.15"
\include "english.ly"
titleLeft = "Saxophone"
titleRight = "Fingering"
title = "Saxophone Fingering"
composerName = "D. Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-title-page.ily"

%{

rm saxophone-fingering-introduction.pdf
lilypond ly/exercises/saxophone/saxophone-fingering-introduction.ly
mv saxophone-fingering-introduction.pdf pdf/exercises/saxophone
op pdf/exercises/saxophone/saxophone-fingering-introduction.pdf 

%}


\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2022 Elaine Alt" } 
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
  markup-system-spacing.padding = #6

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #0

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

\include "ly/ily/saxophone-fingerings.ily"    
\include "ly/ily/layout.ily"

basicFingerings = \relative c' {
    d1^\lowD |e^\lowE | f^\lowF | g^\lowG | 
    a1^\lowA | \break b^\midB | c^\midC | d^\midD | 
    e1^\midE | f^\midF | \break g^\midG | a^\midA | 
    b^\highB | c^\highC \bar "|."
}

basicAccidentalFingerings = \relative c' {
    ds2^\lowDs ef^\lowEb | fs^\lowFs gs^\lowGb  | gs2^\lowGs af2^\lowAb | as2^\midAs bf^\midBb | \break
    cs2^\midCs df^\midDb | ds^\midDs ef^\midEb | fs2^\midFs gf^\midGb | gs2^\midGs af^\midAb | \break 
    as2^\highAs bf^\highBb | cs2^\highCs df^\highDb | \bar "|."
}

chromaticAccidentalFingerings = \relative c' {

    d1^\lowD | ds^\lowEb | e^\lowE gs  | f^\lowF | fs^\lowGb | \break
    g^\lowG | ds^\midEb ef | fs2^\midGb gf | gs2^\midAb af | \break 
    as2^\highBb bf | cs2^\highDb ds | \break
}

equinoxStructure = \relative c'' { 
    \key c \minor
    \partial 8*1 s8*1 
    \bar "[|:" 
    \repeat volta 2 { 
        s1*12
    }
    \bar ":|]"
}
equinoxChords = \chordmode {
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8 ||
    c1:m7 | s | s | s |
    f1:m7 | s | c:m7 | s | 
    af1:7 | g:7 | c:m7 | s |
}
equinoxBreaks = \relative c'' { 
    s8*1 
    s1*4 \break
    s1*4 \break
    s1*4 \break
}
equinoxNotes = \relative c'' { 
    g8 ||
    ef'8 c ~ 4 ~ 2 ~ | 2 r4 r8 g8 | 
    ef'4. c8 ~ 2 ~ | 2 r4 r8 ef8 | 

    f8 c ~ 4 ~ 2 ~ | 2 r4 r8 g8 | 
    ef'8 c ~ 4 ~ 2 ~ | 2 r2 | 
 
    r8 d8 ~ 4 4 4 | 4 ~ 8 c ef c ef4 | 
    c4 ~ 8 8 ~ 4 4 ~ | 2 ~ 4 r8 g8
}

pitchesInEquinoxForEb = \relative c' { 
    e1 c' a d b
}

pitchesInEquinoxFingeringsAlto = \relative c' { 
    s1^\lowE |
    s1^\midC |
    s1^\lowA | 
    s1^\midD |
    s1^\midB
}

equinoxFingeringsAlto = \relative c' { 
    s8^\lowE ||
    s8^\midC s^\lowA s2. | \break s2. s8 s | 
    s1 | \break s2. s8 s^\midC | 
    s4^\midD s^\lowA s2 | \break s1 | 
    s1 | s1 | \break 
    s8 s^\midB s2. | s4. s8^\lowA s4 s^\midC | \break
    s1 | s1 |
}

blueTraneStructure = \relative c'' { 
    \key c \minor
    \partial 8*5 s8*5 
    \bar "[|:" 
    \repeat volta 2 { 
        s1*10
    }
    \alternative { 
        {
            s1*2  \bar ":|]"
        }
        { 
            s1*2 \bar "|."
        }
    } 
}
blueTraneChords = \chordmode {
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    s8 s2 ||
    c1:m7 | s | s | s |
    f1:m7 | s | c:m7 | s | 
    g1:m7 | f2:m7 bf:7 | c1:m7 | s |
}
blueTraneBreaks = \relative c'' { 
    s8*5 
    s1*3 \break
    s1*4 \break
    s1*4 \break
}

pitchesInBlueTraneForEb = \relative c' { 
    e1 g b a c e d 
}

pitchesInBlueTraneFingeringsAlto = \relative c' { 
    s1^\lowE |
    s1^\lowG |
    s1^\midB | 
    s1^\lowA |
    s1^\midC |
    s1^\midE |
    s1^\midD
}

blueTraneNotes = \relative c'' { 
    g8 bf [ d bf c ~ ] ||

    c1 ~ | 4 r8 g8 bf d bf c ~ | 1 ~ | 4 r8 c8 ef g ef f ~ | 
    f1 ~ | 4 r8 g,8 bf d bf c ~ | 1 ~ | 4 r8 g8 c d c bf ~ | 
    bf1 ~ | 4 r8 g8 bf d bf c ~ 

    c1 ~ | 4 r8 g8 bf d bf c

    c1 ~ | 4 r4 r2 
}
blueTraneFingeringsAlto = \relative c' { 
    s8^\lowE s^\lowG s^\midB s^\lowG s^\lowA || \break
    s1 | s1 | s1 | \break s4 s8 s^\lowA s^\midC s^\midE s^\midC s^\midD |
    s1 | \break s1 | 
    s1 | s1 |
    s1 | s1
}


mrPcStructure = \relative c'' { 
    \key c \minor
    \bar "[|:" 
    \repeat volta 2 { 
        s1*12
    }
    \bar ":|]"
}
mrPcBreaks = \relative c'' { 
    s1*4 \break
    s1*4 \break
    s1*4 \break
}
mrPCChords = \chordmode {
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:m | s | s | s | 
    f1:m | s | c:m | s | 
    af1:7 | g:7 | c:m | s |  
}

mrPcNotes = \relative c'' {
    c8 c d d ef ef f f | g4. f8 ef c r bf | c2 bf4. c8 ~ | 4 r r2 | 
    f8 f g g af af bf bf | c4. bf8 af f r ef | c2 bf4. c8 ~ | 4 r ef8 c ef gf | 
    r8 f4. ~ 4. gf8 | r8 f4 ef8 c4 bf | c2 bf4. c8 ~ | 4 r r2 |
}
pitchesInMrPCForEb = \relative c'' { 
    a1 b c d e g, f' g a ef 
}

pitchesInMrPCFingeringsAlto = \relative c' { 
    s1^\lowA |
    s1^\midB | 
    s1^\midC |
    s1^\midD |
    s1^\midE |
    s1^\lowG |
    s1^\midF | 
    s1^\midG |
    s1^\midA |
    s1^\midEb |
}
%}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book { 

    \bookpart { 
        \markup \title-page-markup "" "" \center-column { "Introduction to" "Saxophone Fingerings" }
    }

    \bookpart {
        \header {
            subtitle = "Basic Fingerings"
        }
        \score {
            << 
                \include "ly/ily/score-properties.ily"
                \new Staff \transpose c c {
                    \include "ly/ily/staff-properties.ily"
                    <<
                        \basicFingerings
                    >>
                }
            >>
        }
        \paper {
            % Spacing in between systems
            system-system-spacing.basic-distance = #28

            % Space after score, before the next score
            %score-system-spacing.minimum-distance = #13
        }
    }

    \bookpart {
        \header {
            %title = ""
            subtitle = "Basic Accidental Fingerings"
        }
        \score {
            << 
                \include "ly/ily/score-properties.ily"
                \new Staff \transpose c c {
                    \include "ly/ily/staff-properties.ily"
                    <<
                        \basicAccidentalFingerings
                    >>
                }
            >>
        }
        \paper {
            % Spacing in between systems
            system-system-spacing.basic-distance = #28

            % Space after score, before the next score
            %score-system-spacing.minimum-distance = #13
        }
    }

    \bookpart {
        \score {
            \header {
                %title = ""
                subtitle = "Pitches in Equinox"
                poet = ""
                composer = ""
            }
            << 
                \include "ly/ily/score-properties.ily"
                \new Staff \transpose ef ef {
                    \include "ly/ily/staff-properties.ily"
                    <<
                        \pitchesInEquinoxForEb
                        \pitchesInEquinoxFingeringsAlto
                    >>
                }
            >>
            \layout { 
                indent = 3\cm
            }
        }
        \score {
            \header {
                title = ""
                subtitle = "Equinox"
                composer = \markup { \italic "composed by" "John Coltrane" }
                poet = "Eb Alto Sax"
            }
            << 
                \include "ly/ily/score-properties.ily"
                \new ChordNames \transpose ef c { 
                    \equinoxChords
                }
                \new Staff \transpose ef c {
                    \include "ly/ily/staff-properties.ily"
                    <<
                        \equinoxStructure 
                        \equinoxNotes
                        \equinoxBreaks
                    >>
                }
            >>
            \layout { 
                indent = 3\cm
            }
        }
    }
    \bookpart {
       \score {
            \header {
                subtitle = "Pitches in Blue Trane"
                composer = ""
                poet = ""
            }
            << 
                \include "ly/ily/score-properties.ily"
                \new Staff \transpose ef ef {
                    \include "ly/ily/staff-properties.ily"
                    <<
                        \pitchesInBlueTraneForEb
                        \pitchesInBlueTraneFingeringsAlto
                    >>
                }
            >>
            \layout { 
                indent = 3\cm
            }
        }
         \score {
            \header {
                title = ""
                subtitle = "Blue Train"
                composer = \markup { \italic "composed by" "John Coltrane" }
                poet = "Eb Alto Sax"
            }
            << 
                \include "ly/ily/score-properties.ily"
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new ChordNames \transpose ef c { 
                    \blueTraneChords
                }
                \new Staff \transpose ef c {
                    \include "ly/ily/staff-properties.ily"
                    <<
                        \blueTraneStructure 
                        \blueTraneNotes
                        \blueTraneBreaks
                    >>
                }
            >>
        }
    }

    \bookpart {
       \score {
            \header {
                subtitle = "Pitches in Mr. P. C."
                composer = ""
                poet = ""
            }
            << 
                \include "ly/ily/score-properties.ily"
                \new Staff \transpose ef ef {
                    \include "ly/ily/staff-properties.ily"
                    <<
                        \pitchesInMrPCForEb
                        \pitchesInMrPCFingeringsAlto
                    >>
                }
            >>
            \layout { 
                indent = 3\cm
            }
        }
        \score {
            \header {
                title = ""
                subtitle = "Mr. P. C."
                composer = \markup { \italic "composed by" "John Coltrane" }
                poet = "Eb Alto Sax"
            }
            << 
                \include "ly/ily/score-properties.ily"
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new ChordNames \transpose ef c { 
                    \mrPCChords
                }
                \new Staff \transpose ef c {
                    \include "ly/ily/staff-properties.ily"
                    <<
                        \mrPcStructure 
                        \mrPcBreaks
                        \mrPcNotes
                    >>
                }
            >>
            \layout { 
                indent = 3\cm
            }
        }
    }    
}