\version "2.24.0"
\include "english.ly"

titleLeft = "Bass Clarinet"
titleRight = "Fingering Chart"
titleFull = "Bass Clarinet Fingering Chart"
composerName = "Elaine Alt"
arranger = ""
copyright = \markup \center-column { " "  \tiny "copyright © 2026 Elaine Paul" } 

\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

%{

killPreview ; rm fingering-chart-bass-clarinet*.pdf ; lilypond ly/exercises/clarinet/fingering-chart-bass-clarinet.ly ; op fingering-chart-bass-clarinet.pdf 

rm fingering-chart-bass-clarinet*.pdf
lilypond ly/exercises/clarinet/fingering-chart-bass-clarinet.ly
mv fingering-chart-bass-clarinet.pdf pdf/exercises/clarinet
op pdf/exercises/clarinet/fingering-chart-bass-clarinet.pdf

./bin/createIndexes.sh
git add . ; git commit -m"aquarium" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl



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
%{ 

We need to add these keys:
left hand low Ab 
left hand low D 
right hand low D
right hand low Db
right hand low C

#(print-keys-verbose 'bass-clarinet)

lh
   possibilities for thumb:
      (thumb thumbT)
   possibilities for R:
      (R RT)
   possibilities for a:
      (a aT)
   possibilities for gis:
      (gis gisT)
   possibilities for ees:
      (ees eesT)
   possibilities for cis:
      (cis cisT)
   possibilities for f:
      (f fT)
   possibilities for e:
      (e eT)
   possibilities for fis:
      (fis fisT)

cc
   possibilities for one:
      (one oneT one1qT oneT1q one1q one1qT1h one1hT1q one1qT3q one3qT1q one1qTF oneFT1q one1hT oneT1h one1h one1hT3q one3qT1h one1hTF oneFT1h one3qT oneT3q one3q one3qTF oneFT3q oneFT oneF)
   possibilities for two:
      (two twoT two1qT twoT1q two1q two1qT1h two1hT1q two1qT3q two3qT1q two1qTF twoFT1q two1hT twoT1h two1h two1hT3q two3qT1h two1hTF twoFT1h two3qT twoT3q two3q two3qTF twoFT3q twoFT twoF)
   possibilities for three:
      (three threeT three1qT threeT1q three1q three1qT1h three1hT1q three1qT3q three3qT1q three1qTF threeFT1q three1hT threeT1h three1h three1hT3q three3qT1h three1hTF threeFT1h three3qT threeT3q three3q three3qTF threeFT3q threeFT threeF)
   possibilities for four:
      (four fourT four1qT fourT1q four1q four1qT1h four1hT1q four1qT3q four3qT1q four1qTF fourFT1q four1hT fourT1h four1h four1hT3q four3qT1h four1hTF fourFT1h four3qT fourT3q four3q four3qTF fourFT3q fourFT fourF)
   possibilities for five:
      (five fiveT five1qT fiveT1q five1q five1qT1h five1hT1q five1qT3q five3qT1q five1qTF fiveFT1q five1hT fiveT1h five1h five1hT3q five3qT1h five1hTF fiveFT1h five3qT fiveT3q five3q five3qTF fiveFT3q fiveFT fiveF)
   possibilities for six:
      (six sixT six1qT sixT1q six1q six1qT1h six1hT1q six1qT3q six3qT1q six1qTF sixFT1q six1hT sixT1h six1h six1hT3q six3qT1h six1hTF sixFT1h six3qT sixT3q six3q six3qTF sixFT3q sixFT sixF)
   possibilities for h:
      (h hT h1qT hT1q h1q h1qT1h h1hT1q h1qT3q h3qT1q h1qTF hFT1q h1hT hT1h h1h h1hT3q h3qT1h h1hTF hFT1h h3qT hT3q h3q h3qTF hFT3q hFT hF)


rh
   possibilities for one:
      (one oneT)
   possibilities for two:
      (two twoT)
   possibilities for three:
      (three threeT)
   possibilities for four:
      (four fourT)
   possibilities for b:
      (b bT)
   possibilities for fis:
      (fis fisT)
   possibilities for gis:
      (gis gisT)
   possibilities for e:
      (e eT)
   possibilities for f:
      (f fT)
   possibilities for ees:
      (ees eesT)
%}


highB = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one1h))
            (rh . ())
        )
        \huge " "
    }
}

