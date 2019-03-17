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

%\include "ly/ily/saxophone-fingerings.ily"    
\include "ly/ily/layout.ily"


%{

cc
   possibilities for one:
      (one oneT)
   possibilities for two:
      (two twoT)
   possibilities for three:
      (three threeT)
   possibilities for four:
      (four fourT)
   possibilities for five:
      (five fiveT)
   possibilities for six:
      (six sixT)
lh
   possibilities for T:
      (T TT)
   possibilities for ees:
      (ees eesT)
   possibilities for d:
      (d dT)
   possibilities for f:
      (f fT)
   possibilities for front-f:
      (front-f front-fT)
   possibilities for bes:
      (bes besT)
   possibilities for gis:
      (gis gisT)
   possibilities for cis:
      (cis cisT)
   possibilities for b:
      (b bT)
   possibilities for low-bes:
      (low-bes low-besT)
rh
   possibilities for e:
      (e eT)
   possibilities for c:
      (c cT)
   possibilities for bes:
      (bes besT)
   possibilities for high-fis:
      (high-fis high-fisT)
   possibilities for fis:
      (fis fisT)
   possibilities for ees:
      (ees eesT)
   possibilities for low-c:
      (low-c low-cT)
%}

lowBb = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (low-bes))
        (cc . (one two three four five six))
        (rh . (c))
    )
}
lowB = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (b))
        (cc . (one two three four five six))
        (rh . (c))
    )
}
lowC = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three four five six))
        (rh . (c))
    )
}
lowDb = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (cis))
        (cc . (one two three four five six))
        (rh . (c))
    )
}
lowD = \markup \center-align \pad-markup #2 {
    \huge "D"
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three four five six))
        (rh . ())
    )
}
lowEb = \markup \center-align \pad-markup #2 {
    \huge "Eb/D#"
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three four five))
        (rh . (ees))
    )
}
lowE = \markup \center-align \pad-markup #2 {
    \huge "E"
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three four five))
        (rh . ())
    )
}
lowF = \markup \center-align \pad-markup #2 {
    \huge "F"
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three four))
        (rh . ())
    )
}
lowGb = \markup \center-align \pad-markup #2 {
    \huge "F#/Gb"
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three five))
        (rh . ())
    )
}
lowG = \markup \center-align \pad-markup #2 {
    \huge "G"
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three))
        (rh . ())
    )
}
lowAb = \markup \center-align \pad-markup #2 {
    \huge "G#/Ab"
    \woodwind-diagram #'saxophone #'(
        (lh . (gis))
        (cc . (one two three))
        (rh . ())
    )
}
lowA = \markup \center-align \pad-markup #2 {
    \huge "A"
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two))
        (rh . ())
    )
}


midBb = \markup \center-align \pad-markup #2 {
    \huge "Bb/A#"
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two))
        (rh . (bes))
    )
}
midB = \markup \center-align \pad-markup #2 {
    \huge "B"
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one))
        (rh . ())
    )
}
midC = \markup \center-align \pad-markup #2 {
    \huge "C"
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (two))
        (rh . ())
    )
}
midDb = \markup \center-align \pad-markup #2 {
    \huge "C#/Db"
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . ())
        (rh . ())
    )
}
midD = \markup \center-align \pad-markup #2 {
    \huge "D"
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three four five six))
        (rh . ())
    )
}
midEb = \markup \center-align \pad-markup #2 {
    \huge "Eb/D#"
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three four five))
        (rh . (ees))
    )
}
midE = \markup \center-align \pad-markup #2 {
    \huge "E"
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three four five))
        (rh . ())
    )
}
midF = \markup \center-align \pad-markup #2 {
    \huge "F"
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three four))
        (rh . ())
    )
}
midGb = \markup \center-align \pad-markup #2 {
    \huge "F#/Gb"
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three five))
        (rh . ())
    )
}
midG = \markup \center-align \pad-markup #2 {
    \huge "G"
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three))
        (rh . ())
    )
}
midAb = \markup \center-align \pad-markup #2 {
    \huge "G#/Ab"
    \woodwind-diagram #'saxophone #'(
        (lh . (T gis))
        (cc . (one two three))
        (rh . ())
    )
}
midA = \markup \center-align \pad-markup #2 {
    \huge "A"
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two))
        (rh . ())
    )
}


highBb = \markup \center-align \pad-markup #2 {
    \huge "Bb/A#"
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two))
        (rh . (bes))
    )
}
highB = \markup \center-align \pad-markup #2 {
    \huge "B"
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one))
        (rh . ())
    )
}
highC = \markup \center-align \pad-markup #2 {
    \huge "C"
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (two))
        (rh . ())
    )
}
highDb = \markup \center-align \pad-markup #2 {
    \huge "C#/Db"
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . ())
        (rh . ())
    )
}
highD = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T d))
        (cc . ())
        (rh . ())
    )
}
highEb = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T d ees))
        (cc . ())
        (rh . ())
    )
}
highE = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T d ees))
        (cc . ())
        (rh . (e))
    )
}
highF = \markup \center-align \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T d ees f))
        (cc . (e))
        (rh . ())
    )
}


