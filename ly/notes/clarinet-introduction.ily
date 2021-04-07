clarinetOne = \relative c' { 
   \time 3/4 
   \key g \major
   % Pattern in G, written out rests
   g2\f d'4 | g2 d4 | g,2. | r4 r r | 
   g'2 d4 | g,2 d'4 | g2. | r2. 
   \bar "||"
}

clarinetTwo = \relative c' { 
   \time 3/4 
   \key f \major
   % Pattern in F, whole measure rests
   f2\f c'4 | f2 c4 | f,2. | R2. | 
   f'2 c4 | f,2 c'4 | f2. | R2. | 
   \bar "||"
} 

clarinetThree = \relative c' { 
   \time 3/4 
   \key f \major
   % Introducing middle C
   f2\mp c'4 | f2 c4 | f,2. | R2. | 
   f2 c'4 | f2\< g4 | a2.\mp| R2.\! | 
   g,2 d'4 | g2 d4 | g,2. | R2. | 
   g2 d'4 | g2\< a4 | bf2.\mf | R2. |
   c2\f bf4 | g2 e4 | d2 c4 | a2\> g4 | 
   f2.\mp ~ | 2. | f'2\f r4 
   \bar "||"
} 

clarinetFour = \relative c' { 
    \time 3/4 
    \key f \major
    % Slurs and more over the break
    f2\mp ( c'4 | f2 c4 | f,2. ) | R2. | 
    a'2 ( f4 | c2 bf4 | a2. ) | R2. | 
    g2\mf ( d'4 | g2 d4 | g,2. ) | R2. | 
    bf'2 ( a4 | g2 d4 | bf2. ) | R2. |
   
    f2 ( a4 | c2 d4 ) | f,2.\< ( | a4->\f ) r2 | 
    g,2\mf ( d'4 | g2\< bf4 | d\f ~ | 2 r4 ) |
    e2 ( d4 | c2 bf4 ) | g2\mf ( e4 | c2 a'4 ) | 
    f2. ~ | 2 r4 | 
    c'2\mp ( a4 ) | R2 | a,2\p ( f4 ) | R2. |
    f'4\mf r2 | R2. | r2 f4->\ff   
   \bar "||"
} 
      

