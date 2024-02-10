articulationExerciseScale = \relative c' { 
    r4 
    c16 16 16 16 
    d16 16 16 16 
    e16 16 16 16 |
    f16 16 16 16 
    g16 16 16 16 
    a16 16 16 16 
    b16 16 16 16 |

    c16 16 16 16 
    b16 16 16 16
    a16 16 16 16
    g16 16 16 16 |
    f16 16 16 16 
    e16 16 16 16
    d16 16 16 16
    c16 16 16 16 | \noBreak
    c1 
}

syncopationExerciseScale = \relative c' { 
    r4 
    c16 8 16 
    d16 8 16 
    e16 8 16 |
    f16 8 16 
    g16 8 16 
    a16 8 16 
    b16 8 16 |
    c16 b8 g16 
    b16 a8 f16 
    a16 g8 e16 
    g16 f8 d16 |
    f16 e8 c16  
    e16 d8 b16 
    d16 c8 b16 
    c4
}

scaleInThirdsMajorNotes = \relative c' { 
        r4 c8 e  d f e g | f a g b  a c b d | c a b g  a f g e | f d c2. | 
}

tonicArpeggioChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    c1
}

tonicArpeggioC = \relative c' { 
    \key c \major
    \time 2/4
    \tuplet 3/2 4 { 
        c8 e g  c e g  |
         c g e  c g e |
        } c2 

    \tuplet 3/2 4 {
        c''8 e c  g e c  |
        g8 e c  g e e' } | 
        c2 
    \bar "||" \break

    \time 4/4
    c8 ( g' ) e ( c' ) 
    g8 ( e' ) c ( g' ) | 
    e8 ( c' ) g ( e') 
    c2 | 
    c8 ( e, ) g ( c, ) 
    e8 ( g, ) c ( e, ) |
    g8 ( c, ) e ( g, )
    c8 ( e, ) g ( e' ) | 
    c1 | 
    \bar "|."
}


diatonicExerciseOneCMajor = \relative c' { 
    \key c \major
    \time 3/4
    c8 e g e c4 | 
    d8 f a f d4 | 
    e8 g b g e4 | 
    f8 a c a f4 | 
    g8 b d b g4 | 
    a8 c e c a4 | 
    b8 d f d b4 | 
    c2. | \break

    c8 e g e c4 | 
    d8 f a f d4 | 
    e8 g b g e4 | 
    f8 a c a f4 | 
    g8 b d b g4 | 
    a8 c e c a4 | 
    b8 d f d b4 | 
    c2. | \break

    c8 a f a c4 | 
    b8 g e g b4 | 
    a8 f d f a4 | 
    g8 e c e g4 | 
    f8 d b d f4 | 
    e8 c a c e4 | 
    d8 b g b d4 
    c2. | \break

    c8 a f a c4 | 
    b8 g e g b4 | 
    a8 f d f a4 | 
    g8 e c e g4 | 
    f8 d b d f4 | 
    e8 c a c e4 | 
    d8 b g b d4 |
    c2.
    \bar "||"
}

diatonicExerciseTwoCMajor = \relative c' { 
    \key c \major
    \time 4/4
    c8 d e g  d e f a | 
    e8 f g b  f g a c | 
    g8 a b d  a b c e | 
    b8 c d f c2 | \break

    c8 d e g  d e f a | 
    e8 f g b  f g a c | 
    g8 a b d  a b c e | 
    b8 c d f c2 | \break

    c8 a g f  b g f e | 
    a8 f e d  g e d c | 
    f8 d c b  e c b a | 
    d8 b a g c2 | \break

    c8 a g f  b g f e | 
    a8 f e d  g e d c | 
    f8 d c b  e c b a | 
    d8 b a g c2
    \bar "||"
}

diatonicExerciseThreeCMajor = \relative c' { 
    \key c \major
    \time 4/4
    c8 d e f  g f e c | 
    d8 e f g  a g f d | 
    e8 f g a  b a g e | 
    f8 g a b  c b a f | 
    g8 a b c  d c b g | 
    a8 b c d  e d c a | 
    b8 c d e  f e d b | 
    c1 | \break

    c8 d e f  g f e c | 
    d8 e f g  a g f d | 
    e8 f g a  b a g e | 
    f8 g a b  c b a f | 
    g8 a b c  d c b g | 
    a8 b c d  e d c a | 
    b8 c d e  f e d b | 
    c1 | \break

    c8 b a g  f g a c | 
    b8 a g f  e f g b | 
    a8 g f e  d e f a | 
    g8 f e d  c d e g | 
    f8 e d c  b c d f | 
    e8 d c b  a b c e | 
    d8 c b a  g a b d |
    c1 | \break

    c8 b a g  f g a c | 
    b8 a g f  e f g b | 
    a8 g f e  d e f a | 
    g8 f e d  c d e g | 
    f8 e d c  b c d f | 
    e8 d c b  a b c e | 
    d8 c b a  g a b d |
    c1
    \bar "||"
}


