pentatonicExerciseOneDMinor = \relative c' { 
    \key d \minor
    \time 4/4
    \tuplet 3/2 4 { d8 c d  f d f  g f g  a g a | c a c  d c f } d2 | 
    \tuplet 3/2 4 { d8 c d  f d f  g f g  a g a | c a c  d c f } d2 | 
    \tuplet 3/2 4 { d8 f d  c d c  a c a  g a g | f g f  d f c } d2 
    \tuplet 3/2 4 { d8 f d  c d c  a c a  g a g | f g f  d f c } d2 | 
    \bar "|." 
}

pentatonicExerciseTwoDMinor = \relative c' { 
    \key d \minor
    \time 4/4
    \tuplet 3/2 4 { d8 c d  f d c  g' f d  a' g f | c' a g  d' c a  f' d c } d4 |
    \tuplet 3/2 4 { d8 c a  f' d c  g' f d  a' g f | c' a g  d' c a  f' d c } d4 | 
    \tuplet 3/2 4 { c8 d f  a, c d  g, a c  f, g a } | d,4  \tuplet 3/2 4 { d8 f g  c, d f  a, c d |
        g,8 a c  f, g a  d, f g  c, d f } | d1 | 
    \bar "|." 
}

pentatonicExerciseThreeDMinor = \relative c' { 
    \key d \minor
    \time 4/4
    d8 c d c  f d c d | g f d c  a' g f d | c' a g f  d'2 | 
    d8 c a g  f' d c a | g' f d c  a' g f d | c' a g f  d'2 | 
    f8 d c a  d c a g | c a g f  a g f d  | g f d c  f d c a | d2  
    d8 c a g | c a g f  a g f d | g f d c  f d c f | d1 |
    \bar "|." 
}

pentatonicExerciseFourDMinor = \relative c' { 
    \key d \minor
    \time 4/4
    \tuplet 3/2 4 { 
        d8 f g  a c a  f g a  c d c |
        g8 a c  d f d  a c d  f g f |
        c8 d f  g a g } d2 | 
    \tuplet 3/2 4 { 
        d8 f g  a c a  f g a  c d c |
        g8 a c  d f d  a c d  f d c } | d1
    \tuplet 3/2 4 { 
        d8 c a  g f g  c a g  f d f | 
        a8 g f  d c d  g f d  c a c |
        f8 d c  a g a } d2 |     
    \tuplet 3/2 4 { 
        d8 c a  g f g  c a g  f d f | 
        a8 g f  d c d  g f d  c d f } | d1 
    \bar "|." 
}

pentatonicExerciseFiveDMinor = \relative c' {
    \key d \minor
    \time 6/4
    c8 d f g  af [ g f c ]  d2 |
    d8 f g af  a [ af g f ]  d2 | 
    f8 g a? c  d [ af g f ]  d2 | 
    af'8 g f d  g [ f d c ]  d2 | 
    af'8 a d c  a [ af g f ]  d2 |

    c'8 d f g  af [ g f c ]  d2 |
    d8 f g af  a [ af g f ]  d2 | 
    f8 g a? c  d [ af g f ]  d2 | 
    af'8 g f d  g [ f d c ]  d2 | 
    af'8 a d c  a [ af g f ]  d2 |

    f'8 d c a  af [ g f d ]  c [ a af g ] | f d c d  af'8 [ g f c ]  d c d4| 
    \bar "|."
}

pentatonicExerciseSixDMinor = \relative c' {
    \key d \minor
    \time 4/4
    d8 c d f  g af a c | d f g af  a c d f |
    d c a af  g f d c | a af g f  d c d4 | 
    \bar "|."
}
