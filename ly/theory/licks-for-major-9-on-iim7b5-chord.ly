\version "2.19.15"
\include "english.ly"

titleLeft = "Licks for Major 9"
titleRight = "on iim7b5 Chord"
title = "Licks for Major 9 on iim7b5 Chord"
composerName = "Elaine Alt"
\include "../scores/flaming-libs/flaming-paper.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
\include "../scores/flaming-libs/flaming-markup.ily"
\include "../scores/flaming-libs/flaming-chords.ily"
 	 

%{

rm licks-for-major-9-on-iim7b5-chord.pdf ; lilypond ly/theory/licks-for-major-9-on-iim7b5-chord.ly ; op licks-for-major-9-on-iim7b5-chord.pdf 


rm licks-for-major-9-on-iim7b5-chord.pdf
lilypond ly/theory/licks-for-major-9-on-iim7b5-chord.ly
mv licks-for-major-9-on-iim7b5-chord.pdf pdf/theory
op pdf/theory/licks-for-major-9-on-iim7b5-chord.pdf 

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


\layout {
    \context {
        \Score
        \omit BarNumber
    }
}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

exampleChords = \chordmode {
    f1:m7 | d:m7.5- | g:m7.5-.9 | c:7.9-
}



exampleSix = \relative c'' { 
    r8 g r f g f4. | af4. g8 af g4. | r8 bf r a bf a4. | c4. df8 bf a g e |
}
exampleSixFixed = \relative c'' { 
    r8 g r f g f4. | af4. g8 af g4. | r8 bf r a bf a4. | c4. df8 a bf fs g |
}
exampleSeven = \relative c'' { 
    r8 c bf [ af ] g f ef c | ef' c d bf  af g f d | 
    f'8 ef df? c bf a g ef | e? g bf c df a4. | 
}
exampleSevenFixed = \relative c'' { 
    r8 c bf [ af ] g f ef c | ef' c d bf  af g f d | 
    f'8 ef df? c bf a g f | e g bf c ef? df4. | 
}
exampleOne = \relative c'' { 
    c4 af f ef8 af ~ | 4 f d c8 g' ~ | 4 a bf a8 df | r df c2. |
}
exampleEight = \relative c' { 
    ef8 af r d r df r c | r f, r c' r bf r a ~ | 4 df,?8 g r f r e | r bf' a [ bf ] c2 | 
}
exampleEightFixed = \relative c' { 
    ef8 af r d r df r c | r f, r bf r gs r a | 
    r df,? r f r ef r g ~ | g8. gf32 f e2 r4 |
}
exampleNine = \relative c' { 
    f8 g af c d4 c | d c8 d r c af4 | ef'4 df8 ef r df a4 | e'4 ef8 e r ef bf4 | 
}
exampleNineFixed = \relative c' { 
    f8 g af c d4 c | d c8 d r c af4 | ef'4 df8 ef r df a4 ~ | 2 bf | 
}
exampleNineFixedAgain = \relative c' { 
    f8 g af c d4 c | d c8 d r c af4 | ef'4 df8 ef r df a4 | fs'4 e8 fs r fs c4 |  
}
exampleTwo = \relative c'' { 
    f8 af,4. bf4 b | c ef8 d ~ 4 g | f8 a,4. bf4 b | c df8 bf ~ 4 r |      
}
exampleThree = \relative c'' { 
    r8 c g4 bf f | af d,8 c' ~ 8 b bf a ~ | 4 bf, g' f | e8 g bf df ~ 4 r |  
}
exampleFour = \relative c'' { 
    af4. f8 g f r af | r c, cs [ d ~ ] 4 r | 
    a'4. f8 g f r a | r df,? ef [ e ~ ] 4 r |  
}
exampleFive = \relative c' { 
    r4 f8 8 g8 8 af bf | c2. r4 | 
    r4 g8 8 a8 8 bf c | df2. r4    
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

 % No Accidentals
\score { 
    \new StaffGroup <<
        \new ChordNames { 
            \set chordChanges = ##t 
            \set chordNameExceptions = #flamingChordExceptions
            \set noChordSymbol = ##f
            \exampleChords
            \exampleChords
            \exampleChords
            \exampleChords
            \exampleChords
            \exampleChords
            \exampleChords
            \exampleChords
            \exampleChords
            \exampleChords

        }
        \new Staff {
            \numericTimeSignature
            \key f \minor
            %\mark "1. Worked First Time"
            \mark "1."
            \exampleOne \break
            \mark "2."
            \exampleTwo \break
            \mark "3."
            \exampleThree \break
            \mark "4."
            \exampleFour \break
            \mark "5."
            \exampleFive \break
            \mark "6."
            \exampleSixFixed \break
            \mark "7."
            \exampleSevenFixed \break
            \mark "8."
            \exampleEightFixed \break
            \mark "9."
            \exampleNineFixed \break
            \mark "9. Another Way"
            \exampleNineFixedAgain \break
        }
    >>
}
