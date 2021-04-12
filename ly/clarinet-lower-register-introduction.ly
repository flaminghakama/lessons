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


%{

killPreview ; 
rm clarinet-lower-register-introduction.pdf ; 
lilypond ly/clarinet-lower-register-introduction.ly ;
op clarinet-lower-register-introduction.pdf ;

python ~/git/part-format/bookify-4page.py clarinet-lower-register-introduction.pdf clarinet-lower-register-introduction.printable.pdf
mv clarinet-lower-register-introduction.pdf pdf
mv clarinet-lower-register-introduction.printable.pdf pdf/printable
op pdf/printable/clarinet-lower-register-introduction.printable.pdf


%}

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
\include "ly/ily/layout.ily"

\include "ly/notes/clarinet-introduction.ily"

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

lowEb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (thumb))
            (cc . (one))
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

%{
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
%}

songNotes = \relative c' { 
    \key g \major
    \time 4/4
    \tag #'ForG { <>^\lowG }   
    \tag #'ForF { <>^\lowFRight }
    \tag #'ForE {<>^\lowERight }
    \tag #'ForAb {<>^\lowAb }
    \tag #'ForGb {<>^\lowGbLeft }
        g4.
        %\tag #'ForGb {<>^\lowGb }
        \tag #'ForG { <>^\lowA }
        \tag #'ForE { <>^\lowFsLeft } 
        a8        
        \tag #'ForG { <>^\lowB }
        \tag #'ForA { <>^\lowCs }
        \tag #'ForE { <>^\lowGs }
        \tag #'ForFs { <>^\lowAs }
        b4.  
        \tag #'ForF { <>^\lowFLeft }
        \tag #'ForE { <>^\lowELeft } 
        g8 | b4 g b2 | 
        \tag #'(ForG ForE) { \break }

    a4. b8 
        \tag #'ForG { <>^\lowC }
        \tag #'ForF { <>^\lowBb }
        \tag #'ForBb { <>^\lowEb }
        \tag #'ForAb { <>^\lowDb }
        \tag #'ForFs { <>^\lowBAlt }
        \tag #'ForGb { <>^\lowCbAlt }
        c c b a | 
        \tag #'ForFs { <>^\lowB } 
        \tag #'ForGb { <>^\lowCb } 
        c1 | 
        \tag #'(ForF ForA) { \break }

    b4. 
        \tag #'ForFs { <>^\lowBAlt }
        \tag #'ForGb { <>^\lowCbAlt }
        c8 
        \tag #'ForG { <>^\lowD }
        d4. b8 | \noBreak d4 b d2 |
        \tag #'(ForFs ForGb) { \break } 

    \tag #'ForFs { <>^\lowB }
    \tag #'ForGb { <>^\lowCb }
    c4. d8 
        \tag #'ForG { <>^\middleE }
        \tag #'ForA { <>^\middleFs }
        e e d c | 
        \tag #'(ForG) { \break } 
        e1 | 
        \tag #'(ForF ForA ForE) { \break }


    d4. 
        \tag #'ForFs { <>^\lowFsRightToLeft }
        \tag #'ForGb { <>^\lowGbRightToLeft }
        g,8 a b 
        \tag #'ForFs { <>^\lowBAlt }
        \tag #'ForGb { <>^\lowCbAlt }
        c d | 
        \tag #'(ForFs ForGb) { \break }
        e1 |

    e4. 
        \tag #'ForE  \relative c'' { 
            <>^\lowFsRightToLeft 
        }
        a,8 b 
        \tag #'ForFs { <>^\lowBAlt }
        \tag #'ForGb { <>^\lowCbAlt }
        c d e |
        \tag #'(ForG ForA ForE) { \break }
        \tag #'ForG { <>^\middleFs }
        \tag #'ForA { <>^\middleGs }
        \tag #'ForE { <>^\lowDs }
        \tag #'ForFs { <>^\middleEs }
        fs1 | 
        \tag #'(ForF) { \break }

    fs4. b,8 
        \tag #'ForFs { <>^\lowBAlt }
        \tag #'ForGb { <>^\lowCbAlt }
        c d e fs | 
        \tag #'ForG { <>^\middleG }
        \tag #'ForBb { <>^\middleBb }
        \tag #'ForA { <>^\middleA }
        \tag #'ForAb { <>^\middleAb }
        \tag #'ForFs { <>^\middleFsAlt }     
        \tag #'ForGb { <>^\middleGbAlt }     
        g2. g8 fs |

    e4 c fs d | 
        \tag #'ForFs { <>^\middleFsAlt }     
        \tag #'ForGb { <>^\middleGbAlt }     
        g4 fs8 e d 
        \tag #'ForFs { <>^\lowBAlt }
        \tag #'ForGb { <>^\lowCbAlt }
        c b a | 
        
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
                \new Staff \keepWithTag #'(ForBb) { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \transpose g bf \songNotes
                    \pageBreak
                }
            >>
            \header {
                piece = "Bb Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \keepWithTag #'(ForAb) { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \transpose g af \songNotes
                    \noPageBreak
                }
            >>
            \header {
                piece = "Ab Major"
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
                    \pageBreak
                }
            >>
            \header {
                piece = "E Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \with { \magnifyStaff #5/7 } \keepWithTag #'(ForFs) { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \transpose g fs \songNotes
                    \noPageBreak
                }
            >>
            \header {
                piece = "F# Major"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \with { \magnifyStaff #5/7 } \keepWithTag #'(ForGb) { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \transpose g gf \songNotes
                }
            >>
            \header {
                piece = "Gb Major"
            }
        }
    }

    \bookpart {
        \header {
            title = ""
            subtitle = ""
            subsubtitle = "Large intervals"
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \keepWithTag #'(ForG) \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \clarinetOne
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
                \new Staff \keepWithTag #'(ForG) \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \clarinetTwo
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
                \new Staff \keepWithTag #'(ForG) \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \clarinetThree
                }
            >>
            \header {
                piece = "Introducing middle C - same key as low F"
            }
        }
        \pageBreak

       \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \keepWithTag #'(ForG) \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \clarinetFour
                }
            >>
            \header {
                piece = "Slurs over the break"
            }
        }
        \pageBreak
 
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \keepWithTag #'(ForG) \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \clarinetFive
                }
            >>
            \header {
                piece = "Evenness of fingering - Left hand"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark #'extra-offset = #'( -3 . 2 )
                \new Staff \keepWithTag #'(ForG) \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \clarinetSix
                }
            >>
            \header {
                piece = "Evenness of fingering - Right hand"
            }
        }
    }
}