pentatonicExerciseZeroEMinor = \relative c' { 
    \key e \minor
    \time 4/4
    <e e'>1 | <g g'> | <a a'> | <b b'> | <d d'> |
    \bar "||" 
    e'1 | b,, | d | 
    \bar "||" \break
    \time 3/4
    e2 g4 | a b d | e2 d4 | b a g | e2. |
    e'2 g4 | a b d | e2 d4 | b a g | e2. | \break
    e'2 d4 | b a g | e2 g4 | a b d | e2. |
    e,2 d4 | b a g | e2 g4 | a b d | e2. |
    \bar "||" \break
    \time 4/4
    e,8 a g b  a d b e | d g e2. | 
    e'8 b d a  b g a e | g d e2. |
    e8 b d a  b g a e | g d e2. |
    \bar "||" 
    e8 d g e  a g b a | d b e2. | 
    e8 d g e  a g b a | d b e2. | 
    e,8 g d e  b d a b | g a e2. |
    \bar "|."
}

pentatonicExerciseOneEMinor = \relative c' { 
    \key e \minor
    \time 4/4
    \tuplet 3/2 4 { e8 d e  d b d  e d e  g e g  |
        a g a  b a b  d b d  e d g | } e1 | 
    \tuplet 3/2 4 { e8 d e  g e g  a g a  b a b | d b d  } e2. | 
    \tuplet 3/2 4 { d8 e d  b d b  a b a  g a g  | e g d } e2. | 
    \tuplet 3/2 4 { e8 g e  d e d  b d b  a b a | 
        g8 a g  e g e  d e d  b d b  |
        e8 d e  g e d } e2 | 
    \bar "|." 
}

pentatonicExerciseTwoEMinor = \relative c' { 
    \key e \minor
    \time 4/4
    \tuplet 3/2 4 { e8 d b  g' e d  a' g e  b' a g | d' b a  e' d b  g' e d } e4 |
    \tuplet 3/2 4 { e8 d b  g' e d  a' g e  b' a g | d' b a  e' d b  bf b d } e4 | 
    \tuplet 3/2 4 { b8 d e  a, b d  g, a b } e,4  |
    \tuplet 3/2 4 { e8 g a  d, e g  b, d e   a,8 b d  |
        g,8 a b  e, g a  d, e g  b, d e |
        bf'8 a g  e d b } e2 |
    \bar "|." 
}

pentatonicExerciseThreeEMinor = \relative c' { 
    \key e \minor
    \time 4/4
    e8 d e d  g e d b | a' g e d  b' a g e | d' b a g  e'2 | 
    e8 d b a  g' e d b | a' g e d  b' a g e | d' b a g  e'2 | 

    a,8 b d e  g, a b d |
    e,8 g a b  d, e g a |
    b,8 d e g  a, b d e | 
    g, a b d  e,2 | 

    e8 g a b  d, e g b | 
    b,8 d e g  bf a g d |
    e1 |
    \bar "|." 
}

pentatonicExerciseFourEMinor = \relative c' { 
    \key e \minor
    \time 4/4
    e4 \tuplet 3/2 4 {
        d8 e d  b d e  g a g |
        d8 e g  a b a  e g a  b d b |
        g8 a b  d e d  a b d  e g e |
        b8 d e  g a g  d e g  a b a | } e2 
    \tuplet 3/2 4 { 
        e8 g a  b d b |
        g8 a b  d e d }  e2 |
    \tuplet 3/2 4 { 
        e8 d b  a g a 
        d8 b a  g e g | 
        b8 a g  e d e 
        a8 g e  d b d |
        g8 e d  b a b  }  e2 |  
    \tuplet 3/2 4 { 
        e8 d b  a g a  d b a  g e g | 
        b8 a g  e d e  a g e  d b d } | e1 
    \bar "|." 
}

pentatonicExerciseFiveEMinor = \relative c' {
    \key e \minor
    \time 6/4
    e8 g a bf  b [ bf a g ]  e2 | 
    d8 e g a  bf [ a g d ]  e2 |
    g8 a b? d  e [ bf a g ]  e2 | 
    bf'8 a g e  a [ g e d ]  e2 | 
    bf'8 b e d  b [ bf a g ]  e2 |

    d'8 e g a  bf [ a g d ]  e2 |
    e8 g a bf  b [ bf a g ]  e2 | 
    g8 a b? d  e [ bf a g ]  e2 | 
    bf'8 a g e  a [ g e d ]  e2 | 
    bf'8 b e d  b [ bf a g ]  e2 |

    e'8 d b bf   a [ g e d ]  b [ bf a g ] |
    e8 d b d  e1 |
    \bar "|."
}

pentatonicExerciseSixEMinor = \relative c' {
    \key e \minor
    \time 4/4
    \partial 2*1
    e8 d b bf |
    b8 d e g  a bf b d |  
    e8 g a bf  b d e d|
    e8 d b bf  a g e d |
    b8 bf a g  e d b d | 
    e1 
    \bar "|."
}
