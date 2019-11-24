pentatonicExerciseOneCMinor = \relative c' { 
    \key c \minor
    \time 4/4
    \tuplet 3/2 4 { c8 bf c  ef c ef  f ef f  g f g | bf g bf  c bf ef } c2 | 
    \tuplet 3/2 4 { c8 bf c  ef c ef  f ef f  g f g | bf g bf  c bf ef } c2 | 
    \tuplet 3/2 4 { c8 bf c  ef c ef  f ef f  ef c ef } | c2 

    \tuplet 3/2 4 { f8 ef f  ef c ef | 
        c8 ef c  bf c bf  
        g8 bf g  f g f |
        ef8 f ef  c ef bf } c2 
    \tuplet 3/2 4 { c8 ef c  bf c bf  g bf g  f g f | ef f ef  c ef bf } c2 | 
    \bar "|." 
}

pentatonicExerciseTwoCMinor = \relative c' { 
    \key c \minor
    \time 3/4
    c4 \tuplet 3/2 4 { 
        c8 bf c  ef c bf |
        f'8 ef c  g' f ef   bf' g f | 
        c'8 bf g  ef' c bf } c4 |
    \tuplet 3/2 4 { 
        c8 bf g  ef' c bf  f' ef c |
        g'8 f ef  bf' g f  c' bf g |
        ef'8 c bf } c2  
    \tuplet 3/2 4 { 
        c8 bf g  ef' c bf  f' ef c |
        ef c bf } c4

    \tuplet 3/2 4 { 
        ef8 f ef |
        c8 ef f  bf,8 c ef g,8 bf c |
        f, g bf  ef,8 f g }  c,4 |
    \tuplet 3/2 4 { 
        c8 ef f  bf, c ef g,8 bf c |
        f,8 g bf  ef,8 f g  c, ef f |
        bf,8 c ef } c2 |
    \bar "|." 
}

pentatonicExerciseThreeCMinor = \relative c' { 
    \key c \minor
    \time 6/4
    \set Timing.beatStructure = 2,2,2
    c8 bf c bf  ef c bf c  f ef c bf |
    g'8 f ef c  bf' g f ef  c'2 | 
    c8 bf g f  ef' c bf g  f' ef c bf |
    g'8 f ef c  bf' g f ef  c'2 | 
    c8 bf g f  ef' c bf g  f' ef c bf |
    ef c bf g  c2 

    f8 ef c bf |
    ef8 c bf g  c8 bf g f  bf g f d  |
    g8 f ef c  f ef c bf  ef8 c bf g |
    c2  c8 bf g f  bf g f d |
    g8 f ef c  f ef c bf  c2 |
    \bar "|." 
}

pentatonicExerciseFourCMinor = \relative c' { 
    \key c \minor
    \time 4/4
    c2 \tuplet 3/2 4 {
        bf8 c ef  f g f |

        c8 ef f  g bf g  
        ef8 f g  bf c bf |
        f8 g bf  c ef c  
        g8 bf c  ef f ef |
        bf8 c ef  f g f } c4 c, | 
    \tuplet 3/2 4 { 
        c'8 ef f  g bf g  ef f g  bf c bf |
        f8 g bf  c ef c  g bf c  ef f ef } | c4 c,,
    \tuplet 3/2 4 { 
        f''8 ef c  bf g bf | 
        ef8 c bf  g f g  
        c8 bf g  f ef f  |
        bf8 g f  ef c ef  
        g8 f ef  c bf c | 
        f8 ef c  bf g bf 
        ef8 c bf  g f g } | c4 c,      
    \tuplet 3/2 4 { 
        c'8 bf g  f ef f | 
        bf8 g f  ef c ef  
        g8 f ef  c bf c | 
        f ef c  bf c ef } c2 
    \bar "|." 
}

pentatonicExerciseFiveCMinor = \relative c' {
    \key c \minor
    \time 6/4
    bf8 c ef f  gf [ f ef bf ]  c2 |
    c8 ef f gf  g [ gf f ef ]  c2 | 
    ef8 f g? bf  c [ gf f ef ]  c2 | 
    gf'8 f ef c  f [ ef c bf ]  c2 | 
    gf'8 g c bf  g [ gf f ef ]  c2 |

    bf'8 c ef f  gf [ f ef bf ]  c2 |
    c8 ef f gf  g [ gf f ef ]  c2 | 
    ef8 f g? bf  c [ gf f ef ]  c2 | 
    gf'8 f ef c  f [ ef c bf ]  c2 | 
    gf'8 g c bf  g [ gf f ef ]  c4

    f'8 ef 
    c bf gf f  ef [ c bf gf ]  f [ ef c bf ] | c1. | 
    \bar "|."
}

pentatonicExerciseSixCMinor = \relative c' {
    \key c \minor
    \time 4/4
    c8 bf c ef  f gf g bf |c ef f gf  g bf c ef |
    f ef c bf  g gf f ef | c bf g gf  f ef c bf | c1 | 
    \bar "|."
}
