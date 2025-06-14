\version "2.24.0"

titleLeft = "Ko"
titleRight = "polo"
titleFull = "Kopolo"
composerName = "Orchéstre Baka de Gbiné"
arranger = "renotated by Elaine Paul"
copyright = ""

%{

killPreview ; rm kopolo-*.pdf ; lilypond ly/songs/ac/kopolo.ly ; for file in kopolo-*pdf ; do op $file ; done

killPreview
rm kopolo*pdf
lilypond ly/songs/ac/kopolo.ly 
mv kopolo-*pdf pdf/songs/ac
for file in pdf/songs/ac/kopolo-*pdf ; do op $file ; done  

git add . ; git commit -m"adding alto part" ; git push 
lynx http://altjazz.org/cgi-bin/pullLessons.pl

%}


\include "../../../../engraving/flaming-libs/flaming-standard.ily"
\include "../../../../engraving/flaming-libs/flaming-chords.ily"
\include "../../../../engraving/flaming-libs/flaming-fonts.ily"

\paper {

  top-margin = #2
  right-margin = #14

  % First page spacing after header
  markup-system-spacing.padding = #2

  % Subsequent page spacing after header
  top-system-spacing.minimum-distance = #18

  % Spacing in between systems
  system-system-spacing.basic-distance = #18

  % Space after score, before the next score
  score-system-spacing.minimum-distance = #13

  page-breaking = #ly:minimal-breaking

  ragged-bottom = ##t
  ragged-last-bottom = ##t

  #(define fonts
    (make-pango-font-tree "Marker Felt" 
                          "Highlander ITC TT" 
                          "LilyJAZZText"
                           (/ myStaffSize 20)))
}

\include "ly/ily/layout-songs.ily"

cellStructure = \relative c' {
    \time 5/4
    s1*5/4
    \bar "||"
    \time 4/4
    s1
    \bar "||"
}

cellStructure = \relative c' {
    s1*9/8
    s1*9/8
}



structureLeadSheet = \relative c'' { 

    \key a \major
    
    \once \override Score.MetronomeMark.extra-offset = #'( -7 . 1 )
    \tempo 4=180
    
    \cellStructure
    \cellStructure
    \break 

    \startSectionWithLabel "A" "4X"
    \bar "[|:"
    \cellStructure
    \cellStructure
    \break 

    \startSectionWithLabel "B" "Melody"
    \bar ":|][|:"

    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \break 

    \startSectionWithLabel "C" "Chorus"
    \bar ":|][|:"

    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \break 

    \bar ":|]"
}

structurePart = \relative c'' { 
    \tempo 4=120
    \key a \major

    \partial 8*7
    s2..

    \time 9/8

    \startSection ""
    \startRepeat

    \cellStructure
    \cellStructure
    \break 

    \startSectionWithLabel "A" ""
    \bar ":|][|:"
    \cellStructure
    \cellStructure
    \break 

    \startSection "B"
    \endRepeat

    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \break 

    \startSection "C"

    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \break 

    \startSectionWithLabel "D" ""

    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure

    \pageBreak 

    \startSection "E"

    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \break 
    
    \startSection "F"

    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \break

    \startSection "G"

    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \break 

    \startSectionWithLabel "H" "Open Solo"
    \startRepeat

    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \break 

    \startSection "I"
    \endRepeat  

    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \pageBreak 

    \startSection "J"
    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \break 

    \startSection "K"
    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \break

    \startSection "L"
    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \break 

    \cellStructure
    \cellStructure
    \bar "|."
}


chordsCell = \chordmode { 
    a1*5/4 | e1 |
    d1*5/4 | e1 | 
}

chordsForm = \chordmode { 
    s1*5/4 | s1 |
    s1*5/4 | s1 |

    % "A" "4X"
    \chordsCell

    % "B" "Melody"
    \chordsCell

    % "C" "Chorus"
    \chordsCell
    \chordsCell

}
chordsForFlats = \chordmode { 
    \chordsForm
}

bassANineFour = \relative c'' {
    
    r4 <>^\markup \bold "Bass" a4  cs a8 e' r e,8 ~ | 8 gs8 ~ 8 [ e ~ ] 8 gs e'4 |
    fs,4 d  e d8 d' r8 e,8 ~ | 8 gs8 ~ 8 [ e ~ ] 8 gs e'4 | 
}
bassANineEight = \relative c'' {
    
    r4 <>^\markup \bold "Bass" a8 ~  8 cs4  a8 e' r |
    e,4 gs8 ~  8 e4  gs8 e'4 |
    fs,4 d8 ~  8 e4  d8 d' r8 |
    e,4 gs8 ~  8 e4  gs8 e'4 | 
}