highC = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . ())
            (rh . ())
        )
        \huge " "
    }
}

highDb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one1h two three four five))
            (rh . ())
        )
        \huge " "
    }
}

highD = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one1h two three four))
            (rh . (gis))
        )
        \huge " "
    }
}

highEb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one1h two three four))
            (rh . (gis))
        )
        \huge " "
    }
}

highE = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one1h two three))
            (rh . (gis))
        )
        \huge " "
    }
}

highF = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one1h two three four))
            (rh . (gis))
        )
        \huge " "
    }
}

highGb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (two))
            (rh . ())
        )
        \huge " "
    }
}

highG = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one1h))
            (rh . ())
        )
        \huge " "
    }
}

highAb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (four))
            (rh . ())
        )
        \huge " "
    }
}

highA = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (two three))
            (rh . ())
        )
        \huge " "
    }
}

highBb = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (two three four five six))
            (rh . ())
        )
        \huge " "
    }
}

doubleHighB = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one1h four))
            (rh . ())
        )
        \huge " "
    }
}

doubleHighC = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one1h))
            (rh . ())
        )
        \huge " "
    }
}

lowG = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge " "
    }
}

lowAbLeft = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . (gis))
        )
        \huge " "
    }
}

lowAbRight = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . (gis))
        )
        \huge " "
    }
}

lowGbLeft = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb fis))
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge " "
    }
}

lowGbRight = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . (fis))
        )
        \huge " "
    }
}

lowFLeft= \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb f))
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge " "
    }
}

lowFRight= \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . (f))
        )
        " "
        \huge " "
    }
}

lowELeft = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb e))
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge " "
    }
}

lowERight = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . (e))
        )
        " "
        \huge " "
    }
}

lowEbRight = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . (ees))
        )
        \huge " "
    }
}

%{

lowEbLeft = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb ees))
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge " "
    }
}

%{
lowDLeft = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb e))
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge " "
    }
}

lowDRight = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . (e))
        )
        \huge " "
    }
}

lowDbLeft = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb e))
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge " "
    }
}

lowDbRight = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb))
            (cc . (one two three four five six))
            (rh . (e))
        )
        \huge " "
    }
}

lowCLeft = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'bass-clarinet #'(
            (lh . (thumb e))
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge " "
    }
}

%}

bassNotes = \relative c' { 
    % <>^\lowAbLeft af2 
    % <>^\lowAbRight 2
    
    % <>^\lowG g1

    <>^\lowGbLeft gf2
    <>^\lowGbRight 2

    <>^\lowFLeft f2
    <>^\lowFRight 2
    
    <>^\lowELeft e2
    <>^\lowERight 2
    
    <>^\lowEbRight ef1

    % <>^\lowEbLeft ef2
    % <>^\lowEbRight 2
    
    % <>^\lowDLeft d2
    % <>^\lowDRight 2
    
    % <>^\lowDbLeft df2
    % <>^\lowDbRight 2
    
    % <>^\lowC c1
}
altissimoNotes = \relative c''' { 

    <>^\highB b1
    <>^\highC c1
    <>^\highDb df1 
    <>^\highD d1 
    <>^\highEb ef1 
    <>^\highE e1 
    <>^\highF f1
    <>^\highGb gf1
    <>^\highG g1
    <>^\highAb af1
    <>^\highA a1
    <>^\highBb bf1
    <>^\doubleHighB b1
    <>^\doubleHighC c1
}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\book { 

    \header {
        subtitle = "Bass Notes"
        composer = \markup { \italic "" }
        piece = " "
    }
    \bookpart {
        \header {
        }
        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \bassNotes
                }
            >>
            \header {
                piece = ""
            }
        }

        \score {
            << 
                \override Score.RehearsalMark.self-alignment-X = #LEFT
                \override Score.RehearsalMark.extra-offset = #'( -3 . 2 )
                \new Staff { 
                    \include "ly/ily/staff-properties.ily"
                    \autoPageBreaksOff
                    \altissimoNotes
                }
            >>
            \header {
                piece = ""
            }
        }
    }
}
