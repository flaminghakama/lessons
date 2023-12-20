
lh = { <>^\markup { \bold " L" } }

instructionEb = \markup {
    \fill-line {
        \center-column {
            \null
            \null
            "Since the note Eb can only be played with the Right hand,"
            "when it is preceded or followed by the note C,"
            "we finger the note C with the Left hand." 
        }
    }
}

diatonicExerciseOneEbMajor = \transpose c ef \relative c' { 
    \key c \major
    \time 3/4
    c8 e g e c4 | 
    d8 f a f d4 | 
    e8 g b g e4 | 
    f8  \lh a c \lh a f4 | 
    g8 b d b g4 | 
    \lh a8 c e c \lh a4 | 
    b8 d f d b4 | 
    c2. | \break

    c'8 a f a c4 |
    b8 g e g b4 | 
    a8 f d f a4 | 
    g8 e c e g4 | 
    f8 d b d f4 | 
    e8 c \lh a c e4 | 
    d8 b g b d4 
    c2. \break 

    c8 \lh a f \lh a c4 |
    b8 g e g b4 | 
    a8 f d f a4 | 
    g8 e c e g4 | 
    f8 d b d f4 | 
    e8 c a c e4 | 
    d8 b g b d4 
    c2. 
    \bar "||"

}

diatonicExerciseTwoEbMajor = \transpose c ef \relative c' { 
    \key c \major
    \time 4/4
    c8 d e g  d e f a | 
    e8 f g b  f g \lh a c | 
    g8 a b d  a b c e | 
    b8 c d f c2 | \break

    c'8 a g f  b g f e | 
    a8 f e d  g e d c | 
    f8 d c b  e c b a | 
    d8 b a g c2 \break

    c8 \lh a g f  b g f e | 
    a8 f e d  g e d c | 
    f8 d c b  e c b a | 
    d8 b a g c2 
    \bar "||"
}

diatonicExerciseThreeEbMajor = \transpose c ef \relative c' { 
    \key c \major
    \time 4/4
    c8 d e f  g f e c | 
    d8 e f g  a g f d | 
    e8 f g a  b a g e | 
    f8 g a b  c b a f | 
    g8 a b c  d c b g | 
    a8 b c d  e d c \lh a | 
    b8 c d e  f e d b | 
    c1 | \break

    c'8 b a g  f g a c | 
    b8 a g f  e f g b | 
    a8 g f e  d e f a | 
    g8 f e d  c d e g | 
    f8 e d c  b c d f | 
    e8 d c b  a b c e | 
    d8 c b a  g a b d |
    c1 \break

    c8 b a g  f g \lh a c | 
    b8 a g f  e f g b | 
    a8 g f e  d e f a | 
    g8 f e d  c d e g | 
    f8 e d c  b c d f | 
    e8 d c b  a b c e | 
    d8 c b a  g a b d |
    c1 
    \bar "||"    
}


