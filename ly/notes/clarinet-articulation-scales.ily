articulationScalesExerciseZero = \relative c { 
    \key c \major
    \time 4/4
    %\override MetronomeMark.font-family = #'typewriter
    \tempo 4=120-144
    e16 f g a  b c d e  f e d c  b a g f | \noBreak e4 r r2 | \tag #'Speed { R1 }
    f16 g a b  c d e f  g f e d  c b a g  | \noBreak f4 r r2 | \tag #'Speed { R1^"etc. ..." }
    \tag #'Normal \relative c' {
        g16 a b c  d e f g  a g f e  d c b a | \noBreak g4 r r2 |
        a16 b c d  e f g a  b a g f  e d c b | \noBreak a4 r r2 |
        b16 c d e  f g a b  c b a g  f e d c | \noBreak b4 r r2 |
        c16 d e f  g a b c  d c b a  g f e d | \noBreak c4 r r2 |
        d16 e f g  a b c d  e d c b  a g f e | \noBreak d4 r r2 |
        e16 f g a  b c d e  f e d c  b a g f | \noBreak e4 r r2 |
        f16 g a b  c d e f  g f e d  c b a g  |\noBreak f4 r r2 | 
        g16 a b c  d e f g  a g f e  d c b a | \noBreak g4 r r2 |
        a16 b c d  e f g a  b a g f  e d c b | \noBreak a4 r r2 |
        b16 c d e  f g a b  c b a g  f e d c | \noBreak b4 r r2 |
        c16 d e f  g a b c  d c b a  g f e d | \noBreak c4 r r2 |
    }
    \bar "|."
}

articulationScalesExerciseOne = \relative c { 
    \key c \major
    \time 3/4
    \tempo 4=120-138
    e16 f g a  b c d e  f g a b | c b a g  f e d c  b a g f | e4 r r | R2. |
    f16 g a b  c d e f  g a b c | d c b a  g f e d  c b a g | f4 r r | R2. |
    g16 a b c  d e f g  a b c d | e d c b  a g f e  d c b a | g4 r r | R2. |
    a16 b c d  e f g a  b c d e | f e d c  b a g f  e d c b | a4 r r | R2. |
    b16 c d e  f g a b  c d e f | g f e d  c b a g  f e d c | b4 r r | R2. | 
    c16 d e f  g a b c  d e f g | a g f e  d c b a  g f e d | c4 r r | R2. |
    d16 e f g  a b c d  e f g a | b a g f  e d c b  a g f e | d4 r r | R2. |
    e16 f g a  b c d e  f g a b | c b a g  f e d c  b a g f | e4 r r | R2. |
    f16 g a b  c d e f  g a b c | d c b a  g f e d  c b a g | f4 r r | R2. |
    g16 a b c  d e f g  a b c d | e d c b  a g f e  d c b a | g4 r r | R2. |
    a16 b c d  e f g a  b c d e | f e d c  b a g f  e d c b | a4 r r | R2. |
    b16 c d e  f g a b  c d e f | g f e d  c b a g  f e d c | b4 r r | R2. | 
    \bar "|."
}

articulationScalesExerciseTwo = \relative c { 
    \key c \major
    \time 2/4
    \tempo 4=120-168
    e16 ( f ) g-. a-.  b ( c ) d-. e-. | 
    f16 ( g ) a-. b-.  c ( d ) e-. f-. | 
    g16 ( a ) b-. c-.  d ( e ) f-. e-. | 

    d16 ( c ) b-. a-.  g ( f ) e-. d-. | 
    c16 ( b ) a-. g-.  f ( e ) d-. c-. | 
    b16 ( a ) g-. f-.  e4 |
    \bar "|."
}

articulationScalesExerciseThree = \relative c { 
    \key g \major
    \time 2/4
    \tempo 4=112-160
    e16 ( fs ) g-. a-.  fs ( g ) a-. b-. |
    g16 ( a ) b-. c-.  a ( b ) c-. d-. |
    b16 ( c ) d-. e-.  c ( d ) e-. fs-. | 
    d16 ( e ) fs-. g-.  e ( fs ) g-. a-. | 
    fs16 ( g ) a-. b-.  g ( a ) b-. c-. | 
    a16 ( b ) c-. d-.  b ( c ) d-. e-. | 
    c16 ( d ) e-. fs-.  d ( e ) fs-. g-. | 
    e16 ( fs ) g-. a-.  fs ( g ) a-. b-. | 
    g16 ( a ) b-. c-.  a ( b ) c-. d-. | 
    b16 ( c ) d-. e-.  c ( d ) e-. fs-. |
    g2 |
    \bar "|."
}

