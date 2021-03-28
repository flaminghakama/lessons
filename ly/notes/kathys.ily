kathyDynamics = \relative c' { 
    \key c \major
    \time 4/4
    e1\mf ~ | 1 ~ | 1 ~ | 1 ~ | 1 | 
    \bar "||"
    e1\pp ~ | 1 ~ | 1 ~ | 1 ~ | 1 | 
    \bar "||" \break

    e1\ff ~ | 1 ~ | 1 ~ | 1 ~ | 1 | 
    \bar "||"
    e1\pp\< ~ | 1 ~ | 1 ~ | 1 ~ | 1\ff | 
    \bar "||" \break

    e1\ff\> ~ | 1 ~ | 1 ~ | 1 ~ | 1\pp | 
    \bar "||"
    e1\pp\< ~ | 1\ff\> ~ | 1\pp\< ~ | 1\ff\> ~ | 1\pp | 
    \bar "||" \break

    e1\pp ~ | 1\ffSub ~ | 1\ppSub ~ | 1\ffSub ~ | 1\ppSub | 
    \bar "||"
    e1\p ~ | 1\fp ~ | 1\fp ~ | 1\fp ~ | 1\fp | 
    \bar "||" \break

    e2 ~ 2-> ~ | 2-> ~ 2-> ~ | 2-> ~ 2-> ~ | 2-> ~ 2-> ~ | 2-> ~ 2-> |
    \bar "||"
    e4 ~ 4-> ~ 4-> ~ 4-> ~ | 4-> ~ 4-> ~ 4-> ~ 4-> ~ | 4-> ~ 4-> ~ 4-> ~ 4-> |
    \bar "||" \break

    \override Hairpin.circled-tip = ##t
    e1\< ~ | 1\pp\> ~ | 1\xpp\< ~ | 1\pp\> ~ | 1*3/4 s4\! | 
    \bar "||" 
    e1\< ~ | 1\mf\> ~ | 1\< ~ | 1\mf\> ~ | 1*3/4 s4\! | 
    \bar "||" \break
}

kathyFingering = \relative c' { 
    \key c \major
    \time 4/4
    \bar "[|:"
    e2 ( \grace { f8 } e2*3/4 ) ( \grace { f8 } s8 |
    e2 ) ( \grace { f8 } e2*3/4 ) ( \grace { f8 } s8 |
    \bar ":|]"
    e1 ) \bar "[|:"
    
    f2 ( \grace { e8 } f2*3/4 ) ( \grace { e8 } s8 |
    f2 ) ( \grace { e8 } f2*3/4 ) ( \grace { e8 } s8 |
    \bar ":|]"
    f1 ) \bar "||" 
    \break

    \bar "[|:"
    e8. ( f16  e8. f16  e8. f16  e8. f16  
    \bar ":|]"
    e1 )
    \bar "[|:"
    f8. ( e16  f8. e16  f8. e16  f8. e16 |
    \bar ":|]"
    f1 ) \bar "||"
    \break

    \bar "[|:"
    e16 ( f e f  e f e f  e f e f  e f e f
    \bar ":|]"
    e1 )
    \bar "||"
    \break

    \bar "[|:"
    f16 ( e f e  f e f e  f e f e  f e f e
    \bar ":|]"
    f1 ) 
    \bar "||"
    \break


    \bar "[|:"
    e16 ( f e f  e f e f )  e ( f e f  e f e f )
    \bar ":|]"
    e1
    \bar "||"
    \break
}

kathySustain = \relative c' { 
    \key c \major
    \time 4/4

    \override TextSpanner.bound-details.left.text = \markup { \upright "sustain air" }
    \bar "[|:"
    e2. \startTextSpan r4 |
    e4 r e r | 
    e2. r4 
    e4 r e r | 
    \bar ":|]"
    e1 \stopTextSpan
    \bar "||" \break

    \bar "[|:"
    e1 \startTextSpan |
    e4-- 4-- 4-- 4-- | 1 | 4-- 4-- 4-- 4-- | 
    \bar ":|]"
    e1 \stopTextSpan
    \bar "||" \break

    \bar "[|:"
    e2. \startTextSpan r4 |
    e8-. r e-. r e-. r e-. r| 
    e2. r4 
    e8-. r e-. r e-. r e-. r| 
    \bar ":|]"
    e1 \stopTextSpan
    \bar "||" \break

    \bar "[|:"
    e1 \startTextSpan  |
    e8-. r e-. r e-. r e-. r| 
    e1
    e8-. r e-. r e-. r e-. r| 
    \bar ":|]"
    e1 \stopTextSpan
    \bar "||" \break

    \bar "[|:"
    e1 \startTextSpan  |
    e4-- 4-- 4-- 4-- |
    e1
    e8-. r e-. r e-. r e-. r| 
    \bar ":|]"
    e1 \stopTextSpan
    \bar "||" \break
}

