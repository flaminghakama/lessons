pentatonicExerciseZeroBMinor = \relative c' { 
    \key b \minor
    \time 4/4
    <b b'>1 | <d d'> | <e e'> | <fs fs'> | <a a'> 
    \bar "||" 
    b'1 | d | e,,, | fs | a |  
    \bar "||" \break
    \time 3/4
    b2 d4 | e fs a | b2 a4 | fs e d | b2. |
    b'2 d4 | e fs a | b2 a4 | fs e d | b2. | \break
    b'2 a4 | fs e d | b2 d4 | e fs a | b2. |
    b,2 a4 | fs e d | b2 d4 | e fs a | b2. |
    \bar "||" \break
    \time 4/4
    b,8 e d fs  e a fs b | a d b2. | 
    b8 e d fs  e a fs b | a d b2. | \break
    b8 fs a e  fs d e b | d a b2. | 
    b8 fs a e  fs d e b | d a b2. | 
    \bar "||" 
    b8 a d b  e d fs e | a fs b2. | 
    b8 a d b  e d fs e | a fs b2. | 
    b8 d a b  fs a e fs | d e b2. | 
    b8 d a b  fs a e fs | d e b2. | 
    \bar "|."
}

pentatonicExerciseOneBMinor = \relative b' { 
    \key b \minor
    \time 4/4
    \partial 2*1
    \tuplet 3/2 4 { r8 b a  fs f e  | 
        d8 b d  e d e  fs e fs  a fs a | 
        b8 a d } b2 

    \tuplet 3/2 4 { b8 a b  |
        d8 b d  e d e  fs e fs  a fs a  |
        b8 a d } b2 

    \tuplet 3/2 4 { b8 a b | 
        d8 b d  e d e  f e d } b4 |

    \tuplet 3/2 4 { d8 e d  b d b 
        a8 b a  fs a fs | 
        e8 fs e  d e d  
        b d a } b4 |
        \tuplet 3/2 4 { b8 d b  a b a  fs a fs  e fs e | 
        d8 e d  b d e  f e d } b4 ~ | 1 
    \bar "|." 
}

pentatonicExerciseTwoBMinor = \relative b' { 
    \key b \minor
    \time 3/4
    b2 \tuplet 3/2 4 { 
        a8 fs f  
        e8 d b  fs' e d   a' fs e | 
        b'8 a fs  d' b a } b4 |
    \tuplet 3/2 4 { 
        b8 a fs  d' b a  e' d b |
        fs'8 e d  a' fs e  b' a fs |
        d'8 b a } b4
    \tuplet 3/2 4 { 
        b8 a fs  |
        d'8 b a  e' d b  d b a } |
        b2.

    \tuplet 3/2 4 { 
        b8 d e  a,8 b d  fs, a b  |
        e,8 fs a  d, e fs } b,4 | 
    \tuplet 3/2 4 { 
        b8 d e  a, b d fs,8 a b 
        e,8 fs a  d,8 e fs  b, d e 
        f8 e d  f fs a } b4 
    \bar "|." 
}

pentatonicExerciseThreeBMinor = \relative b' { 
    \key b \minor
    \time 6/4
    \partial 4*1 b8 a
    \set Timing.beatStructure = 2,2,2
    fs8 e d b  fs' e d b  a' fs e d  |
    b'2 
    b8 a fs e  d' b a fs  |
    e'8 d b a  fs' e d b  a' fs e d  |
    b'2 
    b8 a fs e   d' b a fs  |
    e'8 d b a  d b a fs  b2 |

    a8 b d e 
    fs,8 a b d  
    e,8 fs a b   
    d,8 e fs a 
    b,2  
    b8 d e fs
    a,8 b d e  
    fs,8 a b d  
    e,8 fs a b 
    d,8 e fs a  
    b,8 d e fs 
    b2
    \bar "|." 
}

pentatonicExerciseFourBMinor = \relative b { 
    \key b \minor
    \time 4/4
    \tuplet 3/2 4 {
        b8 d e  fs a fs  
        d8 e fs  a b a |
        e8 fs a  b d b  
        fs8 a b  d e d |
        a8 b d  e fs e } b4 b, | 
    \tuplet 3/2 4 { 
        b'8 d e  fs a fs  d e fs  a b a |
        e8 fs a  b d b  fs a b  d e d } | b4 b,,
    \tuplet 3/2 4 { 
        e''8 d b  a fs a | 
        d8 b a  fs e fs  
        b8 a fs  e d e  |
        a8 fs e  d b d  
        fs8 e d  b a b | 
        e8 d b  a fs a 
        d8 b a  fs e fs } | b4 b,      
    \tuplet 3/2 4 { 
        b'8 a fs  e d e | 
        a8 fs e  d b d  
        
        } b2 
    \bar "|." 
}

pentatonicExerciseFiveBMinor = \relative b' {
    \key b \minor
    \time 6/4
    a8 b d e  f [ e d a ]  b2 |
    b8 d e f  fs [ f e d ]  b2 | 
    d8 e fs? a  b [ f e d ]  b2 | 
    f'8 e d b  e [ d b a ]  b2 | 
    f'8 fs b a  fs [ f e d ]  b2 |

    a'8 b d e  f [ e d a ]  b2 |
    f'8 e d b  e [ d b a ]  b2 | 

    b,,8 d e f  fs [ f e d ]  b2 | 
    d8 e fs? a  b [ f e d ]  b2 | 
    f'8 fs b a  fs [ f e d ]  b4. 

    f'''8 |
    e8 d b a  f [ e d b ]  a [ f e d ] |
    b1.  
    \bar "|."
}

pentatonicExerciseSixBMinor = \relative b {
    \key b \minor
    \time 4/4
    b8 d e f  fs a b d |
    e8 f fs a  b d e f | 
    e8 d b a  fs f e d | 
    b8 a fs f  e d b d' |
    b1  
    \bar "|."
}
