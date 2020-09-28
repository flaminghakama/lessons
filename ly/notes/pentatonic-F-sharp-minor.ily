pentatonicExerciseOneFSharpMinor = \relative c' { 
    \key fs \minor
    \time 4/4
    \tuplet 3/2 4 { 
        fs8 e fs  a fs a  b a b  cs b cs | 
        e8 cs e } fs4  

    \tuplet 3/2 4 { 
        fs8 e fs  a fs a  |
        b8 a b  cs b cs  
        e8 cs e  c b a } | 
        fs2 

    \tuplet 3/2 4 { 
        cs'?8 e cs  b cs b  |
        a8 b a  fs a fs  
        e8 fs e  cs e cs  |
        b8 cs b  a8 b a } 

        fs4 
    \tuplet 3/2 4 { 
        fs8 a fs  |
        e8 fs e  cs e cs  
        b8 cs b  cs e a } |
        fs1 
    \bar "|."
}

pentatonicExerciseTwoFSharpMinor = \relative c' { 
    \key fs \minor
    \time 3/4
    \tuplet 3/2 4 {
        fs8 e cs  a' fs e  b' a fs |
        cs'8 b a  e'8 cs b } fs'4 | 
    \tuplet 3/2 4 { 
        fs8 e cs  a' fs e  
        b'8 a fs  cs' b a 
        e'8 cs b  c b a } |
        fs4

    \tuplet 3/2 4 { 
        b8 cs e  a,8 b cs | 
        fs,8 a b  
        e,8 fs a  
        cs,8 e fs |
        b,8 cs e  
        a,8 b cs } fs,4 |
    
    \tuplet 3/2 4 { 
        fs8 a b  e, fs a 
        cs,8 e fs |
        b,8 cs e } fs2 | 
    \bar "|." 
}

pentatonicExerciseThreeFSharpMinor = \relative c' { 
    \key fs \minor
    \time 4/4
    fs8 e cs b  a' fs e cs |
    b' a fs e  cs' b a fs |
    e' cs b a  fs'2 |

    fs8 e cs b  a' fs e cs |
    b' a fs e  cs' b a fs |
    e' cs b a  fs2 | 

    a8 b cs e  fs, a b cs |
    e,8 fs a b  cs, e fs a |
    b,8 cs e fs  a, b cs e |
    fs,2 

    fs8 a b cs |
    e,8 fs a b  cs, e fs a |
    b,8 c cs e  fs c' b a  | fs1  |
    \bar "|." 
}

pentatonicExerciseFourFSharpMinor = \relative c' { 
    \key fs \minor
    \time 4/4
    fs2
    \tuplet 3/2 4 {
        b,8 cs e  fs a fs |
        cs8 e fs  a b a  
        e8 fs a  b cs b |

        fs8 a b  cs e cs 
        a8 b cs  e fs e |
        b8 cs e  fs a fs 
        cs8 e fs  a b a | 
        e8 fs a  b cs b } fs2 |

    \tuplet 3/2 4 {
        e'8 cs b  a fs a 
        cs8 b a  fs e fs | 
        b8 a fs  e cs e 
        a8 fs e  cs b cs } |  
        fs2  
 
    \tuplet 3/2 4 {
        fs8 e cs  b a b  |
        e8 cs b  a fs a 
        cs8 b a  fs e fs | 
        b8 a fs  e cs e 
        a8 fs e  cs b cs  } |
    fs1
    \bar "|." 
}

pentatonicExerciseFiveFSharpMinor = \relative c' {
    \key fs \minor
    \time 6/4
    fs8 e cs c  b [ cs e  a ]  fs2 | 
    cs8 e fs c'  b [ a fs e ]  fs2 | 
    fs8 a b c  cs [ c b a ]  fs2 | 
    e8 fs a b  c [ b a e ]  fs2 |
    a8 b cs? e  fs [ c b a ]  fs2 | 
    c'8 b a fs  b [ a fs e ]  fs2 | 
    c'8 cs fs e  cs [ c b a ]  fs2 |

    cs'8 e fs c'  b [ a fs e ]  fs2 | 
    e8 fs a b  c [ b a e ]  fs2 |
    fs8 a b c  cs [ c b a ]  fs2 | 
    a8 b c cs   e [ c b a ]  fs2 | 
    c'8 b a fs  b [ a fs e ]  fs2 | 
    c'8 cs e c   b [ a fs e ]  fs2 |

    e'8 cs c b  a [ fs e cs ]  c [ b a fs ] | 
    e8 cs? c b  fs'1 |  

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

pentatonicExerciseSixFSharpMinor = \relative c' {
    \key fs \minor
    \time 4/4
    fs8 b, c cs  e fs a b |
    c8 cs e fs  a b c cs |
    e8 cs c b  a fs e cs | 
    c8 b a fs  e cs c b|
    fs'1 |
    \bar "|."
}
