\version "2.19.15"
\include "english.ly"

titleLeft = "Arpeggio Patterns"
titleRight = "for 'All The Things' Changes"
title = "Arpeggio Patterns for 'All The Things' Changes"
composerName = "Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
 	 

%{

rm arpeggio-patterns-for-all-the-things.pdf ; lilypond ly/theory/arpeggio-patterns-for-all-the-things.ly ; for file in arpeggio-patterns-for-all-the-things* ; do op $file ; done 


rm arpeggio-patterns-for-all-the-things*.pdf
lilypond ly/theory/arpeggio-patterns-for-all-the-things.ly
mv arpeggio-patterns-for-all-the-things*.pdf pdf/theory
for file in pdf/theory/arpeggio-patterns-for-all-the-things*.pdf ; do op $file ; done  

%}


\header {
    source = ""
    style = ""
    copyright = \markup { \tiny "copyright © 2023 Elaine Paul Alt" } 
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
  markup-system-spacing.padding = #4

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #14

  % Spacing in between systems
  system-system-spacing.basic-distance = #0
  system-system-spacing.minimum-distance = #0

  page-breaking = #ly:minimal-breaking

  #(define fonts
    (make-pango-font-tree "Hardwood" 
                          "Highlander ITC TT" 
                          "Papyrus"
                           (/ myStaffSize 20)))
}
%BodoniClassicChancery" 
\include "../scores/flaming-libs/flaming-fonts.ily"


\layout {
    \context {
        \Score
        \omit BarNumber
    }
}

structure = \relative c'' {
    \numericTimeSignature
    \key af \major
    s1*8
    \bar "||"
    s1*8
    \bar "||"
    s1*8
    \bar "||"
    s1*12
    \bar "|."

    s1*8
    \bar "||"
    s1*8
    \bar "||"
    s1*8
    \bar "||"
    s1*12
    \bar "|."
}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exampleChords = \chordmode {
    f1:m7 | bf:m7 | ef:7 | af:maj7 | 
    df1:maj7 | g:7 | c:6 | s |

    c:m7 | f:m7 | bf:7 | ef:7 |  
    af1:maj7 | d:7 | g:6 | s |

    a1:m7 | d:7 | g1:6 | s | 
    fs1:m7 | b:7 | e:maj7 | af:aug7 ||

    f1:m7 | bf:m7 | ef:7 | af:maj7 | 
    df1:maj7 | gf:7 | c:m7.5- | f:7 |
    bf1:m7 | ef:7 | af:6 | s ||

}


patternOneDominant = \relative c'' { 
    g8 bf c e  g e c bf
}
patternOneMinor = \relative c'' { 
    g8 bf c ef  g ef c bf
}
patternOneHalfDiminished = \relative c'' { 
    gf8 bf c ef  gf ef c bf
}
patternOneAugmented = \relative c'' { 
    gs8 bf c e  gs e c bf
}
patternOneMajor = \relative c'' { 
    g8 a c e  g e c a
}
patternOneMajorSecondMeasure = \relative c'' { 
    g2. r4
}