melodyBCommon = \relative c'' {
    % 5/4
    r4   a   cs  e8 [ cs8 ] r cs |
    % 4/4
    b8  4 e8 ~  8 fs  e4  |
    % 5/4
    e8 d8   4  4  e8 d r cs |
}
melodyBNineFour = \relative c'' {
    % 5/4
    r4   a   cs  e8 [ cs8 ] r cs |
    % 4/4
    b8  4 e8 ~  8 fs  e4  |
    % 5/4
    e8 d8   4  4  e8 d r cs |
    % 4/4
    b8  4 8 ~  2 |


    r4   a   cs  e8 [ cs8 ] r cs |
    % 4/4
    b8  4 e8 ~  8 fs  e4  |
    % 5/4
    e8 d8   4  4  e8 d r cs |
    % 4/4
    b8  4 8 ~  4 a8 b |
}
melodyBNineEight = \relative c'' {
    
    r4  a8 ~  8 cs4   e8 cs4 |
    cs8 b8 8 ~ 8 e4  fs8  e4  |
    e8 d8 8 ~  8 4  e8 d r |
    cs8 b8 8 ~  8 4 ~  4. |

    r4  a8 ~  8 cs4   e8 cs4 |
    cs8 b8 8 ~ 8 e4  fs8  e4  |
    e8 d8 8 ~  8 4  e8 d r |
    cs8 b8 8 ~  8 4 ~  8 a b |
}
melodyBZero = \relative c'' {
    \melodyBCommon
    % 4/4
    b8  4 8 ~  2 |
}

melodyBOne = \relative c'' {
    \melodyBZero
    \melodyBCommon
    % 4/4
    b8  4 8 ~  4 a8 b |
    cs1 r4
}

melodyCCell = \relative c'' {
    % 4/4
    r8 b4 8 ~ 8 a8 b4 | 

    % 5/4
    a8 fs ~ 2 r2 |
    % 4/4
    r8 b4  8 ~  8 a8 b4 |

    % 5/4
    cs1 r4 | 
}

melodyCCommon = \relative c'' {
    \melodyCCell
    % 4/4
    r8 b4 8 ~  8 a8 b4 | 

    % 5/4
    a8 fs ~ 2 r | 
    % 4/4
    r8 b4  8 ~  8 a8 b4 |
}
melodyCNineFour = \relative c'' {
    % 5/4
    cs2. r2 | 
    % 4/4
    r8 b4 8 ~ 8 a8 b4 | 

    % 5/4
    a8 fs ~ 2 r|
    % 4/4
    r8 b4  8 ~  8 a8 b4 |

    % 5/4
    cs1 r4 | 
    % 4/4
    r8 b4 8 ~  8 a8 b4 | 

    % 5/4
    a8 fs ~ 2 r | 
    % 4/4
    r8 b4  8 ~  8 a8 b4 |

}

melodyD = \relative c'' { 
    cs4 a2. r4 | R1 |
    R1*5/4 | R1
    <>\xp 
    R1*5/4 | R1
    R1*5/4 | R1
}

trumpetCNineEight = \relative c'' {
    cs4. ~ 4. ~ 4. |
    r4 b8 ~  8 4  a8 b4 | 
    a8 fs4 ~  4.  r | 
    r4 b8 ~  8 4  a8 b4 |

    cs4. ~ 4. ~ 4. |
    r4 b8 ~  8 4  a8 b4 | 
    a8 fs4 ~  4.  r | 
    r4 b8 ~  8 4  a8 b4 |
}

