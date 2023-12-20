lh = { <>^\markup { \bold " L" } }
rh = { <>^\markup { \bold " R" } }
lrh = { <>^\markup { \bold "L-R" } }
rlh = { <>^\markup { \bold "R-L" } }

instructionCSharp = \markup {
    \fill-line {
        \center-column {
            \null
            \null
            "Since the note D# can only be played with the Right hand,"
            "when it is preceded or followed by the note B# (C) or C#,"
            "we finger the note B# or C# with the Left hand." 
            \null
            "Likewise, when the note B# follows the note C#,"
            "or when the note C# follows the note B#,"
            "one of them should be played with the Left hand"
        }
    }
}

diatonicExerciseOneCSharpMajor = \transpose c cs \relative c' { 
    \key c \major
    \time 3/4
    c8 e g e c4 | 
    d8 f a f d4 | 
    e8 g b g e4 | 
    f8 a c a f4 | 
    g8 b d b g4 | 
    a8 c e c a4 | 
    \lh b8 d f d \lh b4 | 
    c2. | \break

    c'8 a f a c4 | 
    b8 g e g b4 | 
    a8 f d f a4 | 
    g8 e c e g4 | 
    f8 d \lh b d f4 | 
    e8 c a c e4 | 
    d8 \lh b g \lh b d4 
    \lh c2. | \break

    \lh c8 a f a \lh c4 | 
    b8 g e g b4 | 
    a8 f d f a4 | 
    g8 e c e g4 | 
    f8 d b d f4 | 
    e8 c a c e4 | 
    d8 b g b d4 |
    c2.
    \bar "||"
}

diatonicExerciseTwoCSharpMajor = \transpose c cs \relative c' { 
    \key c \major
    \time 4/4
    c8 d e g  d e f a | 
    e8 f g b  f g a c | 
    g8 a \lh b d  a b c e | 
    \rh b8 \lh c d f c2 | \break

    c'8 a g f  b g f e | 
    a8 f e d  g e d \lh c | 
    f8 d \lh c b  e \lh c b a | 
    d8 \lh b a g c2 | \break

    c8 a g f  b g f e | 
    a8 f e d  g e d c | 
    f8 d c b  e c b a | 
    d8 b a g c2 
    \bar "||"
}

diatonicExerciseThreeCSharpMajor = \transpose c cs \relative c' { 
    \key c \major
    \time 4/4
    c8 d e f  g f e c | 
    d8 e f g  a g f d | 
    e8 f g a  b a g e | 
    f8 g a b  \lh c b a f | 
    g8 a b \lh c  d \lh c b g | 
    a8 b \lh c d  e d \lh c a | 
    b8 \lh c d e  f e d \lh b | 
    c1 | \break

    c'8 b a g  f g a c | 
    b8 a g f  e f g b | 
    a8 g f e  d e f a | 
    g8 f e d  \lh c d e g | 
    f8 e d \lh c  b \lh c d f | 
    e8 d \lh c b  a b \lh c e | 
    d8 \lh c b a  g a \lh b d |
    \lh c1 | \break

    \lh c8 b a g  f g a \lh c | 
    b8 a g f  e f g b | 
    a8 g f e  d e f a | 
    g8 f e d  c d e g | 
    f8 e d c  b c d f | 
    e8 d c b  a b c e | 
    d8 c b a  g a b d |
    c1
    \bar "||"
}


