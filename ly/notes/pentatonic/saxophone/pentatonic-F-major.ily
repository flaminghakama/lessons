pentatonicExerciseZeroFMajor = \relative c' { 
    \key f \major
    \time 4/4
    
    <f f'>1 | <g g'> | <a a'> | <c c'> | <d d'> | 
    \bar "||" 
    f'1 | c,, |  
    \bar "||" \break    
    \time 3/4
    f2 g4 | a c d | f2 d4 | c a g | f2. |
    f'2 g4 | a c d | f2 d4 | c a g | f2. | \break
    f'2 d4 | c a g | f2 g4 | a c d | f2. | 
    f,2 d4 | c a g | f2 g4 | a c d | f2. | 
    \bar "||" \break
    \time 4/4
    f,8 a g c  a d c f | d g f2. |  
    f'8 c d a  c g a f | g d f2. | 
    f8 c d a  c g a f | g d f2. |
    \bar "||"
    f8 d g f  a g c a | d c f2. | 
    f8 d g f  a g c a | d c f2. | 
    f,8 g d f  c d a c | g a f2. |
    \bar "|."
}

pentatonicExerciseOneFMajor = \relative c' { 
    \key f \major
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

pentatonicExerciseTwoFMajor = \relative c' { 
    \key f \major
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

pentatonicExerciseThreeFMajor = \relative c'' { 
    \key f \major
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

pentatonicExerciseFourFMajor = \relative c'' { 
    \key f \major
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

pentatonicExerciseFiveFMajor = \relative c'' {
    \key f \major
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

pentatonicExerciseSixFMajor = \relative c'' {
    \key f \major
    \time 4/4
    a8 c, d ef  e g a c |
    d8 ef e g  a8 c d ef |
    e?8 ef d c  a g e ef | 
    d8 c a g  e ef d c |
    a'1 |
    \bar "|."
}
