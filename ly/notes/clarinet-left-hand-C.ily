lh = { <>^\markup { \bold " L" } }

% C-
leftHandCExerciseZero = \relative c' { 
    \key c \minor
    \time 4/4
    c8 ef g c  ef, g \lh c ef | 
    g, \lh c ef g  \lh c, ef8 g c | 
    g ef \lh c g  ef' \lh c g ef | c1 
    \bar "|."
}


% Ab
leftHandCExerciseOne = \relative c' { 
    \key af \major
    \time 4/4
    af8 c ef af  \lh c ef \lh c af | 
    \lh c ef af c  af ef \lh c af | 
    ef' \lh c af ef  c' af ef c | af1 
    \bar "|."
}

% F-
leftHandCExerciseTwo = \relative c' { 
    \key f \minor
    \time 4/4
    f8 g af bf \lh c ef \lh c af | f1 |
    f8 af \lh c ef  f ef \lh c af  | f ef c af \lh f2 | \break

    \lh f8 af c ef  f af \lh c ef | af, \lh c ef f  \lh c ef f af | 
    f8 ef \lh c af  ef' \lh c af f | c' af f ef  c af \lh f ef'' | f1 
    \bar "|."
}

% C-7
leftHandCExerciseThree = \relative c' { 
    \key c \minor
    \time 4/4
    c8 ef g bf  \lh c ef \lh c bf  | 
    ef g ef \lh c  g' bf c bf | 
    g8 ef \lh c bf  ef \lh c bf g | c bf g ef c bf c4 | 
    \bar "|."
}


% Ab7 
leftHandCExerciseFour = \relative c' { 
    \key df \major
    \time 4/4
    af8 c ef gf  af \lh c ef \lh c | gf'? ef \lh c af  af' c af gf? | 
    ef \lh c af \lh c  ef gf? ef \lh c | af gf ef c af gf? af2 
    \bar "|."
}
