pentatonicExerciseZeroDMajor = \relative c' { 
    \key d \major
    \time 4/4
    <d d'>1 | <e e'> | <fs fs'> | <a a'> | <b b'> | 
    \bar "||" 
    d'1 | e | b,, | 
    \bar "||" \break
    \time 3/4
    d2 e4 | fs a b | d2 b4 | a fs e | d2. |
    d'2 e4 | fs a b | d2 b4 | a fs e | d2. | 
    d'2 b4 | a fs e | d2 e4 | fs a b | d2. | \break
    d,2 b4 | a fs e | d2 e4 | fs a b | d2. | 
    \bar "||" \break
    \time 4/4
    d,8 fs e a  fs b a d | b e d2. | 
    d8 fs e a  fs b a d | b e d2. | 
    d8 a b fs  a e fs d | e b d2. | \break
    d8 a b fs  a e fs d | e b d2. |
    \bar "||" 
    d8 b e d  fs e a fs | b a d2. | \break
    d8 b e d  fs e a fs | b a d2. | 
    d,8 fs b, d  a b fs a | e fs d2. |
    \bar "|."
}

pentatonicExerciseOneDMajor = \relative c' { 
    \key d \major
    \time 3/4
    \tuplet 3/2 4 { 
        c4 c8  d c d  e d e | 
        g8 e g  a g a  c a c |
        d8 c a } c2 |

    \tuplet 3/2 4 { 
        c8 a c  d c d  e d e | 
        g8 e g  a g a  c a c |
        d8 c a  } c2 |

    \tuplet 3/2 4 { 
        c8 a c  d c d  e d e } | 
        c2. |

    \tuplet 3/2 4 { 
        c8 d c  a c a  g a g |
        e8 g e  d e d  c d a | } | c2.  

    \tuplet 3/2 4 { 
        c8 d c  a c a  g a g |
        e8 g e  d e d  c d a' | } | c,2.  
    \bar "|."
}

pentatonicExerciseTwoDMajor = \relative c' { 
    \key d \major
    \time 3/4
    c4 \tuplet 3/2 4 { 
        e8 d c  g' e d  | a' g e }  
    c'4

    \tuplet 3/2 4 {
        c8 a g  |
        d' c a  e' d c  g' e d |
        a'8 g e } 
    c'2 |
    \tuplet 3/2 4 {
        c8 a g  d' c a  e' d c |
        g8 e d' } c2 |
    
    \tuplet 3/2 4 { 
        c8 d e  
        a,8 c d  
        g,8 a c | 
        e,8 g a 
        d,8 e g }
        c4 |

    \tuplet 3/2 4 { 
        c,8 d e  
        a8 c d  
        g,8 a c |
        e,8 g a 
        d,8 e g 
        c,8 d e | 
        a8 c, g' } 
    c2
    \bar "|." 
}

pentatonicExerciseThreeDMajor = \relative c'' { 
    \key d \major
    \time 4/4
    a2  g8 e d c | 
    a'8 g e d  c' a g e |
    d' c a g  e' d c a |
    g' e d c  a'2 |

    a8 g e d  c' a g e |
    d' c a g  e' d c a |
    ef' d c g  a2 | 

    a8 c d e
    g,8 a c d | 
    e,8 g a c 
    d,8 e g a |
    c,8 d e g 
    a,2 |

    a8 c d e 
    g,8 a c d |
    e,8 g a c 
    d,8 e g a | 
    c,8 d e g  
    a8 ef' d c | 
    a1 |
    \bar "|." 
}

pentatonicExerciseFourDMajor = \relative c'' { 
    \key d \major
    \time 4/4
    a1 
    \tuplet 3/2 4 {
        c,8 d e  g a g 
        d8 e g  a c a |
        e8 g a  c d c  
        g8 a c  d e d |

        a8 c d  e g e 
        c8 d e  g a g |
        d8 e g  a c a 
        e8 g a  c d c | 
        g8 a c  d e d } a2 |

    \tuplet 3/2 4 {
        e'8 d c  a g a  
        d8 c a  g e g |
        c8 a g  e d e }   
        a2 |
 
    \tuplet 3/2 4 {
        a8 g e  d c d 
        g8 e d  c a c |
        e8 d c  a g a  
        d8 c a  g e g |
        c8 a g  e d e  } a2 |
    \tuplet 3/2 4 {
        a8 g e  d c d 
        g8 e d  c d e } | 
        a1  
    \bar "|." 
}

pentatonicExerciseFiveDMajor = \relative c'' {
    \key d \major
    \time 6/4
    ef8 e g ef   d [ c a g ]  a2 |
    a8 g ef d  c [ d e g ]  a2 | 
    e8 g a ef'  d [ c a g ]  a2 | 
    a8 c d ef  e [ ef d c ]  a2 | 
    c8 d ef e   g [ ef d c ]  a2 | 
    g8 a c d  ef [ d c g ]  a2 |
    c8 d e? g  a [ ef d c ]  a2 | 
    ef'8 d c a  d [ c a g ]  a2 | 
    ef'8 e a g  e [ ef d c ]  a2 |

    e'8 g a ef'  d [ c a g ]  a2 | 
    g8 a c d  ef [ d c g ]  a2 |
    a8 c d ef  e [ ef d c ]  a2 | 
    ef'8 d c a  d [ c a g ]  a2 | 

    e'8 ef d c  a [ g e ef ]  d [ c a g ] | 
    e8 ef d c  d [ ef e g ] a'2 |  

    \bar "|."
}

pentatonicExerciseSixDMajor = \relative c'' {
    \key d \major
    \time 4/4
    a8 c, d ef  e g a c |
    d8 ef e g  a8 c d ef |
    e?8 ef d c  a g e ef | 
    d8 c a g  e ef d c |
    a'1 |
    \bar "|."
}
