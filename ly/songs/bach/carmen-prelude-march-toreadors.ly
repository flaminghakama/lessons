\version "2.24.0"

#(ly:set-option 'relative-includes #t)

titleLeft = "Prélude"
titleRight = "Overature"
titleFull = "Prélude Overature"
instrumentName = ""
composerName = "G. Bizet (1838-1875)"
copyright = \markup { \tiny "public domain" }
arranger = "arranged by Elaine Alt"

\include "../engraving/flaming-libs/flaming-standard.ily"
% #(set-default-paper-size "legal" 'landscape)

crescMolto =
#(make-music 'CrescendoEvent
             'span-direction START
             'span-type 'text
             'span-text "cre scen do molto")


melodyAllegroGiocosoPartOne =  \relative c'' {

    \startRepeat
    a8-.\ff 16-. 16-.  16-. e-. d-. e-. |
    a8-. 16-. 16-.  16-. b-. cis-. b-. |
    a8-. 16-. 16-.  b-. a-. gis-. a-. |
    b2\trill ( \grace { ais16 [ b ] ) } |

    d8-. 16-. 16-.  16-. b-. a-. b-. |
    d8-. 16-. 16-.  16-. e-. fis-. e-. | 
    d8-. 16-. cis-.  b8-. 16-. a-. |
    gis2\trill ( \grace { fis16 [ gis ] ) } |

    a8-. 16-. 16-.  16-. e-. d-. e-. |
    a8-. 16-. 16-.  16-. b-. cis-. b-. |
    a8-. 16-. 16-.  b-. a-. gis-. a-. |
    b2\trill ( \grace { ais16 [ b ] ) } |
    
    gis'8-. 16-. 16-.  16 ( fis ) e-. fis-. |
    gis8-. 16-. 16-.  16 ( fis ) e-. fis-. |
    e8 r r4 | 
    r8 e,16 16  a,8 r 
    \endRepeat 
}

melodyAllegroGiocosoPartTwo = \relative c'' { 
    cis8\p ( fis ) cis-. b-. |
    a8 ( gis16 fis )  gis8-. cis,-. | 
    fis8-. gis-. a-. cis-. | 
    eis8 ( dis16 eis ) cis8-. cis,-. | 

    cis'8 ( fis ) cis-. b-. |
    a8 ( gis16 fis )  gis8-. cis,-. | 
    fis8-. gis-. a-. cis-. | 
    eis8 ( dis16 eis ) cis8-. r | 

    d16-.\f 16-. 8-.  e16-. 16-. 8-. | 
    fis16-. 16-. 8-.  d16-. 16-. 8-. | 
    \tuplet 3/2 8 { \repeat tremolo 3 cis16  \repeat tremolo 3 gis16  \repeat tremolo 3 cis16  \repeat tremolo 3 dis16 } |
    \tuplet 3/2 8 { \repeat tremolo 3 cis16  \repeat tremolo 3 gis16 } cis8 r | 

    d16-. 16-. 8-.  e16-. 16-. 8-. | 
    fis16-. 16-. 8-.  d16-. 16-. 8-. | 
    \repeat tremolo 8 gis16 |
    <> \crescMolto
    \repeat tremolo 8 gis16 |
    \repeat tremolo 8 gis16 |
    \repeat tremolo 8 gis16 \!|
}

melodyAllegroGiocosoPartThree =  \relative c'' {

    a8-.\ff 16-. 16-.  16-. e-. d-. e-. |
    a8-. 16-. 16-.  16-. b-. cis-. b-. |
    a8-. 16-. 16-.  b-. a-. gis-. a-. |
    b2\trill ( \grace { ais16 [ b ] ) } |

    d8-. 16-. 16-.  16-. b-. a-. b-. |
    d8-. 16-. 16-.  16-. e-. fis-. e-. | 
    d8-. 16-. cis-.  b8-. 16-. a-. |
    gis2\trill ( \grace { fis16 [ gis ] ) } |

    a8-. 16-. 16-.  16-. e-. d-. e-. |
    a8-. 16-. 16-.  16-. b-. cis-. b-. |
    a8-. 16-. 16-.  b-. a-. gis-. a-. |
    b2\trill ( \grace { ais16 [ b ] ) } |
    
    gis'8-. 16-. 16-.  16 ( fis ) e-. fis-. |
    gis8-. 16-. 16-.  16 ( fis ) e-. fis-. |
    e8 r r4 | 
    r8 e,16 16  a,8 r 
}

melodyMarch = \relative c'' { 
    R2*4

    c4\p ( d8. c16 | a4 4 ) |
    \grace { bes8 } a8. ( g16  a8. bes16 ) | a4 ~ 8 r | 
    bes4 ( g8. c16 | a2 |
    f4 d8. g16 | c,4 ~ 8 ) r | 

    g'2 ( | g8 d' c bes |
    \grace { bes } a8 g a bes | a4 ~ 8 ) r | 
    e4\< ( a | a gis8. b16 ) \! |
    e2\cresc ~ | 2 ~ |

    e8\f \tuplet 3/2 { d16 ( e d } cis8 d | g, a bes4 ~ | 
    bes8 ) \tuplet 3/2 { a16 ( bes a } f8 d' | c4 ~ 8 ) r | 
    r8 \tuplet 3/2 { f,16\p \( g f } c8 bes' | a4 \grace { gis16 ( a } g4 ) |
    f8 \) c16\ff d  e fis g a | bes c d e  f g a bes | 


}

