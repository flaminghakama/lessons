pentatonicExerciseZeroEbMinor = \relative c' { 
    \key ef \minor
    \time 4/4
    <ef ef'>1 | <gf gf'> | <af af'> | <bf bf'> | <df df'> |
    \bar "||" 
    ef'1 | bf,, | df | 
    \bar "||" \break
    \time 3/4
    ef2 gf4 | af bf df | ef2 df4 | bf af gf | ef2. |
    ef'2 gf4 | af bf df | ef2 df4 | bf af gf | ef2. | \break
    ef'2 df4 | bf af gf | ef2 gf4 | af bf df | ef2. |
    ef,2 df4 | bf af gf | ef2 gf4 | af bf df | ef2. |
    \bar "||" \break
    \time 4/4
    ef,8 af gf bf  af df bf ef | df gf ef2. | 
    ef'8 bf df af  bf gf af ef | gf df ef2. |
    ef8 bf df af  bf gf af ef | gf df ef2. |
    \bar "||" 
    ef8 df gf ef  af gf bf af | df bf ef2. | 
    ef8 df gf ef  af gf bf af | df bf ef2. | 
    ef,8 gf df ef  bf df af bf | gf af e2. |
    \bar "|."
}

pentatonicExerciseOneEMinorForEFlat = \relative c' { 
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

pentatonicExerciseTwoEMinorForEFlat = \relative c' { 
    \key e \minor
    \time 4/4
    \tuplet 3/2 4 { e8 d b  g' e d  a' g e  b' a g | d' b a  e' d b  g' e d } e4 |
    \tuplet 3/2 4 { e8 d b  g' e d  a' g e  b' a g | d' b a  e' d b  bf b d } e4 | 
    \tuplet 3/2 4 { b8 d e  a, b d  g, a b } e,4  |
    \tuplet 3/2 4 { e8 g a  d, e g  b, d e   a,8 b d  |
        g,8 a b  e, g a  d, e g  b, d e |
        as'8 a g  e d b } e2 |
    \bar "|." 
}

pentatonicExerciseThreeEMinorForEFlat = \relative c' { 
    \key e \minor
    \time 4/4
    e8 d e d  g e d b | a' g e d  b' a g e | d' b a g  e'2 | 
    e8 d b a  g' e d b | a' g e d  b' a g e | d' b a g  e'2 | 

    a,8 b d e  g, a b d |
    e,8 g a b  d, e g a |
    b,8 d e g  a, b d e | 
    g, a b d  e,2 | 

    e8 g a b  d, e g b | 
    b,8 d e g  as a g d |
    e1 |
    \bar "|." 
}

pentatonicExerciseFourEMinorForEFlat = \relative c' { 
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

pentatonicExerciseFiveEMinorForEFlat = \relative c' {
    \key e \minor
    \time 6/4
    e8 g a as  b [ as a g ]  e2 | 
    d8 e g a  as [ a g d ]  e2 |
    g8 a b? d  e [ as, a g ]  e2 | 

    as8 a g e  a [ g e d ]  e2 | 
    as8 b e d  b [ as a g ]  e2 |
    d'8 e g a  as [ a g d ]  e2 |

    e8 g a as  b [ as a g ]  e2 | 
    g8 a b? d  e [ as, a g ]  e2 | 
    as8 a g e  a [ g e d ]  e2 | 
    
    as8 b e d  b [ as a g ]  e2 |
    e'8 d b as   a [ g e d ]  b [ as a g ] |
    e8 d b d  e1 |
    \bar "|."
}

pentatonicExerciseSixEFlatMinor = \relative c' {
    \key ef \minor
    \time 4/4
    \partial 2*1
    ef8 df bf df |
    ef8 gf af a  bf df ef gf |
    af8 a bf df  ef df bf a |
    af8 gf ef df  bf a af gf |
    ef8 df bf df  ef2 | 
    \bar "|."
}
