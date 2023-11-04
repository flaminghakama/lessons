plus = \markup { \fontsize #5 "+" } 
RH = \markup { \fontsize #2 "R" } 
LH = \markup { \fontsize #2 "L" } 

plusLow = \markup { \translate #'(0 . -1.6) \fontsize #5 "+" }
  

chromaticExerciseLowerOne = \relative c { 
    \accidentalStyle modern-voice
    \accidentalStyle Score.default
    \key c \major
    \time 6/8
    e8 f fs g gf f | e4. r  |
    f8 fs g af g gf | f4. r  |
    fs8 g gs a af g | gf4. r  | \break

    g8 gs a bf a af | g4. r  |
    gs8 a as b^\plusLow bf a | af4. r  |
    a8 as b^\plusLow c b^\plusLow bf | a4. r  | \break

    as8 b^\plusLow c df c b^\plusLow | bf4. r  |
    b8 c cs d df c | b4. r  |
    c8 cs d ef d df | c4. r  | \break

    cs8 d ds e ef d | df4. r  |
    d8 ds e f e ef | d4. r  |
    ds8 e f gf^\plus f e | ef4. r  | \break

    e8 f fs^\plus g gf^\plus f | e4. r
    f8 fs^\plus g af g gf^\plus | f4. r  | \break

    fs8 g gs a af g | gf4. r  |
    g8 gs a bf a af | g4. r  
    \bar "|."
}

chromaticExerciseMiddleOne = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 6/8
    gs8 a as b bf a | af4. r | 
    a8 as b c b bf | a4. r | 
    as8 b c df c b | bf4. r | 
    \bar "|."
}

chromaticExerciseUpperOne = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 6/8
    b8 c cs d df c | b4. r | 
    c8 cs d ef d df | c4. r | 
    cs8 d ds e df d | df4. r | \break

    d8 ds e f e ef | d4. r | 
    ds8 e f gf^\plus f e | ef4. r | 
    e8 f fs^\plus g gf^\plus f | e4. r | \break

    f8 fs^\plus g af g gf^\plus | f4. r | 
    fs8^\plus g gs a af g | gf4. r | 
    g8 gs a bf a af | g4. r | \break

    gs8 a as b bf a | af4. r | 
    a8 as b c b bf | a4. r | 
    as8 b c df c b | bf4. r | 
    b8 c cs d df c | b4. r  |
    \bar "|."
}


chromaticExerciseLowerTwo = \relative c { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    e8 f fs g af g gf4 |
    f8 fs g gs a af g4 |
    fs8 g gs a bf a af4 |
    g8 gs a as b^\plusLow bf a4  |
    gs8 a as b^\plusLow c b^\plusLow bf4 |
    a8 as b^\plusLow c df c b4^\plusLow |
    as8 b^\plusLow c cs d df c4 |
    b8 c cs d ef d df4 |
    c8 cs d ds e ef d4   |
    cs8 d ds e f e ef4 |
    d8 ds e f gf^\plus f e4 |
    ds8 e f fs^\plus g gf^\plus f4 |
    e8 f fs^\plus g af g gf4^\plus |
    f8 fs^\plus g gs a af g4  |
    fs8 g gs a bf a af4
    \bar "|."
}

chromaticExerciseMiddleTwo = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    g8 gs a as b bf a4  |
    gs8 a as b c b bf4 |
    a8 as b c df c b4 |
    as8 b c cs d df c4
    \bar "|."
}

chromaticExerciseUpperTwo = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    b8 c cs d ef d df4 |
    c8 cs d ds e ef d4   |
    cs8 d ds e f e ef4 |
    d8 ds e f gf^\plus f e4 |
    ds8 e f fs^\plus g gf^\plus f4 |
    e8 f fs^\plus g af g gf4^\plus |
    f8 fs^\plus g gs a af g4  |
    fs8 g gs a bf a af4 |
    g8 gs a as b bf a4  |
    gs8 a as b c b bf4 |
    a8 as b c df c b4 |
    as8 b c cs d df c4 
    \bar "|."
}




chromaticExerciseLowerTwoAdvanced = \relative c { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    e8 f fs g af g gf e^\RH |
    f8^\LH fs^\RH g gs a af g f  |
    fs8 g gs a bf a af fs? |
    g8 gs a as b^\plus bf a g |
    gs8 a as b^\plus c b^\plus bf gs! |
    a8 as b^\plus c df c b a |
    as8 b^\plus c cs  d df c as! |
    b8^\plus c cs d ef d df b |
    c8 cs d ds e ef d c   |
    cs8 d ds e f e ef cs! |
    d8 ds e f gf^\plus f e d |
    ds8 e f fs^\plus g gf^\plus f ds! |
    e8 f fs^\plus g af g gf e |
    f8 fs^\plus g gs a af g f  |
    fs8^\plus g gs a bf a af fs? |    
    \bar "|."
}

chromaticExerciseMiddleTwoAdvanced = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    g8 gs a as b bf a g |
    gs8 a as b c b bf gs! |
    a8 as b c df c b a |
    as8 b c cs  d df c as! |
    \bar "|."
}

