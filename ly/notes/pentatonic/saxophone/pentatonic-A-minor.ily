pentatonicExerciseZeroAMinor = \relative c'' { 
    \key a \minor
    \time 4/4
    a1 | c | d | e | g 
    \bar "||" 
    a1 | <c c,,> | <d d,,> | <e e,,> | g,, 
    \bar "||" \break
    \time 3/4
    a2 c4 | d e g | a2 g4 | e d c | a2. |
    a'2 g4 | e d c | a2 c4 | d e g | a2. |
    \bar "||" \break
    \time 4/4
    a,8 d c e  d g e a | g c a2. | 
    a8 e g d  e c d a | c g a2. |
    \bar "||" \break
    a8 g c a  d c e d | g e a2. | 
    a8 c g a  e g d e | c d a2. |
    \bar "|."
}

pentatonicExerciseOneAMinor = \relative c'' { 
    \key a \minor
    \time 4/4
    \tuplet 3/2 4 { 
        a8 g a  c a c 
        d8 c d  e d e |
        g8 e g  a g c } a2 | 

    \tuplet 3/2 4 { 
        a8 g a  c a c 
        d8 c d  e d e | 
        ef8 d c a e g }  a2 | 

    \tuplet 3/2 4 { 
        d8 e d  c d c 
        a8 c a  
        g8 a g |
        e g e  
        d8 e d  
        c8 d c 
        a8 c g } | a2  
    \tuplet 3/2 4 { 
        a8 c a 
        g8 a g | 
        e8 g e  
        d8 e d 
        c8 d c 
        d8 e g } | 
        a1 
    \bar "|."
}

pentatonicExerciseTwoAMinor = \relative c'' { 
    \key a \minor
    \time 3/4
    a4 \tuplet 3/2 4 {
        e8 d c  g' e d |

        a'8 g e  c' a g  d' c a |
        e'8 d c  g'8 e d } a'4 | 
    \tuplet 3/2 4 { 
        a8 g e  c' a g  
        d'8 c a  e' d c 
        ef d c } a4 |

    \tuplet 3/2 4 { 
        c8 d e  
        a,8 c d  
        g,8 a c | 
        e,8 g a 
        d,8 e g  
        c,8 d e } |
    a,4 
    
    \tuplet 3/2 4 { 
        a8 c d  
        g,8 a c |
        e,8 g a 
        d,8 e g 
        c,8 d e | 
        g a c } 
    a2
    \bar "|." 
}

pentatonicExerciseThreeAMinor = \relative c'' { 
    \key a \minor
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

pentatonicExerciseFourAMinor = \relative c'' { 
    \key a \minor
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

pentatonicExerciseFiveAMinor = \relative c'' {
    \key a \minor
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

pentatonicExerciseSixAMinor = \relative c'' {
    \key a \minor
    \time 4/4
    a8 c, d ef  e g a c |
    d8 ef e g  a8 c d ef |
    e?8 ef d c  a g e ef | 
    d8 c a g  e ef d c |
    a'1 |
    \bar "|."
}
