\version "2.24.0"

titleLeft = "Cycling Through The First Interval"
titleRight = "of the Overtone Series"
titleFull = \markup \center-column { 
    \titleLeft
    \titleRight
}
composerName = "E. Alt"
arranger = ""
copyright = ""

%{

rm 01-cycling-through-the-first-interval-of-the-overtone-series*.pdf ; lilypond ly/theory/01-cycling-through-the-first-interval-of-the-overtone-series.ly ; for file in 01-cycling-through-the-first-interval-of-the-overtone-series*.pdf ; do op $file ; done 


rm 01-cycling-through-the-first-interval-of-the-overtone-series*.pdf
lilypond ly/theory/01-cycling-through-the-first-interval-of-the-overtone-series.ly
mv 01-cycling-through-the-first-interval-of-the-overtone-series*.pdf pdf/theory
op pdf/theory/01-cycling-through-the-first-interval-of-the-overtone-series*.pdf 

git add . ; git commit -m"fixing wrong notes" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}

\include "../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../engraving/flaming-libs/flaming-fonts.ily"


\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2024 Elaine Paul Alt" } 
    lastupdated = ""
    title = \markup { \italic \fontsize #1 \bold { \title }  }
    poet = ""
    composer = \markup \italic \composerName
    tagline = ""
    instrumentName = ""
}

\paper {

  top-margin = #14
  right-margin = #17

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


\layout {
    \context {
        \Score
        \omit BarNumber
    }
}


oneFiveOne = \relative c' { c4 g' c,2 }

oneFiveOneUpChromatically = { 
    \transpose c bf, \oneFiveOne
    \transpose c b, \oneFiveOne
    \transpose c c \oneFiveOne
    \transpose c cs \oneFiveOne
    \transpose c d \oneFiveOne
    \transpose c ef \oneFiveOne
    \transpose c e \oneFiveOne
    \transpose c f \oneFiveOne
    \transpose c fs \oneFiveOne
    \transpose c g \oneFiveOne
    \transpose c gs \oneFiveOne
    \transpose c a \oneFiveOne
    \transpose c bf \oneFiveOne
    \bar "|."
}
oneFiveOneDownChromatically = { 
    \transpose c bf \oneFiveOne
    \transpose c a \oneFiveOne
    \transpose c af \oneFiveOne
    \transpose c g \oneFiveOne
    \transpose c gf \oneFiveOne
    \transpose c f \oneFiveOne
    \transpose c e \oneFiveOne
    \transpose c ef \oneFiveOne
    \transpose c d \oneFiveOne
    \transpose c df \oneFiveOne
    \transpose c c \oneFiveOne
    \transpose c b, \oneFiveOne
    \transpose c bf, \oneFiveOne
    \bar "|."
}
oneFiveOneDownChromaticallyForBb = { 
    \transpose c bf \oneFiveOne
    \transpose c a \oneFiveOne
    \transpose c af \oneFiveOne
    \transpose c g \oneFiveOne
    \transpose c gf \oneFiveOne
    \transpose c f \oneFiveOne
    \transpose c ff \oneFiveOne
    \transpose c ef \oneFiveOne
    \transpose c d \oneFiveOne
    \transpose c df \oneFiveOne
    \transpose c c \oneFiveOne
    \transpose c cf \oneFiveOne
    \transpose c bf, \oneFiveOne
    \bar "|."
}
oneFiveOneDownChromaticallyForEb = { 
    \transpose c bf \oneFiveOne
    \transpose c bff \oneFiveOne
    \transpose c af \oneFiveOne
    \transpose c g \oneFiveOne
    \transpose c gf \oneFiveOne
    \transpose c f \oneFiveOne
    \transpose c ff \oneFiveOne
    \transpose c ef \oneFiveOne
    \transpose c d \oneFiveOne
    \transpose c df \oneFiveOne
    \transpose c c \oneFiveOne
    \transpose c cf \oneFiveOne
    \transpose c bf, \oneFiveOne
    \bar "|."
}

