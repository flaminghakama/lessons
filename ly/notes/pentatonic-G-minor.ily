pentatonicExerciseOneGMinor = \relative c'' { 
    \key g \minor
    \time 4/4
    \tuplet 3/2 4 { 
        g8 f g  bf g bf  c bf c  d c d | 
        f8 d f } g4  

    \tuplet 3/2 4 { 
        g8 f g  bf g bf  |
        c8 bf c  d c d  
        f8 d f  d bf f } | 
        g2 

    \tuplet 3/2 4 { 
        d'8 f d  c d c  |
        bf8 c bf  g bf g  
        f8 g f  d f d  |
        c8 d c  bf8 c bf } 

        g4 
    \tuplet 3/2 4 { 
        g8 bf g  |
        f8 g f  d f d  
        c8 d c  bf8 c bf |
         c d c  d f d } g2 
    \bar "|."
}

pentatonicExerciseTwoGMinor = \relative c'' { 
    \key g \minor
    \time 4/4
    g2 \tuplet 3/2 4 {
        d8 c bf  f' d c |

        g'8 f d  bf' g f  c' bf g  d' c bf | 
        f'8 d c } g'4 
    \tuplet 3/2 4 { 
        g8 f d  bf' g f  |
        c'8 bf g  d' c bf 
        f'8 d c  df c bf } |
        g2 

    \tuplet 3/2 4 { 
        c8 d f  bf,8 c d | 
        g,8 bf c  f,8 g bf  
        d,8 f g  c,8 d f  |
        bf,8 c d } g,4
    
    \tuplet 3/2 4 { 
        g8 bf c  f, g bf | 
        d,8 f g  c, d f 
        bf,8 c d  f g bf } | 
        g1 | 
    \bar "|." 
}

pentatonicExerciseThreeGMinor = \relative c'' { 
    \key g \minor
    \time 4/4
    g2  f8 d c bf | 
    g'8 f d c  bf' g f d |
    c' bf g f  d' c bf g |
    f' d c bf  g'2 |

    g8 f d c  bf' g f d |
    c' bf g f  d' c bf g |
    f' d c bf  g2 | 

    bf8 c d f  g, bf c d |
    f,8 g bf c  d, f g bf |
    c,8 d f g  bf, c d f |
    g,2 

    g8 bf c d |
    f,8 g bf c  d, f g bf |
    c,8 d f g  bf, c d f | 
    g8 df' c bf  g2  |
    \bar "|." 
}

pentatonicExerciseFourGMinor = \relative c'' { 
    \key g \minor
    \time 4/4
    g1 
    \tuplet 3/2 4 {
        bf,8 c d  f g f 
        c8 d f  g bf g |
        d8 f g  bf c bf  
        f8 g bf  c d c |

        g8 bf c  d f d 
        bf8 c d  f g f |
        c8 d f  g bf g 
        d8 f g  bf c bf | 
        f8 g bf  c d c } g2 |

    \tuplet 3/2 4 {
        f'8 d c  bf g bf 
        d8 c bf  g f g | 
        c8 bf g  f d f 
        bf8 g f  d c d } |  
        g2  
 
    \tuplet 3/2 4 {
        g8 f d  c bf c  |
        f8 d c  bf g bf 
        d8 c bf  g f g | 
        c8 bf g  f d f 
        bf8 g f  d c d  } |
    g2 \tuplet 3/2 4 {
        g8 f d  c bf c |
        f8 d c  bf c d } g2 | 
    \bar "|." 
}

%{}
pentatonicExerciseFiveDMinor = \relative c' {
    \key d \minor
    \time 6/4
    d8 f g af  a [ af g f ]  d2 | 
    c8 d f g  af [ g f c ]  d2 |
    f8 g a? c  d [ af g f ]  d2 | 
    af'8 g f d  g [ f d c ]  d2 | 
    af'8 a d c  a [ af g f ]  d2 |

    c'8 d f g  af [ g f c ]  d2 |
    d8 f g af  a [ af g f ]  d2 | 
    f8 g a? c  d [ af g f ]  d2 | 
    af'8 g f d  g [ f d c ]  d2 | 
    af'8 a d c  a [ af g f ]  d2 |

    f'8 d c a  af [ g f d ]  c [ a af g ] | 
    f8 d c d  af' [ g f c ]  d c d f | 
    d2 d'' d,, | 
    \bar "|."
}

pentatonicExerciseSixDMinor = \relative c' {
    \key d \minor
    \time 4/4
    \partial 4*1
    d8 c |
    d8 f g af  a c d f 
    g8 af a c  d f d c |
    a8 af g f  d c a af 
    g8 f d c  d2 | 
    \bar "|."
}

%}