tenorCZero = \relative c'' {
    % 5/4
    cs1 r4 
    \melodyCCommon
}
tenorCOne = \relative c'' {
    \melodyCCommon
    cs2. r2 
}
tenorDZero = \relative c'' {
    \melodyCCell
    R1 | 
    R1*5/4 | r8 e4 8 ~ 8 8 4 |
}
tenorE = \relative c'' {
    d8 e cs2 r | R1 | 
    R1*5/4 | r8 e,4 8 ~ 8 8 4 | 
    d8 e cs2 r | R1 | 
    R1*5/4 | r8 e4 8 ~ 8 8 4 |   
}
tenorCTwo = \relative c' {
    d8 e cs2 r | 
    \melodyCCommon
}
tenorATwo = \relative c'' { 
    cs4 2 \comp #2 | \comp #4 | \comp #5 | \comp #4
    <>\xp R1*5/4 | R1 | <>\xp R1*5/4 | R1 | 
    <>\xp R1*5/4 | R1 | <>\xp R1*5/4 | R1 | 
    <>\xp R1*5/4 | R1 | <>\xp R1*5/4 | R1 | 
}
tenorCThree = \relative c' {
    \melodyCCommon
}
tenorDTwoLick = \relative c' {
    R1*5/4 | r8 e4 8 ~ 8 8 4 | d8 e cs2 r2 | 
}
tenorDTwo = \relative c' {
    cs2. r2 | 
    \transpose c, c \melodyCCell | R1 | 
    \tenorDTwoLick | R1 | 
    \tenorDTwoLick | R1 | 
    \tenorDTwoLick | 
}
tenorCFour = \relative c'' {
    \melodyCCell
    % 4/4
    r8 b4 8 ~  8 a8 b4 | 

    % 5/4
    a8 fs ~ 2 r2 | 
    % 4/4
    r8 b4  8 ~  8 a8 b4 |

    % 5/4
    a2. ~ 2 ~ |  
    % 4/4
    a1 ~ | 

    % 5/4
    a2. ~ 2 ~ |  
    % 4/4
    a1 | 
}


