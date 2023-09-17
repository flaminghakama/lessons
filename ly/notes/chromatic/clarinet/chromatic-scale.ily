plus = \markup { \fontsize #5 "+" } 

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
    gs8 a as b c b bf4
    \bar "|."
}