basicFingerings = \relative c' {
    d1^\lowD | e^\lowE | f^\lowF | g^\lowG | 
    a1^\lowA | \break b^\midB | c^\midC | d^\midD | 
    e1^\midE | f^\midF | \break g^\midG | a^\midA | 
    b^\highB | c^\highC \bar "|."
}
basicAccidentalFingerings = \relative c' {
    ds2^\lowEb ef | fs^\lowGb gs  | af2^\lowAb gs | as2^\midBb bf | \break
    cs2^\midDb df | ds^\midEb ef | fs2^\midGb gf | gs2^\midAb af | \break 
    as2^\highBb bf | cs2^\highDb ds | \break
}
chromaticAccidentalFingerings = \relative c' {

    \include "ly/ily/saxophone-fingerings.ily"    

    d1^\lowD | ds^\lowEb | e^\lowE gs  | f^\lowF | fs^\lowGf | \break
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
blueTraneBreaks = \relative c'' { 
    s8*5 
    s1*3 \break
    s1*4 \break
    s1*4 \break
}
blueTraneNotes = \relative c'' { 
    g8 bf [ d bf c ~ ] ||

    c1 ~ | 4 r8 g8 bf d bf c ~ | 1 ~ | 4 r8 bf8 d f d ef ~ | 
    ef1 ~ | 4 r8 g,8 bf d bf c ~ | 1 ~ | 4 r8 g8 c d c bf ~ | 
    bf1 ~ | 4 r8 g8 bf d bf c ~ 

    c1 ~ | 4 r8 g8 bf d bf c

    c1 ~ | 4 r4 r2 
}
blueTraneFingeringsAlto = \relative c' { 
    s8^\lowE s^\lowG s^\midB s^\lowG s^\lowA || \break
    s1 | s1 | s1 | \break s4 s8 s^\lowG s^\midB s^\midD s^\midB s^\midC |
    s1 | \break s1 | 
    s1 | s1 |
    s1 | s1
}


mrPcStructure = \relative c'' { 
    \key c \minor
    \partial 8*5 s8*5 
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
mrPcNotes = \relative c'' {
    c8 c d d ef ef f f | g4. f8 ef c r bf | c2 bf4. c8 ~ | 4 r r2 | 
    f8 f g g af af bf bf | c4. bf8 af f r ef | c4 bf4. c8 ~ | 4 r ef8 c ef gf | 
    r8 f4. ~ 4. gf8 | r8 f4 ef8 c4 bf | c2 bf4. c8 ~ | 4 r r2 |
}
mrPcFingeringsAlto = \relative c' { 
    s4^\lowA s^\midB s^\midC s^\midD | s4.^\midE s8 s2 | s^\lowA s^\lowG | s1 |
    s4^\midD s^\midE s^\midF s^\midG | s4.^\midA  s8 s2 | s1 | s2 s8^\midC s^\lowA s s^\midEb |
    s8 s2..^\midD | s1 | s1 | s1
}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\book { 
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
    }
    \bookpart {
        \header {
            title = ""
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
    }
    \bookpart {
        \header {
            title = ""
            subtitle = "Equinox"
            composer = \markup { \italic "composed by" "John Coltrane" }
            poet = "Concert"
        }
        \score {
            << 
                \include "ly/ily/score-properties.ily"
                \new ChordNames \transpose c c { 
                    \equinoxChords
                }
                \new Staff \transpose c c {
                    \include "ly/ily/staff-properties.ily"
                    <<
                        \equinoxStructure 
                        \equinoxNotes
                        \equinoxBreaks
                    >>
                }
            >>
        }
    }
    \bookpart {
        \header {
            title = ""
            subtitle = "Equinox"
            composer = \markup { \italic "composed by" "John Coltrane" }
            poet = "Eb Alto Saxophone"
        }
        \score {
            << 
                \include "ly/ily/score-properties.ily"
                \new ChordNames \transpose ef c { 
                    %\equinoxChords
                }
                \new Staff \transpose ef c {
                    \include "ly/ily/staff-properties.ily"
                    <<
                        \equinoxStructure 
                        \equinoxNotes
                        \equinoxFingeringsAlto
                    >>
                }
            >>
            \layout { 
                indent = 3\cm
            }
        }
    }
    \bookpart {
        \header {
            title = ""
            subtitle = "Blue Trane"
            composer = \markup { \italic "composed by" "John Coltrane" }
            poet = "Concert"
        }
        \score {
            << 
                \include "ly/ily/score-properties.ily"
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose c c {
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
        \header {
            title = ""
            subtitle = "Blue Trane"
            composer = \markup { \italic "composed by" "John Coltrane" }
            poet = "Eb Alto Saxophone"
        }
        \score {
            << 
                \include "ly/ily/score-properties.ily"
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose ef c {
                    \include "ly/ily/staff-properties.ily"
                    <<
                        \blueTraneStructure 
                        \blueTraneNotes
                        \blueTraneFingeringsAlto
                    >>
                }
            >>
            \layout { 
                indent = 6\cm
            }
        }
    }

    \bookpart {
        \header {
            title = ""
            subtitle = "Mr. P.C."
            composer = \markup { \italic "composed by" "John Coltrane" }
            poet = "Eb Alto Saxophone"
        }
        \score {
            << 
                \include "ly/ily/score-properties.ily"
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \transpose ef c {
                    \include "ly/ily/staff-properties.ily"
                    <<
                        \mrPcStructure 
                        \mrPcNotes
                        \mrPcFingeringsAlto
                    >>
                }
            >>
            \layout { 
                indent = 6\cm
            }
        }
    }
}