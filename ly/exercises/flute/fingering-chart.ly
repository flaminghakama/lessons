\version "2.24.0"
\include "english.ly"

titleLeft = "Flute"
titleRight = "Fingerings"
titleFull = "Flute Fingerings"
composerName = "Elaine Alt"
arranger = ""
copyright = \markup \center-column { " "  \tiny "copyright © 2024 Elaine Paul" } 

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

%{
killPreview ; rm fingering-chart*.pdf ; lilypond ly/exercises/flute/fingering-chart.ly ; op fingering-chart.pdf 

rm fingering-chart*.pdf
lilypond ly/exercises/flute/fingering-chart.ly
mv fingering-chart.pdf pdf/exercises/flute
op pdf/exercises/flute/fingering-chart.pdf

./bin/createIndexes.sh
git add . ; git commit -m"adding flute fingerings" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl




cc
   possibilities for one:
      (one oneT oneRT oneTR oneR oneRT1q one1qTR oneRT1h one1hTR oneRT3q one3qTR oneRTF oneFTR one1qT oneT1q one1q one1qT1h one1hT1q one1qT3q one3qT1q one1qTF oneFT1q one1hT oneT1h one1h one1hT3q one3qT1h one1hTF oneFT1h one3qT oneT3q one3q one3qTF oneFT3q oneFT oneF)
   possibilities for two:
      (two twoT twoRT twoTR twoR twoRT1q two1qTR twoRT1h two1hTR twoRT3q two3qTR twoRTF twoFTR two1qT twoT1q two1q two1qT1h two1hT1q two1qT3q two3qT1q two1qTF twoFT1q two1hT twoT1h two1h two1hT3q two3qT1h two1hTF twoFT1h two3qT twoT3q two3q two3qTF twoFT3q twoFT twoF)
   possibilities for three:
      (three threeT threeRT threeTR threeR threeRT1q three1qTR threeRT1h three1hTR threeRT3q three3qTR threeRTF threeFTR three1qT threeT1q three1q three1qT1h three1hT1q three1qT3q three3qT1q three1qTF threeFT1q three1hT threeT1h three1h three1hT3q three3qT1h three1hTF threeFT1h three3qT threeT3q three3q three3qTF threeFT3q threeFT threeF)
   possibilities for four:
      (four fourT fourRT fourTR fourR fourRT1q four1qTR fourRT1h four1hTR fourRT3q four3qTR fourRTF fourFTR four1qT fourT1q four1q four1qT1h four1hT1q four1qT3q four3qT1q four1qTF fourFT1q four1hT fourT1h four1h four1hT3q four3qT1h four1hTF fourFT1h four3qT fourT3q four3q four3qTF fourFT3q fourFT fourF)
   possibilities for five:
      (five fiveT fiveRT fiveTR fiveR fiveRT1q five1qTR fiveRT1h five1hTR fiveRT3q five3qTR fiveRTF fiveFTR five1qT fiveT1q five1q five1qT1h five1hT1q five1qT3q five3qT1q five1qTF fiveFT1q five1hT fiveT1h five1h five1hT3q five3qT1h five1hTF fiveFT1h five3qT fiveT3q five3q five3qTF fiveFT3q fiveFT fiveF)
   possibilities for six:
      (six sixT sixRT sixTR sixR sixRT1q six1qTR sixRT1h six1hTR sixRT3q six3qTR sixRTF sixFTR six1qT sixT1q six1q six1qT1h six1hT1q six1qT3q six3qT1q six1qTF sixFT1q six1hT sixT1h six1h six1hT3q six3qT1h six1hTF sixFT1h six3qT sixT3q six3q six3qTF sixFT3q sixFT sixF)
lh
   possibilities for bes:
      (bes besT)
   possibilities for b:
      (b bT)
   possibilities for gis:
      (gis gisT)
rh
   possibilities for bes:
      (bes besT)
   possibilities for d:
      (d dT)
   possibilities for dis:
      (dis disT)
   possibilities for ees:
      (ees eesT)
   possibilities for cis:
      (cis cisT)
   possibilities for c:
      (c cT)
   possibilities for gz:
      (gz gzT)


%}


\header {
    source = ""
    style = ""
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


\layout { 
    \context {
        \Score {
            \override StaffGrouper.staff-staff-spacing =
                #'((minimum-distance . 10))
        }
    }
}

\header { 
    instrumentName = "Flute"
}


\include "ly/notes/clarinet-introduction.ily"

clarTabScale = #0.8

highC = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (gis))
            (cc . (one two three four))
            (rh . (gz))
        )
        \huge " C"
    }
}


      % bes
      % d
      % dis


