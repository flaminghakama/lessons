\version "2.24.0"
\include "english.ly"

titleLeft = "Clarinet "
titleRight = "Fingerings"
titleFull = "Clarinet Fingerings"
composerName = "Elaine Alt"
arranger = ""
copyright = \markup \center-column { " "  \tiny "copyright © 2024 Elaine Paul" } 

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

%{

killPreview ; rm clarinet-fingerings.pdf ; lilypond ly/exercises/clarinet/clarinet-fingerings.ly ; op clarinet-fingerings.pdf ;

killPreview ; 
rm clarinet-fingerings.pdf ; 
lilypond ly/exercises/clarinet/clarinet-fingerings.ly ; 
mv clarinet-fingerings.pdf pdf/exercises/clarinet
op pdf/exercises/clarinet/clarinet-fingerings.pdf ;

%}

\header {
    source = ""
    style = ""
    copyright = \markup \center-column { " "  \tiny "copyright © 2026 Elaine Paul" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #4 \bold { \titleFull }  }
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

    score-system-spacing.basic-distance = #20    

    page-breaking = #ly:minimal-breaking

    #(define fonts
        (make-pango-font-tree 
            "Hardwood" 
            "Highlander ITC TT" 
            "Papyrus"
            (/ myStaffSize 20)
        )
    )
}

%BodoniClassicChancery" 
\include "ly/ily/layout.ily"



% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\layout { 
    \context {
        \Score {
            \override StaffGrouper.staff-staff-spacing =
                #'((minimum-distance . 10))
        }
    }
}

clarTabScale = #0.8

middleBb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (R a))
            (cc . ())
            (rh . ())
        )
        \huge "Bb"
    }
}

middleA = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (a))
            (cc . ())
            (rh . ())
        )
        \huge " A"
    }
}

middleGs = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (gis))
            (cc . ())
            (rh . ())
        )
        \huge "G#"
    }
}

middleAb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (gis))
            (cc . ())
            (rh . ())
        )
        \huge "Ab"
    }
}

middleG = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . ())
            (cc . ())
            (rh . ())
        )
        \huge " G"
    }
}

middleFs = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . ())
            (cc . (one))
            (rh . ())
        )
        \huge "F#"
    }
}

middleFsAlt = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . ())
            (rh . (three four))
        )
        \huge "F#*"
    }
}

middleGbAlt = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . ())
            (rh . (three four))
        )
        \huge "Gb*"
    }
}

middleEs = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . ())
            (rh . ())
        )
        \huge " E#"
    }
}

middleE = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one))
            (rh . ())
        )
        \huge " E"
    }
}

middleF = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . ())
            (rh . ())
        )
        \huge " F"
    }
}

lowEb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two))
            (rh . (four))
        )
        \huge "Eb"
    }
}

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

lowD = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two))
            (rh . ())
        )
        \huge " D"
    }
}

lowDb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb cis))
            (cc . (one two three))
            (rh . ())
        )
        \huge "Db"
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

lowC = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three))
            (rh . ())
        )
        \huge " C"
    }
}

lowCb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three five))
            (rh . ())
        )
        \huge "Cb"
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
        \huge " B"
    }
}

lowCbAlt = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three four))
            (rh . (b))
        )
        \huge "Cb*"
    }
}

lowBAlt = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three four))
            (rh . (b))
        )
        \huge "B*"
    }
}

lowBb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three four))
            (rh . ())
        )
        \huge "Bb"
    }
}

lowAs = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three four))
            (rh . ())
        )
        \huge "A#"
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
        \huge " A"
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
        \huge " G"
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

lowAb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . (gis))
        )
        " "
        \huge "Ab"
    }
}

lowFsLeft = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb fis))
            (cc . (one two three four five six))
            (rh . ())
        )
        " "
        \huge "F# (L)"
    }
}

lowGbLeft = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb fis))
            (cc . (one two three four five six))
            (rh . ())
        )
        " "
        \huge "Gb (L)"
    }
}

lowFsRight = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . (fis))
        )
        " "
        \huge "F# (R)"
    }
}

lowFsRightToLeft = \markup \center-align \line { 
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \line { 
            \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
                (lh . (thumb))
                (cc . (one two three four five six))
                (rh . (fis))
            )
            "  "
            \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
                (lh . (thumb fis))
                (cc . (one two three four five six))
                (rh . ())
            )
        }
        " "
        \huge "F# (R>L)"
    }
}

lowGbRightToLeft = \markup \center-align \line { 
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \line { 
            \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
                (lh . (thumb))
                (cc . (one two three four five six))
                (rh . (fis))
            )
            "  "
            \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
                (lh . (thumb fis))
                (cc . (one two three four five six))
                (rh . ())
            )
        }
        " "
        \huge "Gb (R>L)"
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
        \huge "F (L)"
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
        \huge "F (R)"
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
        \huge "E (L)"
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
        \huge "E (R)"
    }
}

fingeringsIntroductionLeftHand = \relative c'' { 
    \key c \major
    \time 4/4

    <>^\middleG g1 |
    <>^\middleFs fs1 |
    <>^\middleF f1 |
    <>^\middleE e1 |
    <>^\lowD d1 |
    <>^\lowC c1 |
    \bar "||"
}


fingeringsFoundationsOne = \relative c' {
    <>^\lowC c8 ( <>^\lowD  d c d  c d c d ) | c ( <>^\middleE e ) <>^\middleG g-. e-. <>^\middleF f4 e8-. d-. | \break
    c8 ( d c d  c d c d ) | c4 d8 ( e )  d4 \breath g |

    c,8 ( d c d  c d c d ) | c ( e ) g-. e-.  f4 e8-. d-. | \break 
    g8 ( f ) e-. d-.  c ( <>^\lowB b ) <>^\lowA a-. b-. | c-. <>^\lowG g ( a ) b-.  c2 

    \bar "||"
}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\layout {
    ragged-right = ##f
    ragged-last = ##f
}

\book { 

    \header {
        subtitle = "Clarinet Fingerings"
        piece = " "
    }
    \bookpart {
        \header {
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \keepWithTag #'(ForG) \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \fingeringsIntroductionLeftHand
                }
            >>
            \header {
                piece = \markup \center-column {
                    "Introductory Left Hand"
                    "   "
                }
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff \keepWithTag #'(ForG) \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \fingeringsFoundationsOne
                }
            >>
            \header {
                piece = \markup \center-column {
                    "Finger Fitness Foundations"
                    "   "
                }
            }
        }

    }
}