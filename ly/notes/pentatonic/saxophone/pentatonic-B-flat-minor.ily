pentatonicExerciseZeroBbMinor = \relative c' { 
    \key bf \minor
    \time 4/4
    <bf bf'>1 | <df df'> | <ef ef'> | <f f'> | <af af'> 
    \bar "||" 
    bf'1 | df | ef | f |
    \bar "||" \break
    \time 3/4
    bf,,,2 df4 | ef f af | bf2 af4 | f ef df | bf2. |
    bf'2 df4 | ef f af | bf2 af4 | f ef df | bf2. | \break
    bf'2 af4 | f ef df | bf2 df4 | ef f af | bf2. |
    bf,2 af4 | f ef df | bf2 df4 | ef f af | bf2. |
    \bar "||" \break
    \time 4/4
    bf,8 ef df f  ef af f bf | af df bf2. | 
    bf8 ef df f  ef af f bf | af df bf2. | \break
    bf8 f af ef  f df ef bf | df af bf2. | 
    \bar "||" 
    bf8 af df bf  ef df f ef | af f bf2. | 
    \bar "|."
}

pentatonicExerciseOneBbMinor = \relative bf' { 
    \key bf \minor
    \time 4/4
    \partial 2*1
    \tuplet 3/2 4 { r8 bf af  f e ef  | 
        df8 bf df  ef df ef  f ef f  af f af | 
        bf8 af df } bf2 

    \tuplet 3/2 4 { bf8 af bf  |
        df8 bf df  ef df ef  f ef f  af f af  |
        bf8 af df } bf2 

    \tuplet 3/2 4 { bf8 af bf | 
        df8 bf df  ef df ef  f ef df } bf4 |

    \tuplet 3/2 4 { 
        ef8 f ef  df ef df  bf df bf  af bf af | 
        f8 af f  ef f ef  df ef df  bf df af } |
    bf4 \tuplet 3/2 4 { bf8 df bf  af bf af  f af f  |
        ef8 f ef  df ef df  bf df ef  e ef df } |
    bf1
    \bar "|." 
}

pentatonicExerciseTwoBbMinor = \relative bf' { 
    \key bf \minor
    \time 3/4
    bf2 \tuplet 3/2 4 { 
        af8 f e  
        ef8 df bf  f' ef df   af' f ef | 
        bf'8 af f  df' bf af } bf4 |
    \tuplet 3/2 4 { 
        bf8 af f  df' bf af  ef' df bf |
        f'8 ef df  af' f ef  bf' af f |
        df'8 bf af } bf2 |
    \tuplet 3/2 4 { 
        bf8 af f  
        df'8 bf af  
        ef'8 df bf |
        f'8 ef df 
        ef8 df bf 
        df8 bf af }| 
    bf2. |

    \tuplet 3/2 4 { 
        df8 ef f
        bf,8 df ef  
        af,8 bf df | 
        f,8 af bf  
        ef,8 f af  
        df,8 ef f } | 
    bf,4  
    \tuplet 3/2 4 { 
        bf8 df ef  
        af,8 bf df |
        f,8 af bf 
        ef,8 f af  
        df,8 ef f | 
        bf, df ef 
        f8 ef df  
        e f af } |
    bf2. 
    \bar "|." 
}

pentatonicExerciseThreeBbMinor = \relative bf' { 
    \key bf \minor
    \time 6/4
    \partial 4*1 bf8 af
    \set Timing.beatStructure = 2,2,2
    f8 ef df bf  f' ef df bf  af' f ef df  |
    bf'2 
    bf8 af f ef  df' bf af f  |
    ef'8 df bf af  f' ef df bf  af' f ef df  |
    bf'2 
    bf8 af f ef   df' bf af f  |
    ef'8 df bf af  f' ef df bf  ef df bf af | 
    df8 bf af f  bf2 

    bf8 df ef f |
    af,8 bf df ef  
    f,8 af bf df  
    ef,8 f af bf |  
    df,8 ef f af 
    bf,2  
    bf8 df ef f |
    af,8 bf df ef  
    f,8 af bf df  
    ef,8 f af bf |
    df,8 ef f af  
    bf,8 df ef f 
    bf2
    \bar "|." 
}

pentatonicExerciseFourBbMinor = \relative bf { 
    \key bf \minor
    \time 4/4
    \tuplet 3/2 4 {
        bf8 df ef  f af f  
        df8 ef f  af bf af |
        ef8 f af  bf df bf  
        f8 af bf  df ef df |
        af8 bf df  ef f ef } bf4 bf, | 
    \tuplet 3/2 4 { 
        bf'8 df ef  f af f  df ef f  af bf af |
        ef8 f af  bf df bf  f af bf  df ef df |
        af8 bf df  ef f ef  e ef df } bf4 |

    \tuplet 3/2 4 { 
        f'8 ef df  bf af bf 
        ef8 df bf  af f af | 
        df8 bf af  f ef f  } bf4 bf, |
    \tuplet 3/2 4 {         
        bf'8 af f  ef df ef  
        af8 f ef  df bf df |
        f8 ef df  bf af bf  
        ef8 df bf  af f af |
        df8 bf af  f ef f }  bf4 bf, |
    \tuplet 3/2 4 { 
        bf'8 af f  ef df ef 
        af8 f ef  df bf df } | 
    bf1
    \bar "|."
}

pentatonicExerciseFiveBbMinor = \relative bf {
    \key bf \minor
    \time 6/4
    bf8 df ef e  f [ e ef df ]  bf2 | 
    df8 ef f af  bf [ e, ef df ]  bf2 | 
    ff'8 f bf af  f [ e ef df ]  bf2

    af'8 bf df ef  e [ ef df af ]  bf2 |
    bf8 df ef e  f [ e ef df ]  bf2 | 
    df8 ef f af  bf [ e, ef df ]  bf2 |

    e8 f bf af  f [ e ef df ]  bf2 |
    f'8 ef df bf  ef [ df bf af ]  bf2 | 
    af'8 bf df ef  e [ ef df af ]  bf2 |

    bf8 df ef e  f [ e ef df ]  bf2 | 
    f'8 ef df bf  ef [ df bf af ]  bf4. 


    f'8 |
    ef8 df bf af  e [ ef df bf ]  af [ e ef df ] |
    bf1.  
    \bar "|."
}

pentatonicExerciseSixBbMinor = \relative bf {
    \key bf \minor
    \time 4/4
    bf8 df ef e  f af bf df |
    ef8 e f af  bf df ef e | 
    f8 e ef df  bf af f e |
    ef8 df bf af  f e ef df |
    bf8 df' bf2.  
    \bar "|."
}
