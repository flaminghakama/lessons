plus = \markup { \fontsize #5 "+" } 

plusLow = \markup { \translate #'(0 . -1.6) \fontsize #5 "+" }
  
chromaticExerciseBottomOne = \relative c' { 
    \accidentalStyle modern-voice
    \accidentalStyle Score.default
    \key c \major
    \time 6/8
    as8 b c df c b | bf4. r  
    b8 c cs d df c | b4. r  |
    c8 cs d ef d df | c4. r  | 
    cs8 d ds e df d | df4. r  |
    \bar "|."
}
chromaticExerciseLowerOne = \relative c' { 
    \accidentalStyle modern-voice
    \accidentalStyle Score.default
    \key c \major
    \time 6/8
    d8 ds e f e ef | d4. r  |
    ds8 e f gf^\plusLow f e | ef4. r  | 
    e8 f fs^\plus g gf^\plusLow f | e4. r | \break
 
    f8 fs^\plusLow g af g gf^\plusLow | f4. r  |
    fs8 g gs a af g | gf4. r  | 
    g8 gs a bf a af | g4. r  | \break

    gs8 a as b bf a | af4. r  |
    a8 as b c^\plusLow b bf | a4. r  | 
    as8 b c^\plusLow df c^\plusLow b | bf4. r  
    \bar "|."
}
chromaticExerciseMiddleOne = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 6/8
    b8 c^\plusLow cs d df c^\plusLow | b4. r  |
    c8 cs d ef d df | c4. r  | 
    cs8 d ds e ef d | df4. r  |
}
chromaticExerciseUpperOne = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 6/8

    d8 ds e f e ef | d4. r | 
    ds8 e f gf^\plusLow f e | ef4. r | 
    e8 f fs^\plus g gf^\plusLow f | e4. r | \break

    f8 fs^\plus g af g gf^\plusLow | f4. r | 
    fs8 g gs a af g | gf4. r | 
    g8 gs a bf a af | g4. r | \break

    gs8 a as b bf a | af4. r | 
    a8 as b c^\plusLow b bf | a4. r | 
    as8 b c^\plusLow df c^\plusLow b | bf4. r  
    \bar "|."
}
chromaticExerciseTopOne = \relative c''' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 6/8

    b8 c^\plusLow cs d df c^\plusLow | b4. r  |
    c8 cs d ef d df | c4. r  | 
    cs8 d ds e df d | df4. r  | 
    d8 ds e f e ef | d4. r | 
    \bar "|."
}

chromaticExerciseBottomTwo = \relative c' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    as8 b c cs d df c4 |
    b8 c cs d ef d df4 |
    c8 cs d ds e ef d4   |
    cs8 d ds e f e ef4 |
}
chromaticExerciseLowerTwo = \relative c' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    d8 ds e f gf^\plus f e4 |
    ds8 e f fs^\plus g gf^\plus f4 |
    e8 f fs^\plus g af g gf4^\plus |
    f8 fs^\plus g gs a af g4  |
    fs8 g gs a bf a af4
    g8 gs a as b bf a4  |
    gs8 a as b c^\plus b bf4 |
    a8 as b c^\plus df c^\plus b4 |
    \bar "|."
}
chromaticExerciseMiddleTwo = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    as8 b c^\plus cs d df c4^\plus |
    b8 c^\plus cs d ef d df4 |
    c8 cs d ds e ef d4   |
    cs8 d ds e f e ef4 |
    \bar "|."
}
chromaticExerciseUpperTwo = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    d8 ds e f gf^\plus f e4 |
    ds8 e f fs^\plus g gf^\plus f4 |
    e8 f fs^\plus g af g gf4^\plus |
    f8 fs^\plus g gs a af g4  |
    fs8 g gs a bf a af4
    g8 gs a as b bf a4  |
    gs8 a as b c^\plus b bf4 |
    a8 as b c^\plus df c^\plus b4 |
    \bar "|."
}
chromaticExerciseTopTwo = \relative c''' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    as8 b c^\plus cs d df c4 |
    b8 c^\plus cs d ef d df4 |
    c8 cs d ds e ef d4   |
    cs8 d ds e f e ef4 |
    \bar "|."
}