altoDZero = \relative c'' {
    r4  e  gs  cs8 b4  cs8 | b1 |  
    r4  cs4  4  8 b4  cs8  | b1 |
    r4 e4 2 r4 | r8 b4 8 ~ 8 cs ds4 | 
    cs8 ds  cs4  b  e,2 | fs r |  
}
trumpetG = \relative c'' {
    % 5/4
    cs1 r4 |
    % 4/4
    r8 b4 8 ~ 8 a8 b4 | 

    % 5/4
    a8 fs ~ 2 r2 |
    % 4/4
    r8 b4  8 ~  8 a8 b4 |

    % 5/4
    cs1 r4 | 
    % 4/4
    R1 

    % 5/4
    R1*5/4
    % 4/4
    r8 e4  8 ~  8 8  4 |

    % 5/4
    d8 e cs2. r4 |
    % 4/4
    R1 

    % 5/4
    R1*5/4
    % 4/4
    r8 b4  8 ~  8 a8  b4 |
}
trumpetH = \relative c'' {
    % 5/4
    cs2. r2 |
    % 4/4
    R1

    % 5/4
    R1*5/4
    % 4/4
    R1

    % 5/4
    r2 r4 e8 8 r4 | 
    % 4/4
    r4 r8 e8 4 r |

    % 5/4
    r2 r4 e8 8 r4 | 
    % 4/4
    r4 r8 e8 4 r |
}
trumpetK = \relative c'' {
    cs1 r4 
    % 4/4
    r8 b4 8 ~ 8 a8 b4 | 

    % 5/4
    a8 fs ~ 2 r2 |
    % 4/4
    R1|

    % 5/4
    r4 a cs fs8 e4 fs8 |
    % 4/4
    e8 2.. ~ 

    % 5/4
    e8 r  fs4 4 8 e4 fs8 |
    % 4/4
    e1 

    % 5/4
    r4 a4 2 r4 | 
    % 4/4
    r8 e4 8 ~ 8 fs gs4 | 

    % 5/4
    fs8 gs fs4 e a,4. b8 ~ | 
    % 4/4
    2 r

    % 5/4
    r4 a'4 2 r4 | 
    % 4/4
    r8 e4 8 ~ 8 fs gs4 | 

    % 5/4
    fs8 gs fs4 e a,4. b8 ~ | 
    % 4/4
    2 r
}
trumpetL = \relative c''' {
    % 5/4
    r4 a4 2 r4 | 
    % 4/4
    r8 e4 8 ~ 8 fs gs4 | 

    % 5/4
    fs8 gs fs4 e a,4. b8 ~ | 
    % 4/4
    2 r

    % 5/4
    R1*5/4
    % 4/4
    r8 b4 8 ~ 8 a b4 |

    % 5/4
    a8 fs4. ~ 2 r4 | 
    % 4/4
    r8 b4 8 ~ 8 a b4 |

    % 5/4
    cs1 r4 
    % 4/4
    r8 b4 8 ~ 8 a b4 |

    % 5/4
    a8 fs4. ~ 2 r4 | 
    % 4/4
    r8 b4 8 ~ 8 a b4 |

    % 5/4
    e,1 ~ 4 ~ | 
    % 4/4
    e1 ~ |

    % 5/4
    e1 r4 | 
    % 4/4
    R1 | 

}


altoE = \relative c''' {
    r4 e4 2 r4 | r8 b4  8 ~ 8 cs ds4 | 
    cs8 ds  cs4  a  e2 | fs2 r |
    r4 e4 2 r4 | r8 b4  8 ~ 8 cs ds4 | 
    cs8 ds  cs4  a  e2 | fs2 r |      
}
altoATwo = \relative c'' { 
    \comp #5 | \comp #4 | \comp #5 |  \comp #2  r8 b8 4
    r2 r4 b8 8 r4 | r2 r8 b8 4 |
    r2 r4 b8 8 r4 | r2 r8 b8 4 |
    <>\xp R1*5/4 | R1 | <>\xp R1*5/4 | r2 r8 b8 4 |
    r2 r4 b8 8 r4 | r2 r8 b8 4 |
    r2 r4 b8 8 r4 | R1 | 
}
altoBTwo = \relative c'' {
    <>\xp R1*5/4 | R1 | <>\xp R1*5/4 | R1 |
    \transpose ef bf \relative c'' { 
        r4   a   cs  e8 [ cs8 ] r cs |
        % 4/4
        b8  4 e8 ~  8 fs  e4  |
        % 5/4
        e8 d8   4  4  e8 d r cs |
        % 4/4
        b8  4 8 ~  4 a8 b |
    }
}
altoCThree = \relative c''' {
    gs1 r4 | r8 fs4  8 ~ 8 e fs4 | e1 r4 | r8 fs4  8 ~ 8 e fs4 |
    gs1 r4 | r8 fs4  8 ~ 8 e fs4 | e8 cs ~ 2 r2 | R1 | 
}
altoDTwo = \relative c'' {
    r4 e gs cs8 b4 cs8 | b8 2.. |
    r4 cs4 4 8 b4 cs8 | b1 |
    r4 e4 2 r4 | r8 b4  8 ~ 8 cs ds4 | 
    cs8 ds  cs4  b  e,2 | fs2 r | 

    r4 e'4 2 r4 | r8 b4  8 ~ 8 cs ds4 | 
    cs8 ds  cs4  a  e2 | fs2 r | 
    r4 e'4 2 r4 | r8 b4  8 ~ 8 cs ds4 | 
    cs8 ds  cs4  a  e2 | fs2 r | 
}
altoCFour = \relative c'' {
    R1*5/4 | r8 fs4  8 ~ 8 e fs4 | 
    e8 cs2.. r4 | r8 fs4  8 ~ 8 e fs4 | 
    gs1 r4 | r8 fs4  8 ~ 8 e fs4 | 
    e8 cs2.. r4 | r8 fs4  8 ~ 8 e fs4 | 
    b1 ~ 4 ~ | 1 ~ | 
    b1 ~ 4 ~ | 1 | 
}


clicksNineFour = \relative c'' {
    % 5/4
    e4   4  4  8 8  r e |
    % 4/4
    r8 e  r e  r e  e4 |
}
clicksNineEight = \relative c'' {
    e4 8  r e4  8 8  r |
    e4 8  r e4  8 8  r |
}
kickNineFour = \relative c' {
    % 5/4
    r4 d4  r8 4. 4 |
    % 4/4
    r8 4. 4. 8 |
}
kickNineFourForFlats = \relative c' {
    % 5/4
    r4 ds4  r8 4. 4 |
    % 4/4
    r8 ds4. 4. 8 |
}
kickNineEightForFlats = \relative c' {
    r4 ds8   r4 ds8  r4 ds8 |
    r4 ds8   r4 ds8  r4 ds8 |
}

melodyANineEight = \relative c'' {

    r4 a8 ~  8 cs4  e8 cs4  |
    cs8 b8 8 ~ 8 e4  fs8  e4  |

    e8 d8 8 ~  8 4  e8 d4  |
    cs8 b8 8 ~  8 4 ~ 4. |
}
clicksANineEight = \relative c''' {
    % a8 [ r a ]  r [ a r ]  a [ a r ]  |
    % a8 [ r a ]  r [ a r ]  a [ a r ]  |
    % a8 [ r a ]  r [ a r ]  a [ a r ]  |
    % a8 [ r a ]  r [ a r ]  a [ a r ]  |

    a4 a8  r a4  a8 a4  |
    a4 a8  r a4  a8 a4
    a4 a8  r a4  a8 a4  |
    a4 a8  r a4  a8 a4
}
kickANineEight = \relative c' {
    a4\repeatTie 8 ~  4 8 ~  4 8 ~ |
    a4 8 ~  4 8 ~  4 8 ~ |
    a4 8 ~  4 8 ~  4 8 ~ |
    a4 8 ~  4 8 ~  4 8\laissezVibrer|
}

