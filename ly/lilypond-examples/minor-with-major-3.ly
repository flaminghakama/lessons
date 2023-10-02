\version "2.22.2"
\include "english.ly"

titleLeft = "Exercises for Major 9"
titleRight = "on minor ii7b5"
title = "Exercises for Major 9 on minor ii7b5"
composerName = "E. Alt"


\include "../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../scores/flaming-libs/flaming-dynamics.ily"


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
    f'8 ef df? c bf a g f | e g bf c ef df4. | 
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
            \exampleChords

            \exampleChords
            \exampleChords

        }
        \new Staff {
            \numericTimeSignature
            \key f \minor
            \mark "1. Worked First Time"
            \exampleOne \break
            \mark "2."
            \exampleTwo \break
            \mark "3."
            \exampleThree \break
            \mark "4."
            \exampleFour \break
            \mark "5."
            \exampleFive \break

            \mark "6. Did Not Work"
            \exampleSix \break
            \mark "6. Fixed"
            \exampleSixFixed \break

            \mark "7. Did Not Work"
            \exampleSeven \break
            \mark "7. Fixed"
            \exampleSevenFixed \break
            
            \mark "8. Did Not Work"
            \exampleEight \break
            \mark "8. Fixed"
            \exampleEightFixed \break
            
            \mark "9. Did Not Work"
            \exampleNine \break
            \mark "9. Fixed"
            \exampleNineFixed \break
        }
    >>
}