highB = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one three))
            (rh . (dis ees))
        )
        \huge " B"
    } 
}

highBb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (four))
            (rh . (d ees))
        )
        \huge "Bb"
    }
}

highA = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (two four))
            (rh . (ees))
        )
        \huge " A"
    }
}

highGs = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (gis))
            (cc . (two three))
            (rh . (ees))
        )
        \huge "G#"
    }
}

highG = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . ())
            (cc . (one two three))
            (rh . (ees))
        )
        \huge " G"
    }
}

highFs = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one three six))
            (rh . (ees))
        )
        \huge "F#"
    }
}

highF = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one three four))
            (rh . (ees))
        )
        \huge " F"
    }
}

highE = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one two four five))
            (rh . (ees))
        )
        \huge " E"
    }
}

highEb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b gis))
            (cc . (one two three four five six))
            (rh . (ees))
        )
        \huge "Eb"
    }
}

highD = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (two three))
            (rh . (ees))
        )
        \huge " D"
    }
}

middleD = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (two three four five six))
            (rh . ())
        )
        \huge " D"
    }
}

middleCs = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . ())
            (cc . ())
            (rh . (ees))
        )
        \huge "C#"
    }
}

middleC = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . ())
            (cc . (one))
            (rh . (ees))
        )
        \huge " C"
    }
}

middleB = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one))
            (rh . (ees))
        )
        \huge " B"
    }
}


lowBb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one four))
            (rh . (ees))
        )
        \huge "Bb"
    }
}

lowA = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one two))
            (rh . (ees))
        )
        \huge " A"
    }
}

lowGs = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b gis))
            (cc . (one two three))
            (rh . (ees))
        )
        \huge "G#"
    }
}

lowG = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one two three))
            (rh . (ees))
        )
        \huge " G"
    }
}

lowFs = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one two three six))
            (rh . (ees))
        )
        \huge "F#"
    }
}

lowF = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one two three four))
            (rh . (ees))
        )
        \huge " F"
    }
}

lowE = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one two three four five))
            (rh . (ees))
        )
        \huge " E"
    }
}

lowEb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one two three four five six))
            (rh . (ees))
        )
        \huge "Eb"
    }
}

lowD = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge " D"
    }
}

lowCs = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one two three four five six))
            (rh . (cis))
        )
        \huge "C#"
    }
}

lowC = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one two three four five six))
            (rh . (cis c))
        )
        \huge " C"
    }
}

lowB = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . 1) \override #'(size . 0.6) \woodwind-diagram #'flute #'(
            (lh . (b))
            (cc . (one two three four five six))
            (rh . (cis c gz))
        )
        \huge " B"
    }
}


lowerRegister = \relative c' { 
    \key c \major
    \time 4/4
    <>^\lowB b1 |
    <>^\lowC c1 |
    <>^\lowCs cs2 df |
    <>^\lowD d1 |

}

middleRegister = \relative c'' { 
    \stemDown
    <>^\middleD d1 |
    <>^\lowEb <ds, ds'>2 <ef ef'> |
    <>^\lowE <e e'>1 | 
    <>^\lowF <f f'>1 |
    <>^\lowFs <fs fs'>2 <gf gf'> |
    <>^\lowG <g g'>1 |
    \break
    <>^\lowGs <gs gs'>2 <af af'> |
    <>^\lowA <a a'>1 |
    <>^\lowBb <bf bf'>2 <as as'> |
    <>^\middleB <b b'>1 |
    <>^\middleC <c c'>1 |
    <>^\middleCs <cs cs'>2 <df df'> |
}

upperRegister = \relative c''' { 
    <>^\highD d1 |
    <>^\highEb ef2 ds |
    <>^\highE e1 |
    <>^\highF f1 |
    <>^\highFs gf2 fs |
    <>^\highG g1 |
    \break 
    <>^\highGs af2 gs |
    <>^\highA a1 |
    <>^\highBb bf2 as |
    <>^\highB b1 |
    <>^\highC c1 |
    \bar "|."
}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\book { 

    \header {
        subtitle = ""
        composer = ""
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
                    \lowerRegister
                    \noPageBreak
                }
            >>
            \header {
                piece = "Lower Register"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff  \keepWithTag #'(ForF) \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \middleRegister
                    \noPageBreak
                }
            >>
            \header {
                piece = "Middle Register"
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff  \keepWithTag #'(ForF) \transpose g g { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \upperRegister
                }
            >>
            \header {
                piece = "Upper Register"
            }
        }
    }
}