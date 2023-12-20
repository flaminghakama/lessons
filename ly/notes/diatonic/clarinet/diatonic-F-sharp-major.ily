lh = { <>^\markup { \bold " L" } }
rh = { <>^\markup { \bold " R" } }
lrh = { <>^\markup { \bold "L-R" } }
rlh = { <>^\markup { \bold "R-L" } }

instructionFSharp = \markup {
    \fill-line {
        \center-column {
            \null
            \null
            "Since the note G# in the lower register can only be played with the Right hand,"
            "when it is preceded or followed by the note F#,"
            "we finger the note F# with the Left hand." 
            \null
            "Since the note D# in the middle register can only be played with the Right hand,"
            "when it is preceded or followed by the note C#,"
            "we finger the note C# with the Left hand." 
            \null
            "Likewise, when we need to play the note C# with the Left hand,"
            "and it is preceded or followed by the note B,"
            "we finger the note B with the Right hand."
            \null
            "Sometimes we cannot alternate every note between hands"
            "such as when both C# and B are in between two D#'s."
            \null 
            "In cases where the C# follows the D#, we can finger both with the Right hand,"
            "although this is not ideal since there will be a little delay and a click."
            \null 
            "More generally, we can start one note with one finger then,"
            "while still playing the note, add the other finger and release the first."

        }
    }
}

diatonicFingeringExampleFSharpMajor = \relative c'' { 
    \key fs \major
    \time 2/4
    \rh ds8 \rh cs \lh b ds |
    ds8 \lh cs \rlh b16 [ ~ b16 ds8 ] |
    ds8 [ \lrh b16 ~ 16 ] cs8 ds | 
    ds8 \lh b \rlh cs16 [ ~ 16 ds8 ] 
    \bar "|." 

}

diatonicExerciseOneFSharpMajor = \transpose c fs \relative c { 
    \key c \major
    \time 3/4
    c8 e g e \lh c4 | 
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
    g8 b d b \lh g4 | 
    a8 c e c a4 | 
    b8 d f d b4 | 
    c2. | \break

    c8 a f a c4 | 
    b8 g e g b4 | 
    a8 f d f a4 | 
    \lh g8 e c e g4 | 
    f8 d b d f4 | 
    e8 c a c e4 | 
    d8 b g b d4 
    c2.
    \bar "||"
}

diatonicExerciseTwoFSharpMajor = \transpose c fs \relative c { 
    \key c \major
    \time 4/4
    \lh c8 d e g  d e f a | 
    e8 f g b  f g a c | 
    g8 a b d  a b c e | 
    b8 c d f c2 | \break

    c8 d e g  d e f a | 
    e8 f g b  \rh f \lh g a c | 
    \lh g8 a b d  a b c e | 
    b8 c d f c2 | \break

    c8 a \lh g \rh f  b g f e | 
    a8 f e d  g e d c | 
    f8 d c b  e c b a | 
    d8 b a g c2
    \bar "||"
}

diatonicExerciseThreeFSharpMajor = \transpose c fs \relative c { 
    \key c \major
    \time 4/4
    \lh c8 d e f  g f e \lh c | 
    d8 e f g  a g f d | 
    e8 f g a  b a g e | 
    f8 g a b  c b a f | 
    g8 a b c  d c b g | 
    a8 b c d  e d c a | 
    b8 c d e  f e d b | 
    c1 | \break

    c8 d e f  g f e c | 
    d8 e \rh f \lh g  a \lh g \rh f d | 
    e8 \rh f \lh g a  b a \lh g e | 
    \rh f8 \lh g a b  c b a \lrh f | 
    \lh g8 a b c  d c b \lh g | 
    a8 b c d  e d c a | 
    b8 c d e  f e d b | 
    c1 | \break

    c8 b a \lh g  \rh f \lh g a c | 
    b8 a \lh g \rh f  e f g b | 
    a8 \lh g \rh f e  d e f a | 
    \lh g8 \rh f e d  c d e g | 
    f8 e d c  b c d f | 
    e8 d c b  a b c e | 
    d8 c b a  g a b d |
    c1
    \bar "||"
}