oneFiveOneUpFifth = { 
    \transpose c bf, \oneFiveOne
    \transpose c f \oneFiveOne
    \transpose c c \oneFiveOne
    \transpose c g \oneFiveOne
    \transpose c d \oneFiveOne
    \transpose c a, \oneFiveOne
    \transpose c e \oneFiveOne
    \transpose c b, \oneFiveOne
    \transpose c fs \oneFiveOne
    \transpose c cs \oneFiveOne
    \transpose c af, \oneFiveOne
    \transpose c ef \oneFiveOne
    \transpose c bf, \oneFiveOne
    \bar "|."
}
oneFiveOneUpFifthForBb = { 
    \transpose c bf, \oneFiveOne
    \transpose c f \oneFiveOne
    \transpose c c \oneFiveOne
    \transpose c g \oneFiveOne
    \transpose c d \oneFiveOne
    \transpose c a, \oneFiveOne
    \transpose c e \oneFiveOne
    \transpose c b, \oneFiveOne
    \transpose c gf \oneFiveOne
    \transpose c df \oneFiveOne
    \transpose c af, \oneFiveOne
    \transpose c ef \oneFiveOne
    \transpose c bf, \oneFiveOne
    \bar "|."
}

tetrachord = \relative c' { 
    c4 d e | f2 r4
}

tetrachordsUpFourth ={
    \time 3/4
    \transpose c bf, \tetrachord
    \transpose c ef \tetrachord
    \transpose c af, \tetrachord
    \transpose c df \tetrachord \break
    \transpose c fs \tetrachord
    \transpose c b, \tetrachord
    \transpose c e \tetrachord
    \transpose c a, \tetrachord \break
    \transpose c d \tetrachord
    \transpose c g \tetrachord
    \transpose c c \tetrachord
    \transpose c f \tetrachord
    \bar "|."
}
tetrachordsUpFourthForEb ={
    \time 3/4
    \transpose c bf, \tetrachord
    \transpose c ef \tetrachord
    \transpose c af, \tetrachord
    \transpose c df \tetrachord \break
    \transpose c gf \tetrachord
    \transpose c cf \tetrachord
    \transpose c e \tetrachord
    \transpose c a, \tetrachord \break
    \transpose c d \tetrachord
    \transpose c g \tetrachord
    \transpose c c \tetrachord
    \transpose c f \tetrachord
    \bar "|."
}


oneFiveOneWalkup = \relative c' {  
    c4 g' c,8 [ 8 d e ]
}
oneFiveOneWalkupEnharmonic = \relative c' {  
    c4 g' c,8 [ bs8 css dss ]
}
oneFiveOneWalkupFromBelow = \relative c' {  
    c4 g' c,8 [ c,8 d e ]
}
oneFiveOneWalkupFromBelowEnharmonic = \relative c' {  
    c4 g' c,8 [ bs,8 css dss ]
}

finalNote = \relative c' {  
    c2. r4 |
}

oneFiveOneUpFourthViaTetrachord ={
    \time 4/4
    \transpose c bf, \oneFiveOneWalkup
    \transpose c ef \oneFiveOneWalkup
    \transpose c af \oneFiveOneWalkupFromBelow
    \transpose c df \oneFiveOneWalkup \break
    \transpose c fs \oneFiveOneWalkupFromBelow
    \transpose c b, \oneFiveOneWalkup
    \transpose c e \oneFiveOneWalkup
    \transpose c a \oneFiveOneWalkupFromBelow \break
    \transpose c d \oneFiveOneWalkup
    \transpose c g \oneFiveOneWalkupFromBelow
    \transpose c c \oneFiveOneWalkup
    \transpose c f \oneFiveOneWalkupFromBelow
    \transpose c bf, \finalNote
    \bar "|."
}
oneFiveOneUpFourthViaTetrachordForBb = {
    \time 4/4
    \transpose c bf, \oneFiveOneWalkup
    \transpose c ef \oneFiveOneWalkup
    \transpose c af \oneFiveOneWalkupFromBelow
    \transpose c df \oneFiveOneWalkup \break
    \transpose c gf \oneFiveOneWalkupFromBelow
    \transpose c cf \oneFiveOneWalkup
    \transpose c ff \oneFiveOneWalkupEnharmonic
    \transpose c a \oneFiveOneWalkupFromBelow \break
    \transpose c d \oneFiveOneWalkup
    \transpose c g \oneFiveOneWalkupFromBelow
    \transpose c c \oneFiveOneWalkup
    \transpose c f \oneFiveOneWalkupFromBelow
    \transpose c bf, \finalNote
    \bar "|."
}



