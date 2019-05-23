
rhythmOneSyncopated = \relative c'' {
    gs4 8 8 ~ 8 a4 8 ~ | 2 r |
}
rhythmOneStraight = \relative c'' {
    gs4 8 8 ~ 4 a4 | 2 r |
}

rhythmTwoSyncopated = \relative c'' {
    a4 4 8 4 8 ~ | 8 gs4. r2 |
}
rhythmTwoStraight = \relative c'' {
    a4 4 4 8 8 ~ | 8 gs4. r2 |
}

rhythmThreeSyncopated = \relative c' {
    fs4 8 a8 ~ 4 8 fs8 ~ | 8 e4. r2 |
}
rhythmThreeStraight = \relative c' {
    fs4 4 4 a8 fs ~ | 8 e4. r2 |
}

rhythmFourSyncopated = \relative c' {
    fs4 8 8 ~ 8 4 8 ~ | 2 r |
}
rhythmFourStraight = \relative c' {
    fs4 8 8 ~ 4 8 8 ~ | 2 r |
}

rhythmFiveSyncopated = \relative c' {
    fs4 e8 e' ~ 8 d4 cs8 ~ | 2 r |
}
rhythmFiveStraight = \relative c' {
    fs4 e8 e' ~ 4 d8 cs ~ | 2 r |
}

rhythmSixSyncopated = \relative c'' {
    cs4 b8 a ~ 4 cs8 b ~ | 2 r |
}
rhythmSixStraight = \relative c'' {
    cs4 b a cs8 b ~ | 2 r |  
}

rhythmSevenSyncopated = \relative c' {
    fs4 e8 8 ~ 4 8 8 ~ | 2 r |
}
rhythmSevenStraight = \relative c' {
    fs4 e4 4 8 8 ~ | 2 r |
}

rhythmEightSyncopated = \relative c' {
    r4 r8 e8 a4 gs8 fs ~ | 2 r |
}
rhythmEightStraight = \relative c' {
    r4 r8 e8 a4 gs | fs2 r |
}


syncopated = {
    \rhythmOneSyncopated
    \rhythmTwoSyncopated
    \rhythmThreeSyncopated
    \rhythmFourSyncopated
    \rhythmFiveSyncopated
    \rhythmSixSyncopated
    \rhythmSevenSyncopated
    \rhythmEightSyncopated
}
straight = {
    \rhythmOneStraight
    \rhythmTwoStraight
    \rhythmThreeStraight
    \rhythmFourStraight
    \rhythmFiveStraight
    \rhythmSixStraight
    \rhythmSevenStraight
    \rhythmEightStraight
}

syncopatedStraightForm = { 
    \key a \major
    \time 4/4 
    \mark "1"
    s1*2 
    \bar "||"
    \mark "2"
    s1*2 
    \bar "||"
    \break

    \mark "3"
    s1*2 
    \bar "||"
    \mark "4"
    s1*2 
    \bar "||"
    \break

    \mark "5"
    s1*2 
    \bar "||"
    \mark "6"
    s1*2 
    \bar "||"
    \break

    \mark "7"
    s1*2 
    \bar "||"
    \mark "8"
    s1*2 
    \bar "|."
}    