articulationScalesExerciseFour = \relative c { 
    \key c \major
    \time 2/4
    \tempo 4=112-160
    e16 ( g ) c-. e-.  g, ( c ) e-. g-. | 
    c,16 ( e ) g-. c-.  e, ( g ) c-. e-. | 
    g,16 ( c ) e-. g-.  c, ( e ) g-. c-.  |
    e,16 ( g ) c-. e-.  g, ( c ) e-. g-.  |
    
    g16 ( e ) c-. g-.   
    e'16 ( c ) g-. e-. | 
    c'16 ( g ) e-. c-. 
    g'16 ( e ) c-. g-. | 
    e'16 ( c ) g-. e-.  
    c'16 ( g ) e-. c-. |
    g'16 ( e ) c-. g-.  
    e'16 ( c ) g-. e-. |
    c'2 |
    \bar "|."
}

articulationScalesExerciseFive = \relative c { 
    \key c \major
    \time 6/8
    \tempo 2.=68-96
    e8 ( f ) g-.  a-. b-. c-. | 
    d8 ( e ) f-.  g-. a-. b-. | 
    c8 ( d ) e-.  f-. g-. a-. | 
    b8 ( c ) d-.  e-. f-. g-. |

    f8 ( e ) d-.  c-. b-. a-. |
    g8 ( f ) e-.  d-. c-. b-. |
    a8 ( g ) f-.  e-. d-. c-. |
    b8 ( a ) g-.  f-. e-. g-. |
    c2.
    \bar "|."
}

articulationScalesExerciseSix  = \relative c { 
    \key f \major
    \time 6/8
    \tempo 2.=68-96
    e8 ( f ) g-.  f-. g-. a-. | 
    g8 ( a ) bf-.  a-. bf-. c-. | 
    bf8 ( c ) d-.  c-. d-. e-. | 
    d8 ( e ) f-.  e-. f-. g-. |
    f8 ( g ) a-.  g-. a-. bf-. | 
    a8 ( bf ) c-.  bf-. c-. d-. | 
    c8 ( d ) e-.  d-. e-. f-. | 
    e8 ( f ) g-.  f-. g-. a-. | 
    g8 ( a ) bf-.  a-. bf-. c-. | 
    bf8 ( c ) d-.  c-. d-. e-. | 
    d8 ( e ) f-.  e-. f-. g-. |
    f2.
    \bar "|."
}

articulationScalesExerciseSeven = \relative c'' { 
    \key g \major
    \time 2/4
    \tempo 4=84-112
    \override TupletBracket.bracket-visibility = ##f
    a8 \tuplet 3/2 8 { 16 16 16 } 
    g8 \tuplet 3/2 8 { 16 16 16 } |
    fs8 \tuplet 3/2 8 { 16 16 16 } 
    e8 \tuplet 3/2 8 { 16 16 16 } |
    d8 \tuplet 3/2 8 { 16 16 16 } 
    c8 \tuplet 3/2 8 { 16 16 16 } |
    b8 \tuplet 3/2 8 { 16 16 16 }
    a8 \tuplet 3/2 8 { 16 16 16 } |
    g8 \tuplet 3/2 8 { 16 16 16 } 
    fs8 \tuplet 3/2 8 { 16 16 16 } |
    e8 \tuplet 3/2 8 { 16 16 16 } 
    fs8 \tuplet 3/2 8 { g16 a b } |
    a8 \tuplet 3/2 8 { b16 c d } 
    c4 ||

    b'8 \tuplet 3/2 8 { 16 16 16 } 
    c8 \tuplet 3/2 8 { 16 16 16 } |
    d8 \tuplet 3/2 8 { 16 16 16 } 
    e8 \tuplet 3/2 8 { 16 16 16 } |
    fs8 \tuplet 3/2 8 { 16 16 16 } 
    g8 \tuplet 3/2 8 { 16 16 16 } |
    a8 \tuplet 3/2 8 { 16 16 16 } 
    b8 \tuplet 3/2 8 { 16 16 16 } |
    c8 \tuplet 3/2 8 { 16 16 16 } 
    d8 \tuplet 3/2 8 { 16 16 16 } |
    e8 \tuplet 3/2 8 { 16 16 16 } 
    fs8 \tuplet 3/2 8 { 16 16 16 } |
    g2 |
    \bar "|."
}