melodyANineEightRealigned = \relative c'' {

    a4 cs8 ~  8 e cs ~  8 8 b | 
    b4 e8 ~  8 fs e  ~ 8 8 d | 

    d4 8 ~  8 e d ~  8 cs b  |
    b8 4  4. r |
}
clicksANineEightRealigned = \relative c''' {
    % a8 [ r a ]  r [ a a ]  r [ a r ] |
    % a8 [ r a ]  r [ a a ]  r [ a r ] |
    % a8 [ r a ]  r [ a a ]  r [ a r ] |
    % a8 [ r a ]  r [ a a ]  r [ a r ] |

    a4 8  r [ a a ]  r8 a4 |
    a4 8  r [ a a ]  r8 a4 |
    a4 8  r [ a a ]  r8 a4 |
    a4 8  r [ a a ]  r8 a4 |

}
kickANineEightRealigned = \relative c' {
    a4. 4. 4. | 
    a4. 4. 4. | 
    a4. 4. 4. | 
    a4. 4. 4. | 
}

alto = \relative c'' {

    r8 r4 r2 

    \transpose ef bf, \bassANineFour

    % "A"
    <<
        { \clicksNineFour \clicksNineFour } \\
        { \kickNineFourForFlats \kickNineFourForFlats }
    >>

    % "B"
    <>\xp
    \transpose ef bf \melodyBNineEight
    
    % "C"
    \transpose ef bf \trumpetCNineEight

    % "D"
    \melodyD 

    % "E"
    \transpose ef bf \melodyBNineEight

    % "F"
    \transpose ef bf \trumpetCNineEight

    % "G"
    \transpose ef bf \trumpetG

    % "G"
    \transpose ef bf \trumpetH

    % "I"
    <>\xp    
    R1*5/4 | R1 | 
    R1*5/4 | R1 | 
    <>\xp    
    R1*5/4 | R1 | 
    R1*5/4 | R1

    % "J"
    \transpose ef bf \melodyBNineFour
    
    % "K"
    \transpose ef bf \trumpetK

    % "L"
    \transpose ef bf \trumpetL

}

trumpet = \relative c'' {

    r8 r4. r4.  

    \transpose ef bf \bassANineEight

    % "A"
    \transpose e, e <<
        { \clicksNineEight \clicksNineEight } \\
        { \kickNineEightForFlats \kickNineEightForFlats }
    >>

    % "B"
    <>\xp
    \transpose ef bf \melodyBNineEight
    
    % "C"
    \transpose ef bf \trumpetCNineEight

    % "D"
    \melodyD 

    % "E"
    \transpose ef bf \melodyBNineEight

    % "F"
    \transpose ef bf \trumpetCNineEight

    % "G"
    \transpose ef bf \trumpetG

    % "G"
    \transpose ef bf \trumpetH

    % "I"
    <>\xp    
    R1*5/4 | R1 | 
    R1*5/4 | R1 | 
    <>\xp    
    R1*5/4 | R1 | 
    R1*5/4 | R1

    % "J"
    \transpose ef bf \melodyBNineFour
    
    % "K"
    \transpose ef bf \trumpetK

    % "L"
    \transpose ef bf \trumpetL

}

tenor = \relative c'' {

    \bassANineFour

    % "A"
    <<
        { \clicksNineFour \clicksNineFour } \\
        { \kickNineFour \kickNineFour }
    >>

    \melodyBZero
    \tenorCZero

    % "A1" "3X"
    R1 | 
    R1*5/4 | R1 | 

    \melodyBOne
    \tenorCOne
    \tenorDZero
    \tenorE
    \tenorCTwo
    \tenorATwo
    \melodyBOne
    \tenorCThree
    \tenorDTwo
    \tenorCFour
}

% \book {
%   \bookOutputSuffix "lead-sheet-for-C"
%     \header {
%         title = \title
%         composer = \markup \italic { "composed by" \composerName }
%         poet = "Concert Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose c bf, <<
%             % \new ChordNames \transpose e e { 
%             %     \include "ly/ily/chord-names-properties.ily"
%             %     \chordsForm
%             % }
%             \new Staff \with { 
%                 % instrumentName = "Melody"
%             } \transpose e e {
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 <<
%                     \structureLeadSheet
%                     { 
%                         \bassANineFour
%                         \transpose bf, c << 
%                             {
%                                 \clicksNineFour
%                                 \clicksNineFour
%                             } \\ {
%                                 \kickNineFour
%                                 \kickNineFour
%                             }
%                         >>
%                         \melodyBNineFour
%                         \melodyCNineFour
%                     }
%                 >>
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "lead-sheet-for-Bb"
%     \header {
%         title = \title
%         composer = \markup \italic { "composed by" \composerName }
%         poet = "Bb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         <<
%             % \new ChordNames \transpose e e { 
%             %     \include "ly/ily/chord-names-properties.ily"
%             %     \chordsForm
%             % }
%             \new Staff \with { 
%                 % instrumentName = "Melody"
%             } \transpose e e {
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 <<
%                     \structureLeadSheet
%                     { 
%                         \bassANineFour
%                         \transpose bf bf << 
%                             {
%                                 \clicksNineFour
%                                 \clicksNineFour
%                             } \\ {
%                                 \kickNineFour
%                                 \kickNineFour
%                             }
%                         >>
%                         \melodyBNineFour
%                         \melodyCNineFour
%                     }
%                 >>
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "lead-sheet-for-Eb"
%     \header {
%         title = \title
%         composer = \markup \italic { "composed by" \composerName }
%         poet = "Eb Lead Sheet"
%         instrumentName = \poet
%     }
%     \score {
%         \transpose ef bf, <<
%             % \new ChordNames \transpose e e { 
%             %     \include "ly/ily/chord-names-properties.ily"
%             %     \chordsForm
%             % }
%             \new Staff \with { 
%                 % instrumentName = "Melody"
%             } \transpose e e {
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 <<
%                     \structureLeadSheet
%                     { 
%                         \transpose bf, bf \bassANineFour
%                         \transpose bf, ef << 
%                             {
%                                 \clicksNineFour
%                                 \clicksNineFour
%                             } \\ {
%                                 \kickNineFourForFlats
%                                 \kickNineFourForFlats
%                             }
%                         >>


%                         \melodyBNineFour
%                         \melodyCNineFour
%                     }
%                 >>
%             }
%         >>
%     }
% }

% \book {
%   \bookOutputSuffix "alto-for-Eb"
%     \header {
%         title = \title
%         composer = \markup \italic { "composed by" \composerName }
%         poet = "Eb Alto Saxophone"
%         instrumentName = \poet
%     }
%     \score {
%         <<
%             % \new ChordNames \transpose e e { 
%             %     \include "ly/ily/chord-names-properties.ily"
%             %     \chordsForm
%             % }
%             \new Staff \with { 
%                 % instrumentName = "Melody"
%             } \transpose e e {
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 <<
%                     \transpose a e \structurePart
%                     \alto
%                 >>
%             }
%         >>
%     }
% }

\book {
  \bookOutputSuffix "trumpet-for-Bb"
    \header {
        title = \title
        composer = \markup \italic { "composed by" \composerName }
        poet = "Bb Trumpet"
        instrumentName = \poet
    }
    \score {
        \transpose bf ef <<
            % \new ChordNames \transpose e e { 
            %     \include "ly/ily/chord-names-properties.ily"
            %     \chordsForm
            % }
            \new Staff \with { 
                % instrumentName = "Melody"
            } \transpose e e {
                \include "ly/ily/staff-properties.ily"
                \autoPageBreaksOff
                <<
                    \transpose a e \structurePart
                    \trumpet
                >>
            }
        >>
    }
}

% \book {
%   \bookOutputSuffix "tenor-for-Bb"
%     \header {
%         title = \title
%         composer = \markup \italic { "composed by" \composerName }
%         poet = "Bb Tenor Saxophone"
%         instrumentName = \poet
%     }
%     \score {
%         <<
%             % \new ChordNames \transpose e e { 
%             %     \include "ly/ily/chord-names-properties.ily"
%             %     \chordsForm
%             % }
%             \new Staff \with { 
%                 % instrumentName = "Melody"
%             } \transpose e e {
%                 \include "ly/ily/staff-properties.ily"
%                 \autoPageBreaksOff
%                 <<
%                     \structurePart
%                     \tenor
%                 >>
%             }
%         >>
%     }
% }

