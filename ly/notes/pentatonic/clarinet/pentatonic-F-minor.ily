pentatonicExerciseOneFMinor = \relative c' { 
    \key f \minor
    \time 4/4
    \tuplet 3/2 4 { f8 ef f  ef c ef  c bf c  ef c ef  |
        f ef f  af f af  bf af bf  c bf c  |
        ef c ef  f ef af } f2 | 
    \tuplet 3/2 4 { f8 ef f  af f af  bf af bf  c bf c | ef c ef  } f2. | 
    \tuplet 3/2 4 { ef8 f ef  c ef c  bf c bf  af bf af  | f af ef } f2. | 
    \tuplet 3/2 4 { f8 af f  ef f ef  c ef c  bf c bf | 
        af8 bf af  f af f  ef f ef  c ef c  |
        bf8 b c  ef f af } f2 | 
    \bar "|." 
}

pentatonicExerciseTwoFMinor = \relative c' { 
    \key f \minor
    \time 4/4
    \tuplet 3/2 4 { f8 ef c  af' f ef  bf' af f  c' bf af | ef' c bf  f' ef c  af' f ef } f4 |
    \tuplet 3/2 4 { f8 ef c  af' f ef  bf' af f  c' bf af | ef' c bf  f' ef c  b c ef } f4 | 
    \tuplet 3/2 4 { c8 ef f  bf, c ef  af, bf c } f,4  |
    \tuplet 3/2 4 { f8 af bf  ef, f af  c, ef f   bf,8 c ef  |
        af,8 bf c } f,4  \tuplet 3/2 4 { f8 af bf  ef, f af  
        c,8 ef f  bf, c ef  f b bf  af f ef } |
        f1 
    \bar "|." 
}

pentatonicExerciseThreeFMinor = \relative c' { 
    \key f \minor
    \time 4/4
    f8 ef c bf  af' f ef c | bf' af f ef  c' bf af f | ef' c bf af  f'2 | 
    f8 ef c bf  af' f ef c | bf' af f ef  c' bf af f | ef' c bf af  f'2 | 

    bf,8 c ef f  af, bf c ef |
    f,8 af bf c  ef, f af bf |
    c,8 ef f af  bf, c ef f | 
    af, bf c ef  f,2 | 

    f8 af bf c  ef, f af c | 
    c,8 ef f af  bf, c ef af |
    f1 |
    \bar "|." 
}

pentatonicExerciseFourFMinor = \relative c' { 
    \key f \minor
    \time 4/4
    f2 \tuplet 3/2 4 {
        ef8 f ef  c ef c  |
        bf c ef  f8 af f c8 ef f af bf af |
        ef8 f af  bf c bf  f af bf  c ef c |
        af8 bf c  ef f ef  bf c ef  f af f |
        c8 ef f  af bf af  ef f af  bf c bf | } f2 
    \tuplet 3/2 4 { 
        f8 af bf  c ef c |
        af8 bf c  ef f ef }  f2 |
    \tuplet 3/2 4 { 
        f8 ef c  bf af bf 
        ef8 c bf  af f af | 
        c8 bf af  f ef f 
        bf8 af f  ef c ef |
        af8 f ef  c bf c  }  f2 |  
    \tuplet 3/2 4 { 
        f8 ef c  bf af bf  ef c bf  af f af | 
        c8 bf af  f ef f  bf af f  ef c ef |
        af8 f ef c bf c  f ef c  bf b c } | f2 
    \bar "|." 
}

pentatonicExerciseFiveFMinor = \relative c' {
    \key f \minor
    \time 6/4
    f8 af bf b  c [ b bf af ]  f2 | 
    ef8 f af bf  b [ bf af ef ]  f2 |
    af8 bf b? ef  f [ b, bf af ]  f2 | 
    b8 bf af f  bf [ af f ef ]  f2 | 
    b8 c f ef  c [ b bf af ]  f2 |

    ef'8 f af bf  b [ bf af ef ]  f2 |
    f8 af bf b  c [ b bf af ]  f2 | 
    af8 bf b? ef  f [ b, bf af ]  f2 | 
    b8 bf af f  bf [ af f ef ]  f2 | 
    b8 c f ef  c [ b bf af ]  f2 |

    f'8 ef c b   bf [ af f ef ]  c [ b bf af ] |
    f8 ef c ef  f1 |
    \bar "|."
}

pentatonicExerciseSixFMinor = \relative c' {
    \key f \minor
    \time 4/4
    \partial 2*1
    f8 ef c cf |
    bf8 b c ef  f af bf b | 
    c8 ef f af  f af bf b  |
    c8 ef f ef  c b bf af |
    f8 ef c b  bf af f ef |
    c b bf ef f2  
    \bar "|."
}