chromaticExerciseUpperTwoAdvanced = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    b8 c cs d ef d df b^\RH |
    c8^\LH cs^\RH d ds e ef d c   |
    cs8 d ds e f e ef cs! |
    d8 ds e f gf^\plus f e d |
    ds8 e f fs^\plus g gf^\plus f ds! |
    e8 f fs^\plus g af g gf e |
    f8 fs^\plus g gs a af g f  |
    fs8^\plus g gs a bf a af fs? |    
    g8 gs a as b bf a g |
    gs8 a as b c b bf gs! |
    a8 as b c df c b a |
    as8 b c cs  d df c as! |
    b1
    \bar "|."
}



chromaticExerciseLowerThree = \relative c { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/8
    e4 f8  fs g gs  a af g  gf f gf |
    f4 fs8  g gs a  bf a af  g fs! g |
    fs4 g8  gs a as  b^\plus bf a  af g af |
    g4 gs8  a as b^\plus  c b^\plus bf  a gs! a |
    gs4 a8  as b^\plus c  df c b^\plus  bf a bf |
    a4 as8^\plus  b c cs  d df c  b^\plus as! b^\plus |
    as4 b8^\plus  c cs d  ef d df  c b c |
    b4 c8  cs d ds  e ef d  df c df |
    c4 cs8  d ds e  f e ef d cs! d |
    cs4 d8  ds e f  gf^\plus f e  ef d ef |
    d4 ds8  e f fs^\plus  g gf^\plus f  e ds! e |
    ds4 e8  f fs^\plus g  af g gf^\plus  f e f |
    e4 f8  fs^\plus g gs  a af g  gf^\plus f gf^\plus |
    f4 fs8^\plus  g gs a  bf a af  g fs!^\plus g |
    \bar "|."
}

chromaticExerciseMiddleThree = \relative c' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/8
    fs4^\plus g8  gs a as  b bf a  af g af |
    g4 gs8  a as b  c b bf  a gs! a |
    gs4 a8  as b c  df c b  bf a bf |
    a4 as8  b c cs  d df c  b as! b |
    as4 b8  c cs d  ef d df  c b c |
    \bar "|."
}

chromaticExerciseUpperThree = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/8
    b4 c8  cs d ds  e ef d  df c df |
    c4 cs8  d ds e  f e ef d cs! d |
    cs4 d8  ds e f  gf^\plus f e  ef d ef |
    d4 ds8  e f fs^\plus  g gf^\plus f  e ds! e |
    ds4 e8  f fs^\plus g  af g gf  f e f |
    e4 f8  fs^\plus g gs  a af g  gf^\plus f gf^\plus |
    f4 fs8^\plus  g gs a  bf a af  g fs! g |
    fs4 g8  gs a as  b bf a  af g af |
    g4 gs8  a as b  c b bf  a gs! a |
    gs4 a8  as b c  df c b  bf a bf |
    a4 as8  b c cs  d df c  b as! b |
    bf1.
    \bar "|."
}



chromaticExerciseLowerThreeAdvanced = \relative c { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/16
    e8 f16  fs g gs  a af g  gf f e |
    f8 fs16  g gs a  bf a af  g gf f |
    fs8 g16  gs a as  b^\plus bf a  af g fs! |
    g8 gs16  a as b^\plus  c b^\plus bf  a af g |
    gs8 a16  as b^\plus c  df c b^\plus  bf a gs! |
    a8 as16  b^\plus c cs  d df c  b^\plus bf a |
    as8 b16^\plus  c cs d  ef d df  c b^\plus as! |
    b8^\plus c16  cs d ds  e ef d  df c b |
    c8 cs16  d ds e  f e ef  d df c |
    cs8 d16  ds e f  fs^\plus f e  ef d cs! |
    d8 ds16  e f fs^\plus  g gf^\plus f  e ef d |
    ds8 e16  f fs^\plus g  af g gf^\plus  f e ds! |
    e8 f16  fs^\plus g gs  a af g  gf^\plus f e |
    f8 fs16^\plus  g gs a  bf a af  g gf^\plus f |
    \bar "|."
}

chromaticExerciseMiddleThreeAdvanced = \relative c' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/16
    fs8^\plus g16  gs a as  b bf a  af g fs! |
    g8 gs16  a as b  c b bf  a af g |
    gs8 a16  as b c  df c b  bf a gs! |
    a8 as16  b c cs  d df c  b bf a |
    as8 b16  c cs d  ef d df  c b as! |
    b8 c16  cs d ds  e ef d  df c b |
    \bar "|."
}

chromaticExerciseUpperThreeAdvanced = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/16
    c8 cs16  d ds e  f e ef  d df c |
    cs8 d16  ds e f  fs^\plus f e  ef d cs! |
    d8 ds16  e f fs^\plus  g gf^\plus f  e ef d |
    ds8 e16  f fs^\plus g  af g gf^\plus  f e ds! |
    e8 f16  fs^\plus g gs  a af g  gf^\plus f e |
    f8 fs16^\plus  g gs a  bf a af  g gf^\plus f |
    fs8^\plus g16  gs a as  b bf a  af g fs! |
    g8 gs16  a as b  c b bf  a af g |
    gs8 a16  as b c  df c b  bf a gs! |
    a8 as16  b c cs  d df c  b bf a |
    bf1.
    \bar "|."
}


