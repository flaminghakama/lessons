pentatonicExerciseOneGMinor = \relative c'' { 
    \key g \minor
    \time 4/4
    \tuplet 3/2 4 { 
        g8 f g  bf g bf  c bf c  d c d | 
        f8 d f } g4  

    \tuplet 3/2 4 { 
        g8 f g  bf g bf  |
        c8 bf c  d c d  
        f8 d f  df c bf } | 
        g2 

    \tuplet 3/2 4 { 
        d'?8 f d  c d c  |
        bf8 c bf  g bf g  
        f8 g f  d f d  |
        c8 d c  bf8 c bf } 

        g4 
    \tuplet 3/2 4 { 
        g8 bf g  |
        f8 g f  d f d  
        c8 d c  bf8 c bf |
         c d c  d f d  f g f } g4 
    \bar "|."
}

pentatonicExerciseTwoGMinor = \relative c'' { 
    \key g \minor
    \time 3/4
    g4 \tuplet 3/2 4 {
        d8 c bf  f' d c |

        g'8 f d  bf' g f  c' bf g |
        d'8 c bf  f'8 d c } g'4 | 
    \tuplet 3/2 4 { 
        g8 f d  bf' g f  
        c'8 bf g  d' c bf 
        f'8 d c  df c bf } |
        g4

    \tuplet 3/2 4 { 
        c8 d f  bf,8 c d | 
        g,8 bf c  
        f,8 g bf  
        d,8 f g |
        c,8 d f  
        bf,8 c d } g,4 |
    
    \tuplet 3/2 4 { 
        g8 bf c  f, g bf 
        d,8 f g |
        c,8 d f 
        bf,8 c d  f g bf } | 
        g2. | 
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

pentatonicExerciseFiveGMinor = \relative c'' {
    \key g \minor
    \time 6/4
    g8 f df c  bf [ c d f ]  g2 | 
    d8 f g df'  c [ bf g f ]  g2 | 
    g8 bf c df  d [ df c bf ]  g2 | 
    f8 g bf c  df [ c bf f ]  g2 |
    bf8 c d? f  g [ df c bf ]  g2 | 
    df'8 c bf g  c [ bf g f ]  g2 | 
    df'8 d g f  d [ df c bf ]  g2 |

    d'8 f g df'  c [ bf g f ]  g2 | 
    f8 g bf c  df [ c bf f ]  g2 |
    g8 bf c df  d [ df c bf ]  g2 | 
    bf8 c df d   f [ df c bf ]  g2 | 
    df'8 c bf g  c [ bf g f ]  g2 | 
    df'8 d f df   c [ bf g f ]  g2 |

    f'8 d df c  bf [ g f d ]  df [ c bf g ] | 
    f8 d? c bf  g'1 |  

    \bar "|."
}

%{}

pentatonicExerciseFiveDMinor = \relative c' {
    \key d \minor
    \time 6/4
    ONE8 THREE FOUR FLATIVE  FIVE [ FLATIVE FOUR THREE ]  ONE2 | 
    SEVEN8 ONE THREE FOUR  FLATIVE [ FOUR THREE SEVEN ]  ONE2 |
    THREE8 FOUR FIVE? SEVEN  ONE [ FLATIVE FOUR THREE ]  ONE2 | 
    FLATIVE'8 FOUR THREE ONE  FOUR [ THREE ONE SEVEN ]  ONE2 | 
    FLATIVE'8 FIVE ONE SEVEN  FIVE [ FLATIVE FOUR THREE ]  ONE2 |

    SEVEN'8 ONE THREE FOUR  FLATIVE [ FOUR THREE SEVEN ]  ONE2 |
    ONE8 THREE FOUR FLATIVE  FIVE [ FLATIVE FOUR THREE ]  ONE2 | 
    THREE8 FOUR FIVE? SEVEN  ONE [ FLATIVE FOUR THREE ]  ONE2 | 
    FLATIVE'8 FOUR THREE ONE  FOUR [ THREE ONE SEVEN ]  ONE2 | 
    FLATIVE'8 FIVE ONE SEVEN  FIVE [ FLATIVE FOUR THREE ]  ONE2 |

    THREE'8 ONE SEVEN FIVE  FLATIVE [ FOUR THREE ONE ]  SEVEN [ FIVE FLATIVE FOUR ] | 
    THREE8 ONE SEVEN ONE  FLATIVE' [ FOUR THREE SEVEN ]  ONE SEVEN d THREE | 

    \bar "|."
}

%}

pentatonicExerciseSixGMinor = \relative c'' {
    \key g \minor
    \time 4/4
    g8 bf, c df  d f g bf |
    c8 df d f  g8 bf c df |
    d?8 f d df  c  bf g f | 
    d?8 df c bf  g f d df |
    c8 bf d? f  g2 |
    \bar "|."
}
