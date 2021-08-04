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

lowBb = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (low-bes))
        (cc . (one two three four five six))
        (rh . (c))
    )
}
lowB = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (b))
        (cc . (one two three four five six))
        (rh . (c))
    )
}
lowC = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three four five six))
        (rh . (c))
    )
}
lowDb = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (cis))
        (cc . (one two three four five six))
        (rh . (c))
    )
}
lowD = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three four five six))
        (rh . ())
    )
    \huge "D"
}
lowEb = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three four five))
        (rh . (ees))
    )
    \huge "Eb/D#"
}
lowE = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three four five))
        (rh . ())
    )
    \huge "E"
}
lowF = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three four))
        (rh . ())
    )
    \huge "F"
}
lowGb = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three five))
        (rh . ())
    )
    \huge "F#/Gb"
}
lowG = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two three))
        (rh . ())
    )
    \huge "G"
}
lowAb = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (gis))
        (cc . (one two three))
        (rh . ())
    )
    \huge "G#/Ab"
}
lowA = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two))
        (rh . ())
    )
    \huge "A"
}


midBb = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one two))
        (rh . (bes))
    )
    \huge "Bb/A#"
}
midB = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (one))
        (rh . ())
    )
    \huge "B"
}
midC = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . (two))
        (rh . ())
    )
    \huge "C"
}
midDb = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . ())
        (cc . ())
        (rh . ())
    )
    \huge "C#/Db"
}
midD = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three four five six))
        (rh . ())
    )
    \huge "D"
}
midEb = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three four five))
        (rh . (ees))
    )
    \huge "Eb"
}
midE = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three four five))
        (rh . ())
    )
    \huge "E"
}
midF = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three four))
        (rh . ())
    )
    \huge "F"
}
midGb = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three five))
        (rh . ())
    )
    \huge "F#/Gb"
}
midG = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two three))
        (rh . ())
    )
    \huge "G"
}
midAb = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T gis))
        (cc . (one two three))
        (rh . ())
    )
    \huge "G#/Ab"
}
midA = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two))
        (rh . ())
    )
    \huge "A"
}


highBb = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one two))
        (rh . (bes))
    )
    \huge "Bb/A#"
}
highB = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (one))
        (rh . ())
    )
    \huge "B"
}
highC = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . (two))
        (rh . ())
    )
    \huge "C"
}
highDb = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T))
        (cc . ())
        (rh . ())
    )
    \huge "C#/Db"
}
highD = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T d))
        (cc . ())
        (rh . ())
    )
}
highEb = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T d ees))
        (cc . ())
        (rh . ())
    )
}
highE = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T d ees))
        (cc . ())
        (rh . (e))
    )
}
highF = \markup \translate #'(-2 . 0) \center-column \pad-markup #2 {
    \woodwind-diagram #'saxophone #'(
        (lh . (T d ees f))
        (cc . (e))
        (rh . ())
    )
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
mrPcNotes = \relative c'' {
    c8 c d d ef ef f f | g4. f8 ef c r bf | c2 bf4. c8 ~ | 4 r r2 |
    f8 f g g af af bf bf | c4. bf8 af f r ef | c2 bf4. c8 ~ | 4 r ef8 c ef gf | 
    r8 f4. ~ 4. gf8 | r8 f4 ef8 c4 bf | c2 bf4. c8 ~ | 4 r r2 |
}
mrPcFingeringsAlto = \relative c' { 
    s4^\lowA s^\midB s^\midC s^\midD | s4.^\midE s8 s2  \break | s^\lowA s^\lowG | s1 | \break
    s4^\midD s^\midE s^\midF s^\midG | s4.^\midA  s8 s2 | s1 | \break s2 s8^\midC s^\lowA s s^\midEb | \break
    s1 | s1 | s1 | s1
}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clarTabScale = #0.5

\book { 
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
                indent = 2\cm
            }
        }
    }
}