chromaticallyDownAbove = \relative c' { 
    c4 g'  c,4 ~ 4  g' gf | 
}
chromaticallyDownAboveEnharmonic = \relative c' { 
    c4 g'  c,4 ~ 4  g' fs | 
}
chromaticallyDownBelow = \relative c' { 
    c4 g'  c,4 ~ 4  g gf | 
}
chromaticallyDownBelowEnharmonic = \relative c' { 
    c4 g'   c,4 ~ 4   g fs | 
}
oneFiveOneForThree = \relative c' { c4 g' c,4 ~ 2. }

oneFiveOneChromaticallyDownFromFifth = {
    \time 6/4
    \transpose c bf, \chromaticallyDownAboveEnharmonic
    \transpose c ef \chromaticallyDownBelowEnharmonic
    \transpose c af, \chromaticallyDownAboveEnharmonic
    \transpose c df \chromaticallyDownAboveEnharmonic
    \transpose c fs \chromaticallyDownBelow
    \transpose c b, \chromaticallyDownAbove
    \transpose c e \chromaticallyDownBelow
    \transpose c a, \chromaticallyDownAbove
    \transpose c d \chromaticallyDownAbove
    \transpose c g \chromaticallyDownBelow
    \transpose c c \chromaticallyDownAbove
    \transpose c f \chromaticallyDownBelow
    \transpose c bf, \oneFiveOneForThree
    \bar "|."
}
oneFiveOneChromaticallyDownFromFifthForBb = {
    \time 6/4
    \transpose c bf, \chromaticallyDownAbove
    \transpose c ef \chromaticallyDownBelowEnharmonic
    \transpose c af, \chromaticallyDownAboveEnharmonic
    \transpose c df \chromaticallyDownAboveEnharmonic
    \transpose c gf \chromaticallyDownBelowEnharmonic
    \transpose c b, \chromaticallyDownAbove
    \transpose c e \chromaticallyDownBelow
    \transpose c a, \chromaticallyDownAbove
    \transpose c d \chromaticallyDownAbove
    \transpose c g \chromaticallyDownBelow
    \transpose c c \chromaticallyDownAbove
    \transpose c f \chromaticallyDownBelow
    \transpose c bf, \oneFiveOneForThree
    \bar "|."
}

oneFiveOneDownFifth = { 
    \time 4/4
    \transpose c bf, \oneFiveOne
    \transpose c ef \oneFiveOne
    \transpose c af, \oneFiveOne
    \transpose c df \oneFiveOne
    \transpose c fs \oneFiveOne
    \transpose c b, \oneFiveOne
    \transpose c e \oneFiveOne
    \transpose c a, \oneFiveOne
    \transpose c d \oneFiveOne
    \transpose c g \oneFiveOne
    \transpose c c \oneFiveOne
    \transpose c f \oneFiveOne
    \transpose c bf, \oneFiveOne
    \bar "|."
}
oneFiveOneDownFifthForBb = { 
    \time 4/4
    \transpose c bf, \oneFiveOne
    \transpose c ef \oneFiveOne
    \transpose c af, \oneFiveOne
    \transpose c df \oneFiveOne
    \transpose c gf \oneFiveOne
    \transpose c b, \oneFiveOne
    \transpose c e \oneFiveOne
    \transpose c a, \oneFiveOne
    \transpose c d \oneFiveOne
    \transpose c g \oneFiveOne
    \transpose c c \oneFiveOne
    \transpose c f \oneFiveOne
    \transpose c bf, \oneFiveOne
    \bar "|."
}
oneFiveOneDownFifthForEb = { 
    \time 4/4
    \transpose c bf, \oneFiveOne
    \transpose c ef \oneFiveOne
    \transpose c af, \oneFiveOne
    \transpose c df \oneFiveOne
    \transpose c gf \oneFiveOne
    \transpose c cf \oneFiveOne
    \transpose c e \oneFiveOne
    \transpose c a, \oneFiveOne
    \transpose c d \oneFiveOne
    \transpose c g \oneFiveOne
    \transpose c c \oneFiveOne
    \transpose c f \oneFiveOne
    \transpose c bf, \oneFiveOne
    \bar "|."
}




\layout { 
    indent = 1.25\cm
    short-indent = 1.25\cm
    \context {
        \Score
        \override StaffGrouper.staff-staff-spacing.padding = #0
        \override StaffGrouper.staff-staff-spacing.basic-distance = #0
    }
}

\header {
    subtitle = ""
}