patternTwoDominant = \relative c'' { 
    g8 e' bf g' c, bf' e, c' 
}
patternTwoMinor = \relative c'' { 
    g8 ef' bf g' c, bf' ef, c' 
}
patternTwoHalfDiminished = \relative c'' { 
    gf8 ef' bf gf' c, bf' ef, c' 
}
patternTwoAugmented = \relative c'' { 
    gs8 e' bf gs' c, bf' e, c' 
}
patternTwoMajor = \relative c'' { 
    g8 e' a, g' c, a' e c' 
}
patternTwoMajorSecondMeasure = \relative c''' { 
    g8 e' c a g2 
}

patternOne = {

    \transpose c f \patternOneMinor
    \transpose c bf, \patternOneMinor
    \transpose c ef \patternOneDominant
    \transpose c af, \patternOneMajor
    \transpose c df \patternOneMajor
    \transpose c g \patternOneDominant
    \transpose c c \patternOneMajor
    \transpose c c \patternOneMajorSecondMeasure
    \bar "||" \break

    \transpose c c \patternOneMinor
    \transpose c f \patternOneMinor
    \transpose c bf, \patternOneDominant
    \transpose c ef, \patternOneMajor
    \transpose c af, \patternOneMajor
    \transpose c d \patternOneDominant
    \transpose c g \patternOneMajor
    \transpose c g \patternOneMajorSecondMeasure
    \bar "||" \break

    \transpose c a, \patternOneMinor
    \transpose c d \patternOneDominant
    \transpose c g \patternOneMajor
    \transpose c g \patternOneMajorSecondMeasure
    \transpose c fs, \patternOneMinor
    \transpose c b, \patternOneDominant
    \transpose c e \patternOneMajor
    \transpose c af, \patternOneAugmented
    \bar "||" \break

    \transpose c f, \patternOneMinor
    \transpose c bf, \patternOneMinor
    \transpose c ef, \patternOneDominant
    \transpose c af, \patternOneMajor
    \transpose c df \patternOneMajor
    \transpose c gf, \patternOneDominant
    \transpose c c \patternOneHalfDiminished
    \transpose c f \patternOneDominant
    \transpose c bf, \patternOneMinor
    \transpose c ef \patternOneDominant
    \transpose c af, \patternOneMajor
    \transpose c af, \patternOneMajorSecondMeasure
    \bar "||" \break
}
patternOneForBb = {

    \transpose c f, \patternOneMinor
    \transpose c bf, \patternOneMinor
    \transpose c ef, \patternOneDominant
    \transpose c af, \patternOneMajor
    \transpose c df, \patternOneMajor
    \transpose c g, \patternOneDominant
    \transpose c c \patternOneMajor
    \transpose c c \patternOneMajorSecondMeasure
    \bar "||" \break

    \transpose c c \patternOneMinor
    \transpose c f \patternOneMinor
    \transpose c bf, \patternOneDominant
    \transpose c ef, \patternOneMajor
    \transpose c af, \patternOneMajor
    \transpose c d, \patternOneDominant
    \transpose c g, \patternOneMajor
    \transpose c g, \patternOneMajorSecondMeasure
    \bar "||" \break

    \transpose c a, \patternOneMinor
    \transpose c d \patternOneDominant
    \transpose c g \patternOneMajor
    \transpose c g \patternOneMajorSecondMeasure
    \transpose c fs \patternOneMinor
    \transpose c b, \patternOneDominant
    \transpose c e \patternOneMajor
    \transpose c af, \patternOneAugmented
    \bar "||" \break

    \transpose c f, \patternOneMinor
    \transpose c bf, \patternOneMinor
    \transpose c ef, \patternOneDominant
    \transpose c af, \patternOneMajor
    \transpose c df \patternOneMajor
    \transpose c gf, \patternOneDominant
    \transpose c c \patternOneHalfDiminished
    \transpose c f, \patternOneDominant
    \transpose c bf, \patternOneMinor
    \transpose c ef \patternOneDominant
    \transpose c af, \patternOneMajor
    \transpose c af, \patternOneMajorSecondMeasure
    \bar "||" \break
}
patternOneForEb = {

    \transpose c f \patternOneMinor
    \transpose c bf, \patternOneMinor
    \transpose c ef \patternOneDominant
    \transpose c af, \patternOneMajor
    \transpose c df \patternOneMajor
    \transpose c g \patternOneDominant
    \transpose c c \patternOneMajor
    \transpose c c \patternOneMajorSecondMeasure
    \bar "||" \break

    \transpose c c \patternOneMinor
    \transpose c f \patternOneMinor
    \transpose c bf, \patternOneDominant
    \transpose c ef \patternOneMajor
    \transpose c af \patternOneMajor
    \transpose c d \patternOneDominant
    \transpose c g \patternOneMajor
    \transpose c g \patternOneMajorSecondMeasure
    \bar "||" \break

    \transpose c a, \patternOneMinor
    \transpose c d \patternOneDominant
    \transpose c g, \patternOneMajor
    \transpose c g, \patternOneMajorSecondMeasure
    \transpose c fs, \patternOneMinor
    \transpose c b, \patternOneDominant
    \transpose c e \patternOneMajor
    \transpose c af \patternOneAugmented
    \bar "||" \break

    \transpose c f \patternOneMinor
    \transpose c bf \patternOneMinor
    \transpose c ef \patternOneDominant
    \transpose c af \patternOneMajor
    \transpose c df \patternOneMajor
    \transpose c gf, \patternOneDominant
    \transpose c c \patternOneHalfDiminished
    \transpose c f \patternOneDominant
    \transpose c bf \patternOneMinor
    \transpose c ef \patternOneDominant
    \transpose c af \patternOneMajor
    \transpose c af \patternOneMajorSecondMeasure
    \bar "||" \break
}

patternTwo = {

    \transpose c f, \patternTwoMinor
    \transpose c bf, \patternTwoMinor
    \transpose c ef \patternTwoDominant
    \transpose c af, \patternTwoMajor
    \transpose c df \patternTwoMajor
    \transpose c g, \patternTwoDominant
    \transpose c c \patternTwoMajor
    \transpose c c \patternTwoMajorSecondMeasure
    \bar "||" \break

    \transpose c c \patternTwoMinor
    \transpose c f, \patternTwoMinor
    \transpose c bf, \patternTwoDominant
    \transpose c ef \patternTwoMajor
    \transpose c af, \patternTwoMajor
    \transpose c d \patternTwoDominant
    \transpose c g, \patternTwoMajor
    \transpose c g, \patternTwoMajorSecondMeasure
    \bar "||" \break

    \transpose c a, \patternTwoMinor
    \transpose c d \patternTwoDominant
    \transpose c g, \patternTwoMajor
    \transpose c g, \patternTwoMajorSecondMeasure
    \transpose c fs, \patternTwoMinor
    \transpose c b, \patternTwoDominant
    \transpose c e \patternTwoMajor
    \transpose c af, \patternTwoAugmented
    \bar "||" \break

    \transpose c f, \patternTwoMinor
    \transpose c bf, \patternTwoMinor
    \transpose c ef \patternTwoDominant
    \transpose c af, \patternTwoMajor
    \transpose c df \patternTwoMajor
    \transpose c gf, \patternTwoDominant
    \transpose c c \patternTwoHalfDiminished
    \transpose c f, \patternTwoDominant
    \transpose c bf, \patternTwoMinor
    \transpose c ef, \patternTwoDominant
    \transpose c af, \patternTwoMajor
    \transpose c af, \patternTwoMajorSecondMeasure
    \bar "||" \break
}
patternTwoForBb = {

    \transpose c f, \patternTwoMinor
    \transpose c bf, \patternTwoMinor
    \transpose c ef, \patternTwoDominant
    \transpose c af, \patternTwoMajor
    \transpose c df, \patternTwoMajor
    \transpose c g, \patternTwoDominant
    \transpose c c \patternTwoMajor
    \transpose c c \patternTwoMajorSecondMeasure
    \bar "||" \break

    \transpose c c \patternTwoMinor
    \transpose c f, \patternTwoMinor
    \transpose c bf, \patternTwoDominant
    \transpose c ef \patternTwoMajor
    \transpose c af, \patternTwoMajor
    \transpose c d \patternTwoDominant
    \transpose c g, \patternTwoMajor
    \transpose c g, \patternTwoMajorSecondMeasure
    \bar "||" \break

    \transpose c a, \patternTwoMinor
    \transpose c d, \patternTwoDominant
    \transpose c g, \patternTwoMajor
    \transpose c g, \patternTwoMajorSecondMeasure
    \transpose c fs, \patternTwoMinor
    \transpose c b, \patternTwoDominant
    \transpose c e, \patternTwoMajor
    \transpose c af, \patternTwoAugmented
    \bar "||" \break

    \transpose c f, \patternTwoMinor
    \transpose c bf, \patternTwoMinor
    \transpose c ef \patternTwoDominant
    \transpose c af, \patternTwoMajor
    \transpose c df, \patternTwoMajor
    \transpose c gf, \patternTwoDominant
    \transpose c c \patternTwoHalfDiminished
    \transpose c f, \patternTwoDominant
    \transpose c bf, \patternTwoMinor
    \transpose c ef, \patternTwoDominant
    \transpose c af, \patternTwoMajor
    \transpose c af, \patternTwoMajorSecondMeasure
    \bar "||" \break
}
patternTwoForEb = {

    \transpose c f \patternTwoMinor
    \transpose c bf, \patternTwoMinor
    \transpose c ef \patternTwoDominant
    \transpose c af, \patternTwoMajor
    \transpose c df \patternTwoMajor
    \transpose c g, \patternTwoDominant
    \transpose c c \patternTwoMajor
    \transpose c c \patternTwoMajorSecondMeasure
    \bar "||" \break

    \transpose c c \patternTwoMinor
    \transpose c f \patternTwoMinor
    \transpose c bf, \patternTwoDominant
    \transpose c ef \patternTwoMajor
    \transpose c af, \patternTwoMajor
    \transpose c d \patternTwoDominant
    \transpose c g, \patternTwoMajor
    \transpose c g, \patternTwoMajorSecondMeasure
    \bar "||" \break

    \transpose c a, \patternTwoMinor
    \transpose c d \patternTwoDominant
    \transpose c g, \patternTwoMajor
    \transpose c g, \patternTwoMajorSecondMeasure
    \transpose c fs \patternTwoMinor
    \transpose c b, \patternTwoDominant
    \transpose c e \patternTwoMajor
    \transpose c af \patternTwoAugmented
    \bar "||" \break

    \transpose c f \patternTwoMinor
    \transpose c bf, \patternTwoMinor
    \transpose c ef \patternTwoDominant
    \transpose c af \patternTwoMajor
    \transpose c df \patternTwoMajor
    \transpose c gf, \patternTwoDominant
    \transpose c c \patternTwoHalfDiminished
    \transpose c f \patternTwoDominant
    \transpose c bf, \patternTwoMinor
    \transpose c ef \patternTwoDominant
    \transpose c af, \patternTwoMajor
    \transpose c af, \patternTwoMajorSecondMeasure
    \bar "||" \break
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

\book {
  \bookOutputSuffix "for-C"
    \header {
        poet = "Concert Lead Sheet"
        instrumentName = \poet
    }
    \score { 
        \new StaffGroup <<
            \new ChordNames { 
                \set chordChanges = ##t 
                \set chordNameExceptions = #flamingChordExceptions
                \set noChordSymbol = ##f
                \exampleChords
                \exampleChords
            }
            \new Staff {
                <<
                    \structure 
                    {
                        \autoPageBreaksOff
                        \patternOne
                        \pageBreak
                        \patternTwo
                    }
                >>
            }
        >>
    }
}

\book {
    \bookOutputSuffix "for-Bb"
    \header {
        poet = "Bb Transposition"
        instrumentName = \poet
    }
    \score { 
        \new StaffGroup \transpose bf, c <<
            \new ChordNames { 
                \set chordChanges = ##t 
                \set chordNameExceptions = #flamingChordExceptions
                \set noChordSymbol = ##f
                \exampleChords
                \exampleChords
            }
            \new Staff {
                <<
                    \structure 
                    {
                        \autoPageBreaksOff
                        \patternOneForBb
                        \pageBreak
                        \patternTwoForBb
                    }
                >>
            }
        >>
    }
}

\book {
    \bookOutputSuffix "for-Eb"
    \header {
        poet = "Eb Transposition"
        instrumentName = \poet
    }
    \score { 
        \new StaffGroup \transpose ef c <<
            \new ChordNames { 
                \set chordChanges = ##t 
                \set chordNameExceptions = #flamingChordExceptions
                \set noChordSymbol = ##f
                \exampleChords
                \exampleChords
            }
            \new Staff {
                <<
                    \structure 
                    {
                        \autoPageBreaksOff
                        \patternOneForEb
                        \pageBreak
                        \patternTwoForEb
                    }
                >>
            }
        >>
    }
}