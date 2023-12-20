lh = { <>^\markup { \bold " L" } }
rh = { <>^\markup { \bold " R" } }
lrh = { <>^\markup { \bold "L-R" } }
rlh = { <>^\markup { \bold "R-L" } }

instructionAb = \markup {
    \fill-line {
        \center-column {
            \null
            \null
            "Since the note Eb can only be played with the Right hand,"
            "when it is preceded or followed by the note C,"
            "we finger the note C with the Left hand." 
            \null
            "Likewise, when we need to play the note C with the Left hand,"
            "and it is preceded or followed by the note Db,"
            "we finger the note Db with the Right hand."
            \null
            "Sometimes we cannot alternate every note between hands"
            "such as when both C and Db are in between two Eb's."
            \null 
            "In cases where the Db follows the Eb, we can finger both with the Right hand,"
            "although this is not ideal since there will be a little delay and a click."
            \null 
            "More generally, we can start one note with one finger then,"
            "while still playing the note, add the other finger and release the first."
        }
    }
}

diatonicFingeringExampleAbMajor = \relative c'' { 
    \key af \major
    \time 2/4
    \rh ef8 \rh df \lh c ef |
    ef8 \lh df \rlh c16 [ ~ c16 ef8 ] |
    ef8 [ \lrh c16 ~ 16 ] df8 ef | 
    ef8 \lh c \rlh df16 [ ~ 16 ef8 ] 
    \bar "|." 
}

diatonicExerciseOneAbMajor = \transpose c af \relative c { 
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

    c8 \lh e g \lh e c4 | 
    d8 f a f d4 | 
    \lh e8 g b g \lh e4 | 
    f8 a c a f4 | 
    g8 b d b g4 | 
    a8 c e c a4 | 
    b8 d f d b4 | 
    c2. | \break

    c8 a f a c4 | 
    b8 g \lh e g b4 | 
    a8 f d f a4 | 
    g8 \lh e c \lh e g4 | 
    f8 d b d f4 | 
    e8 c a c e4 | 
    d8 b g b d4 |
    c2.
    \bar "||"
}

diatonicExerciseTwoAbMajor = \transpose c af \relative c { 
    \key c \major
    \time 4/4
    c8 d e g  d e f a | 
    e8 f g b  f g a c | 
    g8 a b d  a b c e | 
    b8 c d f c2 | \break

    c8 d \lh e g  d e f a | 
    e8 f g b  f g a c | 
    g8 a b d  a b c e | 
    b8 c d f c2 | \break

    c8 a g f  b g f e | 
    a8 f e d  g \lh e d c | 
    f8 d c b  e c b a | 
    d8 b a g c2 
    \bar "||"
}

diatonicExerciseThreeAbMajor = \transpose c af \relative c { 
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
    e8 f g a  b a g \lrh e | 
    f8 g a b  c b a f | 
    g8 a b c  d c b g | 
    a8 b c d  e d c a | 
    b8 c d e  f e d b | 
    c1 | \break

    c8 b a g  f g a c | 
    b8 a g f  e f g b | 
    a8 g f e  d e f a | 
    g8 f e d  c d \lh e g | 
    f8 e d c  b c d f | 
    e8 d c b  a b c e | 
    d8 c b a  g a b d |
    c1 
    \bar "||"

}