melody = { 

    \accidentalStyle modern-cautionary
    \key a \major
    \time 2/4

    \melodyAllegroGiocosoPartOne
    \melodyAllegroGiocosoPartTwo
    \melodyAllegroGiocosoPartThree

    \melodyMarch
}
  
harmonyAllegroGiocosoPartOne =  \relative c' {
    a8\ff cis r d | 
    a8 cis r d | 
    a8 cis r gis' |
    fis8 dis e b |

    d8 fis r g | 
    d8 fis r g | 
    d8 r gis b | 
    cis8 gis e b | 

    a8 cis r d | 
    a8 cis r d | 
    a8 cis r gis' |
    fis8 dis e b |

    c8 g' r g | 
    c,8 g' r e'16 g | 
    e8-. e,16-. fis-.  gis8-. e16-. cis'-. | 
    b4 ( a8 ) r ||    
}

harmonyAllegroGiocosoPartTwo =  \relative c' {
    fis8\p ( cis ) fis-. gis-. | 
    a8 ( b )  cis,16-. 16-. 8-. | 
    a'8-. gis-. fis-. a-. |
    gis8 ( fis16 gis )  eis8-. cis-. | 

    fis8 ( cis ) fis-. gis-. | 
    a8 ( b16 cis )  b8-. cis,-. | 
    a'8-. gis-. fis-. a,-. |
    gis16-. 16-. 8-.  cis-. r | 

    d16-. 16-. 8-.  16-. 16-. 8-. |
    d16-. 16-. 8-.  16-. 16-. 8-. |
    gis4. 16 16 |
    gis4 ~ 8 r |     

    d16-. 16-. 8-.  16-. 16-. 8-. |
    d16-. 16-. 8-.  16-. 16-. 8-. |
    r8 gis16-. 16-.  4 | 
    r8 <>\crescMolto gis16-. 16-.  4 | 
    r8 gis16-. 16-.  4 | 
    r8 gis16-. 16-.  8 \! e\ff | 
}

harmonyAllegroGiocosoPartThree =  \relative c' {
    a8 cis r d | 
    a8 cis r d | 
    a8 cis r gis' |
    fis8 dis e b |

    d8 fis r g | 
    d8 fis r g | 
    d8 r gis b | 
    cis8 gis e b | 

    a8 cis r d | 
    a8 cis r d | 
    a8 cis r gis' |
    fis8 dis e b |

    c8 g' r g | 
    c,8 g' r e'16 g | 
    e8-. e,16-. fis-.  gis8-. e16-. cis'-. | 
    b4 ( a8 ) r ||    
}

harmonyMarch =  \relative c' {
    f8-.\pp r c-. r | 
    f8-. r c-. r | 
    f8-. r c-. r | 
    f8-. r c-. r | 

    f8-. r c-. r | 
    f8-. r c-. r | 
    f8-. r c-. r | 
    f8-. r c-. r | 


    % <bf f d bf g > <bf e c bf c> |
    % <a f c a f> <a f c a e> |
    % <a f c a d> <b g f b g> |
    % <c g e c c > <c g e c c>  |

    % G-7 C7 |
    % F  F/E |
    % D-7 G7 | 
    % C C | 

    g8-. r c-. r | 
    f8-. r e-. r | 
    d8-. r g,-. r | 
    c8-. r e-. r | 


    % <g d bf g bf> <g d bf g d> |
    % <g d bf g bf> <g d bf g g> |
    % <a f d a f> <a f d a a> |
    % <a f d a d> <a a d a f> |

    % G- G- |
    % G- G- | 
    % D- D- |
    % D- D- 

    bes8-. r d-. r | 
    bes8-. r g-. r | 
    f8-. r a-. r | 
    d8-. r f-. r | 


    % <a e c a e> <a e c a c> |
    % <a fs d a b> <gs e d gs e> |
    % <a e cis a a> <a e cis a e> |
    % <a e cis a cis> <a e cis a a> |

    % A-  A- |
    % B- E7 | 
    % A A | 
    % A A |

    e8-. r c-. r | 
    b8-. r e-. r | 
    a,8-. r e'-. r | 
    cis8-. r a-. r | 


    % <g f d g bf> <g f b g d> |
    % <g f d g bf> <g f d g g> |
    % <c c  c> <   > |
    % <   > <   > |

    % G-7 G7 |
    % G-7  G-7 | 

    bes8-. r d-. r | 
    bes8-. r g-. r | 
    c8 r r4 | 
    r8 \tuplet 3/2 { a'16 ( bes a ) } f8-. d'-. | 


    %         |     <e c bes g c>
    % <f c a f  >
    
    c8-. r r4 | r4 bes8 r | 
    a8 a,16 bes  c d e f | 
    g16 a bes c  d e f g | 
    a8 r 


}

harmony = { 
    \accidentalStyle modern-cautionary
    \key a \major
    \time 2/4
    \harmonyAllegroGiocosoPartOne
    \harmonyAllegroGiocosoPartTwo
    \harmonyAllegroGiocosoPartThree

    \harmonyMarch
}

\book {

    \bookOutputSuffix "for-violin-clarinet"

    \score {
     
        \transpose a g << 
            \context Staff = "one" \with { instrumentName = "Violin" } <<
                \melody
            >>
            \context Staff = "two" \with { instrumentName = "Bb Clarinet" } <<
                \transpose bes, c \harmony
            >>
        >>
        \layout{ 
            indent = 3\cm
            short-indent = 0.5\cm
        }
      
    }
}
