clarTabScale = #0.8

middleC = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        "  "
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (R thumb f))
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge "C (L)"
    }
}

middleCRight= \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        "  "
        \translate #'(0 . -5) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (R thumb))
            (cc . (one two three four five six))
            (rh . (f))
        )
        " "
        \huge "C (R)"
    }
}

middleD = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        "  "
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (R thumb))
            (cc . (one two three four five six))
            (rh . ())
        )
        \huge "D"
    }
}

middleE = \markup \center-align \line { 
    "   "
    \center-column \pad-markup #0 {
        "  "
        \translate #'(0 . -1) \override #'(size . 0.6) \woodwind-diagram #'clarinet #'(
            (lh . (R thumb))
            (cc . (one two three four five))
            (rh . ())
        )
        \huge "E"
    }
}




clarinetOne = \relative c' { 
   \time 3/4 
   \key g \major
   % Pattern in G, written out rests
   g2\f d'4 | g2 d4 | g,2. | r4 r r |
   g'2 d4 | g,2 d'4 | g2. | r2. 
   \bar "||"
}

clarinetTwo = \relative c { 
   \time 3/4 
   \key f \major
   % Pattern in F, whole measure rests
   f2\f c'4 | f2 c4 | f,2. | R2. | 
   f'2 c4 | f,2 c'4 | f2. | R2. | 
   \bar "||"
} 

clarinetThree = \relative c { 
   \time 3/4 
   \key f \major
   % Introducing middle C
   f2\mp c'4 | f2 c4 | f,2. | R2. | 
   f2 c'4 | f2\< g4 | a2.\mp| R2.\! | \break

   g,2 d'4 | g2 d4 | g,2. | R2. | 
   g2 d'4 | g2\< a4 | bf2.\mf | R2. | \break

   <>^\middleCRight
   c2 bf4 | g2 e4 | d2 c4 | a2\> g4 | 
   f2.\mp ~ | 2. | c'2.\< ~ | 2.*2/3 s4\! | \break

   <>^\middleC
   c'2\f bf4 | g2 e4 | d2 c4 | a2\> g4 | 
   f2.\mp ~ | 2. | f'2.\f  | R2. | 
   \bar "||"
} 

clarinetFour = \relative c { 
    \time 3/4 
    \key f \major
    % Slurs and more notes over the break: D and E
    f2\mp ( c'4 | f2 c4 | f,2. ) | R2. | 
    a'2 ( f4 | c2 bf4 | a2. ) | R2. | \break
    g2\mf ( d'4 | g2 d4 | g,2. ) | R2. | 
    bf'2 ( a4 | g2 d4 | bf2. ) | R2. | \break
   
    f2 ( a4 | c2 d4 ) | f2.\< ( | a4->\f ) r2 | 
    g,2\mf ( d'4 | g2\< bf4 | d2.^\middleD\f ~ | 2 ) r4  | \break
    e2^\middleE ( d4 | c2 bf4 ) | g2 ( e4 | c2 a'4 ) | 
    f2. ~ | 2 r4 | \break

    c'2\mp ( a4 ) | R2. | a,2\p ( f4 ) | R2. |
    f'4\mf r2 | R2. | r2 f4->\ff   
   \bar "||"
} 
      
clarinetFive = \relative c' { 
  \time 2/4
  \key g \major
  % Even between fingering repetitions - left hand
  <>\mf fs16 ( g fs g fs4 ) | e16 ( fs e fs e4 ) | 
  fs16 ( g fs g e fs e fs ) | d ( e c d  b4 ) | r8 d8 g,4 \breath | \break

  <>\p fs'16 ( g e fs g4 ) | e16 ( fs d e fs4 ) | 
  d16 ( e c d  b\< c a b | g4\mf ) r8 a'\mp | \break 

  g4 r8 a | fs4 r8 a | 
  e4 r8 a\< | g fs ( g\! ) g,->\f 
  \bar "||"
}

clarinetSix = \relative c' { 
  \time 2/4
  \key g \major
  % Even between fingering repetitions - right hand
  <>\mf g16 ( a g a g4 ) | a16 ( b a b a4 ) | 
  b16 ( c a b )  g\< ( a b c  ) | d2\f  \breath | \break

  <>\mp d16 ( c b c d4 ) | c16 ( b a b c4 ) | 
  a16 ( b a b ) g ( a g a ) | d4  r16 d-.\f e-. fs-. | g4 r | \break

  <>\mf b,16 ( c d e ) fs4 ( | g )  a,16 ( g a g | 
  g'4 ) b,16 ( a b a | g'4 ) c,16 ( b c b |

  g'4 ) d16 ( c d c | g'4 ) <>\p e16-. e-. c-. c-. | \break
  <>\f d16 ( c d c ) <>\p d-. d-. b-. b-. | <>\f c ( b c b ) r4 |

  <>\mf c16 ( b c b  g4 ) | a16\< ( c d fs ) <>\f a8-> ( g ) 
  \bar "||"
}