kathyRepeated = \relative c' { 
    \key c \major
    \time 4/4

    \bar "[|:"
    e2 8-- 8-- 8-- 8-- |
    e2 8-- 8-- 8-- 8-- |
    \bar ":|]"
    e1
    \bar "[|:"
    e2 8-. 8-. 8-. 8-. |
    e2 8-. 8-. 8-. 8-. |
    \bar ":|]"
    e1 
    \bar "||"\break

    \bar "[|:"
    e2 8-- 8-- 8-- 8-- |
    e2 8-. 8-. 8-. 8-. |
    \bar ":|]"
    e1
    \bar "[|:"
    e4 16-- 16-- 16-- 16-- e4 16-- 16-- 16-- 16--
    \bar ":|]"
    e1 
    \bar "||"\break

    \bar "[|:"
    e4-- 16-. 16-. 16-. 16-. e4-- 16-. 16-. 16-. 16-.
    \bar ":|]"
    e1
    \bar "[|:"
    e4-- 16-- 16-- 16-- 16-- e4-- 16-. 16-. 16-. 16-.
    \bar ":|]"
    e1 
    \bar "||"\break
}

kathyRegister = \relative c' { 
    \key c \major
    \time 4/4

    g2 8-- 8-- 8-- 8-- | 2 8-. 8-. 8-. 8-. |
    g4 ( d''-- ) 8-- 8-- 8-- 8-- | 2 8-. 8-. 8-. 8-. | 
    d1
    \bar "||" \break

    f,,2-- 2-- | 2-- 2-- | 
    f4 ( g ) g ( a ) | a ( bf ) bf ( c ) | 
    c4 ( d ) d ( e ) | e ( f ) 2 |    
    \bar "||" \break

    f,4-- 2-- 4-- ~ | 4 2-- 4 ~ |
    f4 4 ( g ) g ( | a ) a ( bf ) bf ( | 
    c4 ) c ( d ) d ( | e ) e ( f2 )|
    \bar "||" \break
}

kathyAlternating = \relative c' { 
    \key c \major
    \time 4/4

    \bar "[|:"
    e8-. r e4-- e8-. r e4-- |
    e8-. r e4-- e8-. r e4-- |
    \bar ":|]"
    e1
    \bar "[|:"
    e4-- e8-. r e4-- e8-. r |
    e4-- e8-. r e4-- e8-. r |
    \bar ":|]"
    e1 
    \bar "||"\break

    f,4-- g8-. r a4-- bf8-. r |
    c4-- d8-. r e4-- f8-. r |
    g4-- f8-. r e4-- d8-. r |
    c4-- bf8-. r a4-- g8-. r |
    f1 |
    \bar "||" \break

    f8-. r g4-- a8-. r bf4-- |
    c8-. r d4-- e8-. r f4-- |
    g8-. r f4-- e8-. r d4-- |
    c8-. r bf4-- a8-. r g4-- |
    f1 |
    \bar "||" \break
}

kathyStaccato = \relative c { 
    \key c \major
    \time 4/4

    \bar "[|:"
    f16-.^"Play each measure 4 times" 16-. 16-. 16-.  8-. r r2 
    \bar ":|][|:"
    f16-. g-. a-. bf-.  c8-. r r2 
    \bar ":|][|:"
    f,16-. a-. c-. f-. a8-. r r2  
    \bar ":|][|:" \break
    
    f,16-. c'-. f-. c'-. f8-. r r2 
    \bar ":|][|:"
    f,,16-. 16-. 16-. 16-.  8-. r r2 
    \bar ":|][|:"
    c'16-. 16-. 16-. 16-.  8-. r r2 
    \bar ":|][|:" \break
    
    f16-. 16-. 16-. 16-.  8-. r r2 
    \bar ":|][|:"
    c'16-. 16-. 16-. 16-.  8-. r r2 
    \bar ":|][|:"
    f16-. 16-. 16-. 16-.  8-. r r2 
    \bar ":|][|:" \break

    f,,16-. c'-. f-. c'-.  f8-. r r2 
    \bar ":|][|:"
    f,,16-. 16-. 16-. 16-.  16-. 16-. 16-. 16-.  8-. r r4 
    \bar ":|][|:" \break

    f16-. g-. a-. bf-.  c-. bf-. a-. g-.  f8-. r r4 
    \bar ":|][|:" 
    f16-. a-. c-. f-.  a-. f-. c-. a-.  f8-. r r4 
    \bar ":|][|:" \break

    f16-. c'-. f-. c'-.  f-. c-. f,-. c-.  f,8-. r r4 
    \bar ":|][|:" 
    f16-. c'-. a-. f'-.  c-. a'-. f-. c'-.  f8-. r r4 
    \bar ":|][|:" 
}


