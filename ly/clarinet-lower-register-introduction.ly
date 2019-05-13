\version "2.19.15"
\include "english.ly"

titleLeft = "Clarinet Lower"
titleRight = "Register Introduction"
title = "Clarinet Lower Register Introduction"
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
  markup-system-spacing.padding = #0

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #14

  % Spacing in between systems
  %system-system-spacing.basic-distance = #18
  %system-system-spacing.minimum-distance = #15

  page-breaking = #ly:minimal-breaking

  #(define fonts
    (make-pango-font-tree "Hardwood" 
                          "Highlander ITC TT" 
                          "Papyrus"
                           (/ myStaffSize 20)))
}
%BodoniClassicChancery" 
\include "../scores/flaming-libs/flaming-fonts.ily"

\include "ly/ily/clarinet-fingerings.ily"    
\include "ly/ily/layout.ily"

clarTabScale = #0.8

lowDs = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two))
            (rh . ())
        )
        \huge "D#"
    }
}

lowCs = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb cis))
            (cc . (one two three))
            (rh . ())
        )
        \huge "C#"
    }
}

lowG = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge "G"
    }
}

lowA = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five))
            (rh . ())
        )
        \huge "A"
    }
}

lowB = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three five))
            (rh . ())
        )
        \huge "B"
    }
}

lowC = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three))
            (rh . ())
        )
        \huge "C"
    }
}

lowGs = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . (gis))
        )
        " "
        \huge "G#"
    }
}

lowFsLeft = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . (fis))
        )
        " "
        \huge "F#"
    }
}

lowFLeft= \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb f))
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge "F"
    }
}

lowFRight= \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . (f))
        )
        " "
        \huge "F"
    }
}

lowELeft = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb e))
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge "E"
    }
}

lowERight = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . (e))
        )
        " "
        \huge "E"
    }
}




songNotesLong = \relative c' { 
    \key g \major
    \time 2/2

    %\override Voice.TextScript.padding = #2
    %\textLengthOn

    g2.^\lowG a4^\lowA| b2.^\lowB g4^\lowG | b2^\lowB g^\lowG | b1^\lowB | \break
    a2.^\lowA b4^\lowB | c^\lowC c b4*3/2^\lowB a4*1/2^\lowA | s1*1/8 c1*7/8^\lowC ~ | 1 | \break
    b2. c4 | d2. b4 | d2 b | d1 | 
    c2. d4 | e e d c | e1 ~ \noBreak | 1 | 

    d2. g,4 | a b c d | e1 ~ \noBreak | 1 |
    e2. a,4 | b c d e | fs?1 ~ \noBreak | 1 | 
    fs2. b,4 | c d e fs | g1 ~ \noBreak | 2 g4 fs |
    e2 c | fs d | g2 fs4 e | d c b a | 
    g1 ~ | 1 \bar "|." 
}
songNotes = \relative c' { 
    \key g \major
    \time 4/4
    \tag #'ForG { <>^\lowG } 
    \tag #'ForF { <>^\lowFRight } 
    \tag #'ForE { <>^\lowERight } g4. 
        \tag #'ForG { <>^\lowA }
        \tag #'ForE { <>^\lowFsLeft } a8
        \tag #'ForG { <>^\lowB } 
        \tag #'ForA { <>^\lowCs } 
        \tag #'ForE { <>^\lowGs } b4.  
        \tag #'ForF { <>^\lowFLeft } 
        \tag #'ForE { <>^\lowELeft } g8 | b4 g b2 | \tag #'(ForG ForE) { \break }
    a4. b8 c c b a | b1 |  \tag #'(ForF ForA) { \break }  
    b4. c8 d4. b8 | d4 b d2 | 
    c4. d8 e e d c | e1 | \tag #'(ForG ForF ForA) { \break }

    d4. g,8 a b c d | e1 |
    e4. a,8 b c d e | 
        \tag #'ForE { <>^\lowDs } fs1 | \tag #'(ForG ForF ForA ForE) { \break }
    fs4. b,8 c d e fs | g2. g8 fs |
    e4 c fs d | g4 fs8 e d c b a | 
    g1 \bar "|." 
}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\book { 

    \header {
        subtitle = "Do-Re-Mi"
        composer = \markup { \italic "composed by" "Richard Rodgers" }
        piece = " "
    }
    %{
    \bookpart {

        \header {
            subsubtitle = "Long Durations, Fast Tempo"
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \keepWithTag #'(ForG) \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \songNotesLong
                }
            >>
        }
        \header {
            %piece = "G Major"
        }
    }
    %}
    \bookpart {
        \header {
            %subsubtitle = "Normal Durations and Tempo"
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \keepWithTag #'(ForG) \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \songNotes
                }
            >>
            \header {
                piece = "G Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff  \keepWithTag #'(ForF) \transpose g f { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \songNotes
                    \pageBreak
                }
            >>
            \header {
                piece = "F Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \keepWithTag #'(ForA) { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \transpose g a \songNotes
                    \noPageBreak
                }
            >>
            \header {
                piece = "A Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \keepWithTag #'(ForE) { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \transpose g e \songNotes
                }
            >>
            \header {
                piece = "E Major"
            }
        }
    }
}