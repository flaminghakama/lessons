articulationExerciseScaleMelodicMinor = \relative c' { 
    r4 
    c16 16 16 16 
    d16 16 16 16 
    ef16 16 16 16 |
    f16 16 16 16 
    g16 16 16 16 
    a16 16 16 16 
    b16 16 16 16 |

    c16 16 16 16 
    bf?16 16 16 16
    af?16 16 16 16
    g16 16 16 16 |
    f16 16 16 16 
    ef16 16 16 16
    d16 16 16 16
    c16 8 16 | \noBreak
    c2 r 
}
articulationExerciseScaleHarmonicMinor = \relative c' { 
    r4 
    c16 16 16 16 
    d16 16 16 16 
    ef16 16 16 16 |
    f16 16 16 16 
    g16 16 16 16 
    af16 16 16 16 
    b16 16 16 16 |

    c16 16 16 16 
    b16 16 16 16
    af16 16 16 16
    g16 16 16 16 |
    f16 16 16 16 
    ef16 16 16 16
    d16 16 16 16
    c16 8 16 | \noBreak
    c2 r 
}

syncopationExerciseScaleMelodicMinor = \relative c' { 
    r4 
    c16 8 16 
    d16 8 16 
    ef16 8 16 |
    f16 8 16 
    g16 8 16 
    a16 8 16 
    b16 8 16 |
    d16 c8 a16 
    c16 bf?8 g16 
    bf16 af?8 f16 
    af16 g8 ef16 | 
    g16 f8 d16 
    f16 ef8 c16  
    ef16 d8 b16 
    c4
}
syncopationExerciseScaleHarmonicMinor = \relative c' { 
    r4 
    c16 8 16 
    d16 8 16 
    ef16 8 16 |
    f16 8 16 
    g16 8 16 
    af16 8 16 
    b16 8 16 |
    d16 c8 af16 
    c16 b8 g16 
    b16 af8 f16 
    af16 g8 ef16 | 
    g16 f8 d16 
    f16 ef8 c16  
    ef16 d8 b16 
    c4
}

scaleInThirdsMelodicMinorNotes = \relative c' { 
    c8 ef d f  ef g f af | g bf af c  b d c4 | d8 b c af  bf g af f  | g ef f d c4 r4 | 
}
scaleInThirdsHarmonicMinorNotes = \relative c' { 
    c8 ef d f  ef g f af | g b af c  b d c4 | d8 b c af  b g af f  | g ef f d c4 r4 | 
}

tonicMinorArpeggioChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1:m
}

tonicMinorArpeggioC = \relative c' { 
    \key c \minor
    \time 2/4
    \tuplet 3/2 4 { 
        c8 ef g  c ef g  |
        c g ef  c g ef |
        } c2 

    \tuplet 3/2 4 {
        c''8 ef c  g ef c |
        g8 ef c  g g' ef | } 
        c2  
    \bar "||" \break

    \time 4/4
    c8 ( g' ) ef ( c' ) 
    g8 ( ef' ) c ( g' ) | 
    ef8 ( c' ) g ( ef')
    c8 ( ef, ) g ( c, ) |
    ef8 ( g, ) c ( ef, ) 
    g8 ( c, ) ef ( g, ) |
    c1 
    \bar "|."
}


diatonicExerciseOneCMinor = \relative c' { 
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
    d8 b g b d4 |
    c2.
    \bar "||"
}

diatonicExerciseTwoCMinor = \relative c' { 
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
    f8 d c b  ef c b a | 
    d8 b a g c2
    \bar "||"
}

diatonicExerciseThreeCMinor = \relative c' { 
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
    ef8 d c b  a b c ef | 
    d8 c bf af  g a b d |
    c1 
    \bar "||"
}