chromaticExerciseBottomTwoAdvanced = \relative c' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    as8 b c cs  d df c as! |
    b8 c cs d ef d df b |
    c8 cs d ds e ef d c   |
    cs8 d ds e f e ef cs! |
}
chromaticExerciseLowerTwoAdvanced = \relative c' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    d8 ds e f gf^\plus f e d |
    ds8 e f fs^\plus g gf^\plus f ds! |
    e8 f fs^\plus g af g gf e |
    f8 fs^\plus g gs a af g f  |
    fs8^\plus g gs a bf a af fs |
    g8 gs a as b bf a g |
    gs8 a as b c^\plus b bf gs! |
    a8 as b c^\plus df c^\plus b a |
    \bar "|."
}
chromaticExerciseMiddleTwoAdvanced = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    as8 b c^\plus cs d df c as? |
    b8 c^\plus cs d ef d df b |
    c8^\plus cs d ds e ef d c   |
    cs8 d ds e f e ef cs? |
    \bar "|."
}
chromaticExerciseUpperTwoAdvanced = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    d8 ds e f gf^\plus f e d |
    ds8 e f fs^\plus g gf^\plus f ds! |
    e8 f fs^\plus g af g gf e |
    f8 fs^\plus g gs a af g f  |
    fs8^\plus g gs a bf a af fs |
    g8 gs a as b bf a g |
    gs8 a as b c^\plus b bf gs! |
    a8 as b c^\plus df c^\plus b a |
    \bar "|."
}
chromaticExerciseTopTwoAdvanced = \relative c''' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 4/4
    as8 b c^\plus cs d df c as? |
    b8 c^\plus cs d ef d df b |
    c8^\plus cs d ds e ef d c   |
    cs8 d ds e f e ef cs? |
    d1 
    \bar "|."
}


chromaticExerciseBottomThree = \relative c' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/8
    as4 b8  c cs d  ef d df  c b c |
    b4 c8  cs d ds  e ef d  df c df |
    c4 cs8  d ds e  f e ef  d cs! d |
    cs4 d8  ds e f  gf^\plus f e  ef d ef |
}
chromaticExerciseLowerThree = \relative c' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/8
    d4 ds8  e f fs^\plus  g gf^\plus f  e ds! e |
    ds4 e8  f fs^\plus g  af g gf^\plus  f e f |
    e4 f8  fs^\plus g gs  a af g  gf^\plus f gf |
    f4 fs8^\plus  g gs a  bf a af  g fs! g |
    fs4 g8  gs a as  b bf a  af g af |
    g4 gs8  a as b  c^\plus b bf  a gs! a |
    gs4 a8  as b c^\plus  df c^\plus b  bf a bf |
    \bar "|."
}
chromaticExerciseMiddleThree = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/8
    a4 as8  b c^\plus cs  d df c^\plus  b as! b |
    as4 b8  c^\plus cs d  ef d df  c^\plus b c^\plus |
    b4 c8^\plus  cs d ds  e ef d  df c df |
    c4 cs8  d ds e  f e ef d cs! d |
    cs4 d8  ds e f  gf^\plus f e  ef d ef |
    \bar "|."
}
chromaticExerciseUpperThree = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/8
    d4 ds8  e f fs^\plus  g gf^\plus f  e ds! e |
    ds4 e8  f fs^\plus g  af g gf^\plus  f e f |
    e4 f8  fs^\plus g gs  a af g  gf^\plus f gf^\plus |
    f4 fs8^\plus  g gs a  bf a af  g fs! g |
    fs4 g8  gs a as  b bf a  af g af |
    g4 gs8  a as b  c^\plus b bf  a gs! a |
    gs4 a8  as b c^\plus  df c^\plus b  bf a bf |
    \bar "|."
}
chromaticExerciseTopThree = \relative c''' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/8
    a4 as8  b c^\plus cs  d df c^\plus  b as! b |
    as4 b8  c^\plus cs d  ef d df  c^\plus b c^\plus |
    b4 c8^\plus  cs d ds  e ef d  df c df |
    c4 cs8  d ds e  f e ef d cs! d |
    cs1.
    \bar "|."
}


chromaticExerciseBottomThreeAdvanced = \relative c' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/16
    as8 b16  c cs d  ef d df  c b as? |
    b8 c16  cs d ds  e ef d  df c b |
    c8 cs16  d ds e  f e ef d df c |
    cs8 d16  ds e f  gf^\plus f e  ef d cs? |
}
chromaticExerciseLowerThreeAdvanced = \relative c' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/16
    d8 ds16  e f fs^\plus  g gf^\plus f  e ef d |
    ds8 e16  f fs^\plus g  af g gf^\plus  f e ds! |
    e8 f16  fs^\plus g gs  a af g  gf^\plus f e |
    f8 fs16^\plus  g gs a  bf a af  g gf^\plus f |
    fs8^\plus g16  gs a as  b bf a  af g fs! |
    g8 gs16  a as b  c^\plus b bf  a af g |
    gs8 a16  as b c^\plus  df c^\plus b  bf a gs! |
    \bar "|."
}
chromaticExerciseMiddleThreeAdvanced = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/16
    a8 as16  b c^\plus cs  d df c^\plus  b bf a |
    as8 b16  c^\plus cs d  ef d df  c^\plus b as! |
    b8 c16^\plus  cs d ds  e ef d  df c^\plus b |
    c8^\plus cs16  d ds e  f e ef  d df c |
    cs8 d16  ds e f  fs^\plus f e  ef d cs! |
    \bar "|."
}
chromaticExerciseUpperThreeAdvanced = \relative c'' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/16
    d8 ds16  e f fs^\plus  g gf^\plus f  e ef d |
    ds8 e16  f fs^\plus g  af g gf^\plus  f e ds! |
    e8 f16  fs^\plus g gs  a af g  gf^\plus f e |
    f8 fs16^\plus  g gs a  bf a af  g gf^\plus f |
    fs8^\plus g16  gs a as  b bf a  af g fs! |
    g8 gs16  a as b  c^\plus b bf  a af g |
    gs8 a16  as b c^\plus  df c^\plus b  bf a gs! |
    \bar "|."
}
chromaticExerciseTopThreeAdvanced = \relative c''' { 
    \accidentalStyle modern-voice
    \key c \major
    \time 12/16
    a8 as16  b c^\plus cs  d df c^\plus  b bf a |
    as8 b16  c^\plus cs d  ef d df  c^\plus b as! |
    b8 c16^\plus  cs d ds  e ef d  df c^\plus b |
    c8^\plus cs16  d ds e  f e ef  d df c |
    df1.
    \bar "|."
}
