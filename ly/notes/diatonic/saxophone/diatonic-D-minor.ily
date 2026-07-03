
tonicMinorArpeggioD = \relative c' { 
    \key c \minor
    \time 2/4
    \tuplet 3/2 4 { 
        c8 ef g  c ef g  |
        c g ef  c g ef |
        } c2 

    \tuplet 3/2 4 {
        c''8 ef c  g ef c |
        g8 ef c' } c,4  
    \bar "||" \break

    \time 4/4
    c8 ( g' ) ef ( c' ) 
    g8 ( ef' ) c ( g' ) | 
    ef8 ( c' ) g ( ef')
    c8 ( ef, ) g ( c, ) |
    ef8 ( g, ) c ( ef, ) 
    g8 ( ef' ) c,2  
    \bar "|."
}


diatonicExerciseOneDMinor = \transpose c d \relative c' { 
    \key c \minor
    \time 3/4
    c8 ef g ef c4 | 
    d8 f af f d4 | 
    ef8 g bf g ef4 | 
    f8 af c af f4 | 
    g8 bf d bf g4 | 
    af8 c ef c af4 | 
    b8 d f d b4 | 
    c2. | \break

    c8 ef g ef c4 | 
    d8 f af f d4 | 
    ef8 g bf g ef4 | 
    f8 af c af f4 | 
    g8 bf d bf g4 | 
    af8 c ef c af4 | 
    b8 d f d b4 | 
    c2. | \break

    c8 af f af c4 | 
    bf8 g ef g bf4 | 
    af8 f d f af4 | 
    g8 ef c ef g4 | 
    f8 d bf d f4 | 
    ef8 c af c ef4 | 
    d8 b g b d4 
    c2. | \break

    c8 af f af c4 | 
    bf8 g ef g bf4 | 
    af8 f d f af4 | 
    g8 ef c ef g4 | 
    f8 d bf d f4 | 
    ef8 c af c ef4 | 
    d8 b g' b, d4 |
    c2.
    \bar "||"
}

diatonicExerciseTwoDMinor = \transpose c d \relative c' { 
    \key c \minor
    \time 4/4
    c8 d ef g  d ef f af | 
    ef8 f g bf  f g af c | 
    g8 a b d  a b c ef | 
    b8 c d f c2 | \break

    c8 d ef g  d ef f af | 
    ef8 f g bf  f g af c | 
    g8 a b d  a b c ef | 
    b8 c d f c2 | \break

    c8 af g f  bf g f ef | 
    af8 f ef d  g ef d c | 
    f8 d c b  ef c b a | 
    d8 b a g c2 | \break

    c8 af g f  bf g f ef | 
    af8 f ef d  g ef d c | 
    f8 d' c b  ef, c' b a | 
    d,8 b' a g c,2
    \bar "||"
}

diatonicExerciseThreeDMinor = \transpose c d \relative c' { 
    \key c \minor
    \time 4/4
    c8 d ef f  g f ef c | 
    d8 ef f g  af g f d | 
    ef8 f g af  bf af g ef | 
    f8 g a b  c bf af f | 
    g8 a b c  d c b g | 
    a8 b c d  ef d c a | 
    b8 c d ef  f ef d b | 
    c1 | \break

    c8 d ef f  g f ef c | 
    d8 ef f g  af g f d | 
    ef8 f g af  bf af g ef | 
    f8 g a b  c bf af f | 
    g8 a b c  d c b g | 
    a8 b c d  ef d c a | 
    b8 c d ef  f ef d b | 
    c1 | \break

    c8 bf af g  f g a c | 
    bf8 af g f  ef f g bf | 
    af8 g f ef  d ef f af | 
    g8 f ef d  c d ef g | 
    f8 ef d c  b c d f | 
    ef8 d c b  a b c ef | 
    d8 c bf af  g a b d |
    c1 | \break

    c8 bf af g  f g a c | 
    bf8 af g f  ef f g bf | 
    af8 g f ef  d ef f af | 
    g8 f ef d  c d ef g | 
    f8 ef d c  b c d f | 
    ef8 d c b'  a b c ef, | 
    d8 c bf af'  g a b d, |
    c1 
    \bar "||"
}


