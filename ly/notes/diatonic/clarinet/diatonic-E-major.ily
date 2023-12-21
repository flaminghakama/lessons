lh = { <>^\markup { \bold " L" } }
rh = { <>^\markup { \bold " R" } }
lrh = { <>^\markup { \bold "L-R" } }
rlh = { <>^\markup { \bold "R-L" } }

instructionE = \markup {
    \fill-line {
        \center-column {
            \null
            \null
            "Since the note G# in the lower register can only be played with the Right hand,"
            "when it is preceded or followed by the note F#,"
            "we finger the note F# with the Left hand." 
            \null
            "Similarly, the note D# in the middle register can only be played with the Right hand,"
            "when it is preceded or followed by the note C#,"
            "we finger the note C# with the Left hand." 
            \null
            "Likewise, in the low register when we need to play the note F# with the Left hand,"
            "and it is preceded or followed by the note E,"
            "we finger the note low E with the Right hand."
            \null
            "Similarly, when we need to play the note middle C# with the Left hand,"
            "and it is preceded or followed by the note B,"
            "we finger the note B with the Right hand."
            \null
            "Sometimes we cannot alternate between hands every note"
            "such as in the low register when both F# and E are in between two G#'s,"
            "or in the middle register when both C# and B are in between two D#'s."
            \null 
            "In cases where the middle register C# follows the D#, or the low register F# follows the G#,"
            "we can finger both with the Right hand,"
            "although this is not ideal since there will be a little delay and a click."
            \null 
            "More generally, we can start one note with one finger then,"
            "while still playing the note, add the other finger and release the first."
        }
    }
}

diatonicFingeringExampleEMajor = \relative c'' { 
    \key af \major
    \time 2/4
    \rh ds8 \rh cs \lh b ds |
    ds8 \lh cs \rlh b16 [ ~ 16 ds8 ] |
    ds8 [ \lrh b16 ~ 16 ] cs8 ds | 
    ds8 \lh b \rlh cs16 [ ~ 16 ds8 ] |
    \rh gs,,8 \rh fs \lh e gs |
    gs8 \lh fs \rlh e16 [ ~ 16 gs8 ] |
    gs8 [ \lrh e16 ~ 16 ] fs8 gs | 
    gs8 \lh e \rlh fs16 [ ~ 16 gs8 ] 
    \bar "|." 
}

diatonicExerciseOneEMajor = \transpose c e \relative c { 
    \key c \major
    \time 3/4
    c8 e g e c4 | 
    \rh d8 f a f \lh d4 | 
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
    a8 c e c \lh a4 | 
    b8 d f d b4 | 
    c2. | \break

    c8 a f a c4 |
    b8 g e g b4 | 
    \lh a8 f d f \rh a4 | 
    g8 e c e g4 | 
    f8 d b d f4 | 
    e8 c a c e4 | 
    d8 b g b d4 
    c2. 
    \bar "||"

}

diatonicExerciseTwoEMajor = \transpose c e \relative c { 
    \key c \major
    \time 4/4
    \rh c8 \lh d e g  \lh d e f a | 
    e8 f g b  f g a c | 
    g8 a b d  a b c e | 
    b8 c d f c2 | \break

    c8 d e g  d e f a | 
    e8 f g b  f g a c | 
    \rh g8 \lh a b d  \lh a b c e | 
    b8 c d f c2 | \break

    c8 a g f  b g f e | 
    a8 f e d  g e d c | 
    f8 d c b  e c b a | 
    d8 b a g c2 
    \bar "||"
}

diatonicExerciseThreeEMajor = \transpose c e \relative c { 
    \key c \major
    \time 4/4
    \rh c8 \lh d e f  g f e c | 
    \rlh d8 e f g  a g f \lh d | 
    e8 f g a  b a g e | 
    f8 g a b  c b a f | 
    g8 a b c  d c b g | 
    a8 b c d  e d c a | 
    b8 c d e  f e d b | 
    c1 | \break

    c8 d e f  g f e c | 
    d8 e f g  a g f d | 
    e8 f \rh g \lh a  b \lh a \rh g e | 
    f8 \rh g \lh a b  c b \lh a f | 
    \rh g8 \lh a b c  d c b g | 
    \rlh a8 b c d  e d c \lh a | 
    b8 c d e  f e d b | 
    c1 | \break

    c8 b \lh a \rh g  f g a c | 
    b8 \lh a \rh g f  e f \lh g b | 
    \lh a8 \rh g f e  d e f a | 
    g8 f e d  c d e g | 
    f8 e d c  b c d f | 
    e8 d c b  a b c e | 
    d8 c b a  g a b d |
    c1 
    \bar "||"    
}