articulationScalesExerciseEight = \relative c'' { 
    \key g \major
    \time 2/4
    \tempo 4=84-112
    \override TupletBracket.bracket-visibility = ##f
    a8 \tuplet 3/2 8 { c16-. b-. a-. } 
    g8 \tuplet 3/2 8 { b16-. a-. g-. } |
    fs8 \tuplet 3/2 8 { a16-. g-. fs-. } 
    e8 \tuplet 3/2 8 { g16-. fs-. e-. } |
    d8 \tuplet 3/2 8 { fs16-. e-. d-. } 
    c8 \tuplet 3/2 8 { e16-. d-. c-. } |
    b8 \tuplet 3/2 8 { d16-. c-. b-. }  
    a8 \tuplet 3/2 8 { c16-. b-. a-. } |
    g8 \tuplet 3/2 8 { b16-. a-. g-. } 
    fs8 \tuplet 3/2 8 { a16-. g-. fs-. } |
    e8 \tuplet 3/2 8 { g16-. fs-. e-. }  g4 |  

    b'8 \tuplet 3/2 8 { g16-. a-. b-. } 
    c8 \tuplet 3/2 8 { a16-. b-. c-. } |
    d8 \tuplet 3/2 8 { b16-. c-. d-. } 
    e8 \tuplet 3/2 8 { c16-. d-. e-. } |
    fs8 \tuplet 3/2 8 { d16-. e-. fs-. } 
    g8 \tuplet 3/2 8 { e16-. fs-. g-. } |
    a8 \tuplet 3/2 8 { fs16-. g-. a-. } 
    b8 \tuplet 3/2 8 { g16-. a-. b-. } |
    c8 \tuplet 3/2 8 { a16-. b-. c-. } 
    d8 \tuplet 3/2 8 { b16-. c-. d-. } |
    e8 \tuplet 3/2 8 { c16-. d-. e-. } 
    fs8 \tuplet 3/2 8 { d16-. e-. fs-. } |
    g2
    \bar "|."
}


articulationScalesExerciseNine = \relative c'' { 
    \key c \major
    \time 4/4
    \tempo 4=84-96
    \override TupletBracket.bracket-visibility = ##f
    a8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    g8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    f8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    e8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    d8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    c8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    b8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    a8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    g8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    f8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    e8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    e8 \tuplet 3/2 8 { f16 g a } \tuplet 6/4 4 { b16 c d  e f g } c2 | 

    b8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    c8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    d8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    e8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    f8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    g8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    a8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    b8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    c8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    d8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    e8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    f8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    g8 \tuplet 3/2 8 { 16 16 16 } \tuplet 6/4 4 { 16 16 16  16 16 16 } 4 r4 |
    \bar "|."
}

articulationScalesExerciseTen = \relative c' { 
    \key g \major
    \time 4/4
    \tempo 4=84-96
    \override TupletBracket.bracket-visibility = ##f
    e,8 \tuplet 3/2 8 { fs16 g a } \tuplet 6/4 4 { b16 c d  e fs g } a4 r4 |
    fs,8 \tuplet 3/2 8 { g16 a b } \tuplet 6/4 4 { c16 d e  fs g a } b4 r4 |
    g,8 \tuplet 3/2 8 { a16 b c } \tuplet 6/4 4 { d16 e fs  g a b } c4 r4 |
    a,8 \tuplet 3/2 8 { b16 c d } \tuplet 6/4 4 { e16 fs g  a b c } d4 r4 |
    b,8 \tuplet 3/2 8 { c16 d e } \tuplet 6/4 4 { fs16 g a  b c d } e4 r4 | 
    c,8 \tuplet 3/2 8 { d16 e fs } \tuplet 6/4 4 { g16 a b  c d e } fs4 r4 |
    d,8 \tuplet 3/2 8 { e16 fs g } \tuplet 6/4 4 { a16 b c  d e fs } g4 r4 |
    e,8 \tuplet 3/2 8 { fs16 g a } \tuplet 6/4 4 { b16 c d  e fs g } a4 r4 |
    fs,8 \tuplet 3/2 8 { g16 a b } \tuplet 6/4 4 { c16 d e  fs g a } b4 r4 |
    g,8 \tuplet 3/2 8 { a16 b c } \tuplet 6/4 4 { d16 e fs  g a b } c4 r4 |
    a,8 \tuplet 3/2 8 { b16 c d } \tuplet 6/4 4 { e16 fs g  a b c } d4 r4 |
    b,8 \tuplet 3/2 8 { c16 d e } \tuplet 6/4 4 { fs16 g a  b c d } e4 r4 | 
    c,8 \tuplet 3/2 8 { d16 e fs } \tuplet 6/4 4 { g16 a b  c d e } fs4 r4 |
    d,8 \tuplet 3/2 8 { e16 fs g } \tuplet 6/4 4 { a16 b c  d e fs } g4 r4 |
    \bar "|."
}