\book {
    \bookOutputSuffix "for-C-bass-clef"
    \header {
        poet = "Trombone"
        instrumentName = \poet
        subtitle = "Chromatically and Cycle of Fifths"
    }
    \score { 
        \new StaffGroup \transpose c c, <<
            \new ChordNames { 
                \set chordChanges = ##t 
                \set chordNameExceptions = #flamingChordExceptions
                \set noChordSymbol = ##f
                % \exampleChords

            }
            \new Staff {
                \clef bass
                \numericTimeSignature

                \autoPageBreaksOff
                \mark "1-5-1 Cycle upward chromatically"
                \oneFiveOneUpChromatically \break

                \mark "1-5-1 Cycle downward chromatically"
                \oneFiveOneDownChromatically \break

                \mark "1-5-1 Cycle upwards by Fifths"
                % Easier, since the next 1 is the note we just played as 5
                \oneFiveOneUpFifth \break

                \mark "1-5-1 Cycle downwards by Fifths, via chromatic walk down from the Fifth"
                \oneFiveOneChromaticallyDownFromFifth \pageBreak

                \mark "Tetrachord Cycle upwards by Fourths"
                % Since starting a 5th down requires more concentration, 
                % first we drill the sequence to learn how to get to the 4th via tetrachord
                \tetrachordsUpFourth \break

                \mark "1-5-1 Cycle of Fifths, via Tetrachord"
                \oneFiveOneUpFourthViaTetrachord \break

                \mark "1-5-1 Cycle of Fifths"
                \oneFiveOneDownFifth \break
            }
        >>
    }
}

\book {
    \bookOutputSuffix "for-Bb"
    \header {
        poet = "Bb Trumpet"
        instrumentName = \poet
    }
    \score { 
        \new StaffGroup \transpose bf, c <<
            \new ChordNames { 
                \set chordChanges = ##t 
                \set chordNameExceptions = #flamingChordExceptions
                \set noChordSymbol = ##f
                % \exampleChords

            }
            \new Staff {
                \numericTimeSignature

                \autoPageBreaksOff
                \mark "1-5-1 Cycle upward chromatically"
                \oneFiveOneUpChromatically \break

                \mark "1-5-1 Cycle downward chromatically"
                \oneFiveOneDownChromaticallyForBb \break

                \mark "1-5-1 Cycle upwards by Fifths"
                % Easier, since the next 1 is the note we just played as 5
                \oneFiveOneUpFifthForBb \break

                \mark "1-5-1 Cycle downwards by Fifths, via chromatic walk down from the Fifth"
                \oneFiveOneChromaticallyDownFromFifthForBb \pageBreak

                \mark "Tetrachord Cycle upwards by Fourths"
                % Since starting a 5th down requires more concentration, 
                % first we drill the sequence to learn how to get to the 4th via tetrachord
                \tetrachordsUpFourth \break

                \mark "1-5-1 Cycle of Fifths, via Tetrachord"
                \oneFiveOneUpFourthViaTetrachordForBb \break

                \mark "1-5-1 Cycle of Fifths"
                \oneFiveOneDownFifthForBb \break
            }
        >>
    }
}

\book {
    \bookOutputSuffix "for-Eb"
    \header {
        poet = "Eb Alto Sax"
        instrumentName = \poet
    }
    \score { 
        \new StaffGroup \transpose ef, c <<
            \new ChordNames { 
                \set chordChanges = ##t 
                \set chordNameExceptions = #flamingChordExceptions
                \set noChordSymbol = ##f
                % \exampleChords

            }
            \new Staff {
                \numericTimeSignature

                \autoPageBreaksOff
                \mark "1-5-1 Cycle upward chromatically"
                \oneFiveOneUpChromatically \break

                \mark "1-5-1 Cycle downward chromatically"
                \oneFiveOneDownChromaticallyForEb \break

                \mark "1-5-1 Cycle upwards by Fifths"
                % Easier, since the next 1 is the note we just played as 5
                \oneFiveOneUpFifthForBb \break

                \mark "1-5-1 Cycle downwards by Fifths, via chromatic walk down from the Fifth"
                \oneFiveOneChromaticallyDownFromFifthForBb \pageBreak

                \mark "Tetrachord Cycle upwards by Fourths"
                % Since starting a 5th down requires more concentration, 
                % first we drill the sequence to learn how to get to the 4th via tetrachord
                \tetrachordsUpFourthForEb \break

                \mark "1-5-1 Cycle of Fifths, via Tetrachord"
                \oneFiveOneUpFourthViaTetrachordForBb \break

                \mark "1-5-1 Cycle of Fifths"
                \oneFiveOneDownFifthForEb \break
            }
        >>
    }
}
