articulationExerciseOne = \relative c'' { 
    \key c \major
    \time 2/4
    \tempo 4=104-160
    c16 16 16 16 4 | \tag #'Speed { R2 }
    b16 16 16 16 4 | \tag #'Speed { R2^"etc. ..." }
    \tag #'Normal \relative c'' {
        a16 16 16 16 4 |
        g16 16 16 16 4 |
        f16 16 16 16 4 |
        e16 16 16 16 4 |
        d16 16 16 16 4 |
        c16 16 16 16 4 |
        b16 16 16 16 4 |
        b16 c d e  f g a b | c2 |

        c16 16 16 16 4 |
        d16 16 16 16 4 |
        e16 16 16 16 4 |
        f16 16 16 16 4 |
        g16 16 16 16 4 |
        a16 16 16 16 4 |
        b16 16 16 16 4 |
        c16 16 16 16 4 |
        d16 16 16 16 4 |
        e16 16 16 16 4 |
        f16 16 16 16 4 |
        e16 16 16 16 4 |
        d16 c b a  g f e d | 
        \tuplet 3/2 2 { c4 c, c'' | b, b, b'' } | 
        c2  
    }
    \bar "|."
}

articulationExerciseTwo = \relative c'' { 
    \key c \major
    \time 2/4
    \tempo 4=108-160
    c16 d16 e16 d16 c4 | \tag #'Speed { R2 }
    b16 c16 d16 c16 b4 | \tag #'Speed { R2^"etc. ..." }
    \tag #'Normal \relative c'' {
        a16 b16 c16 b16 a4 |
        g16 a16 b16 a16 g4 |
        f16 g16 a16 g16 f4 |
        e16 f16 g16 f16 e4 |
        d16 e16 f16 e16 d4 |
        c16 d16 e16 d16 c4 |
        b16 c16 d16 c16 b4 |
        c16 f e d  a' g f b | c2 |

        c16 b16 a16 b16 c4 |
        d16 c16 b16 c16 d4 |
        e16 d16 c16 d16 e4 |
        f16 e16 d16 e16 f4 |
        g16 f16 e16 f16 g4 |
        a16 g16 f16 g16 a4 |
        b16 a16 g16 a16 b4 |
        c16 b16 a16 b16 c4 |
        d16 c16 b16 c16 d4 |
        e16 d16 c16 d16 e4 |
        f16 e16 d16 e16 f4 |
        e16 a,16 b16 c16  f, g a b | 
        \tuplet 3/2 2 { c4 c, c, | b'' b, b, } | 
        c2  
    }
    \bar "|."
}

articulationExerciseThree = \relative c'' { 
    \key c \major
    \time 2/4
    \tempo 4=108-160
    c16 e16 g16 e16 c4 | \tag #'Speed { R2 }
    b16 d16 f16 d16 b4 | | \tag #'Speed { R2^"etc. ..." }
    \tag #'Normal \relative c'' {
        a16 c16 e16 c16 a4 |
        g16 b16 d16 b16 g4 |
        f16 a16 c16 a16 f4 |
        e16 g16 b16 g16 e4 |
        d16 f16 a16 f16 d4 |
        c16 e16 g16 e16 c4 |
        b16 d16 f16 d16 b4 |
        c2 |

        c'16 a16 f16 a16 c4 |
        d16 b16 g16 b16 d4 |
        e16 c16 a16 c16 e4 |
        f16 d16 b16 d16 f4 |
        g16 e16 c16 e16 g4 |
        a16 f16 d16 f16 a4 |
        b16 g16 e16 g16 b4 |
        c16 a16 f16 a16 c4 |
        d16 b16 g16 b16 d4 |
        e16 c16 a16 c16 e4 |
        f16 d16 b16 d16 f4 |
        e16 c a f  d b g e   | 
        c2  
    }
    \bar "|."
}

articulationExerciseFour = \relative c'' { 
    \key c \major
    \tag #'Normal { \time 4/4 }
    \tag #'Speed { \time 3/4 }
    \tempo 4=120-152
    c16 16 16 16  16 16 16 16  4 \tag #'Normal { r4 } | \tag #'Speed { R2. }
    b16 16 16 16  16 16 16 16  4 \tag #'Normal { r4 } | \tag #'Speed { R2.^"etc. ..." }
    \tag #'Normal \relative c'' {  
        a16 16 16 16  16 16 16 16  4 r4 |
        g16 16 16 16  16 16 16 16  4 r4 |
        f16 16 16 16  16 16 16 16  4 r4 |
        e16 16 16 16  16 16 16 16  4 r4 |
        d16 16 16 16  16 16 16 16  4 r4 |
        c16 16 16 16  16 16 16 16  4 r4 |
        b16 16 16 16  16 16 16 16  4 r4 |
        b16 c d e  f g a b  c2 |

        c16 16 16 16  16 16 16 16  4 r4 |
        d16 16 16 16  16 16 16 16  4 r4 |
        e16 16 16 16  16 16 16 16  4 r4 |
        f16 16 16 16  16 16 16 16  4 r4 |
        g16 16 16 16  16 16 16 16  4 r4 |
        a16 16 16 16  16 16 16 16  4 r4 |
        b16 16 16 16  16 16 16 16  4 r4 |
        c16 16 16 16  16 16 16 16  4 r4 |
        d16 16 16 16  16 16 16 16  4 r4 |
        e16 16 16 16  16 16 16 16  4 r4 |
        f16 16 16 16  16 16 16 16  4 r4 |
        e16 e c c  a a f f  d d b b  g g e e | 
        c1 |
    }
    \bar "|."
}

articulationExerciseFive = \relative c'' {
    \key c \major
    \tag #'Normal { \time 4/4 }
    \tag #'Speed { \time 3/4 }
    \tempo 4=108-160
    c16 d16 e16 d16  c16 d16 e16 d16 c4 \tag #'Normal { r4 } | \tag #'Speed { R2. }
    b16 c16 d16 c16  b16 c16 d16 c16 b4 \tag #'Normal { r4 } | \tag #'Speed { R2.^"etc. ..." }
    \tag #'Normal \relative c'' { 
        a16 b16 c16 b16  a16 b16 c16 b16 a4 r4 |
        g16 a16 b16 a16  g16 a16 b16 a16 g4 r4 |
        f16 g16 a16 g16  f16 g16 a16 g16 f4 r4 |
        e16 f16 g16 f16  e16 f16 g16 f16 e4 r4 |
        d16 e16 f16 e16  d16 e16 f16 e16 d4 r4 |
        c16 d16 e16 d16  c16 d16 e16 d16 c4 r4 |
        b16 c16 d16 c16  b16 c16 d16 c16 b4 r4 |
        c16 f e d  a' g f b  c2 |

        c16 b16 a16 b16  c16 b16 a16 b16 c4 r4 |
        d16 c16 b16 c16  d16 c16 b16 c16 d4 r4 |
        e16 d16 c16 d16  e16 d16 c16 d16 e4 r4 |
        f16 e16 d16 e16  f16 e16 d16 e16 f4 r4 |
        g16 f16 e16 f16  g16 f16 e16 f16 g4 r4 |
        a16 g16 f16 g16  a16 g16 f16 g16 a4 r4 |
        b16 a16 g16 a16  b16 a16 g16 a16 b4 r4 |
        c16 b16 a16 b16  c16 b16 a16 b16 c4 r4 |
        d16 c16 b16 c16  d16 c16 b16 c16 d4 r4 |
        e16 d16 c16 d16  e16 d16 c16 d16 e4 r4 |
        f16 e16 d16 e16  f16 e16 d16 e16 f4 r4 |
        e16 d c a  g f d c  b g f e  c b c d |
        c1 
    } 
    \bar "|."
}

articulationExerciseSix = \relative c'' {
    \key c \major
    \tag #'Normal { \time 4/4 }
    \tag #'Speed { \time 3/4 }
    \tempo 4=120-152
    c16 e16 g16 e16  c16 e16 g16 e16 c4 \tag #'Normal { r4 } | \tag #'Speed { R2. }
    b16 d16 f16 d16  b16 d16 f16 d16 b4 \tag #'Normal { r4 } | \tag #'Speed { R2.^"etc. ..." }
    \tag #'Normal \relative c'' {
        a16 c16 e16 c16  a16 c16 e16 c16 a4 r4 |
        g16 b16 d16 b16  g16 b16 d16 b16 g4 r4 |
        f16 a16 c16 a16  f16 a16 c16 a16 f4 r4 |
        e16 g16 b16 g16  e16 g16 b16 g16 e4 r4 |
        d16 f16 a16 f16  d16 f16 a16 f16 d4 r4 |
        c16 e16 g16 e16  c16 e16 g16 e16 c4 r4 |
        b16 d16 f16 d16  b16 d16 f16 d16 b4 r4 |
        c1 |  

        c'16 a16 f16 a16  c16 a16 f16 a16 c4 r4 |
        d16 b16 g16 b16  d16 b16 g16 b16 d4 r4 |
        e16 c16 a16 c16  e16 c16 a16 c16 e4 r4 |
        f16 d16 b16 d16  f16 d16 b16 d16 f4 r4 |
        g16 e16 c16 e16  g16 e16 c16 e16 g4 r4 |
        a16 f16 d16 f16  a16 f16 d16 f16 a4 r4 |
        b16 g16 e16 g16  b16 g16 e16 g16 b4 r4 |
        c16 a16 f16 a16  c16 a16 f16 a16 c4 r4 |
        d16 b16 g16 b16  d16 b16 g16 b16 d4 r4 |
        e16 c16 a16 c16  e16 c16 a16 c16 e4 r4 |
        f16 d16 b16 d16  f16 d16 b16 d16 f4 r4 |
        e16 c a f  d b g e c2 
    }|    
    \bar "|."
}


articulationExerciseSeven = \relative c'' { 
    \key c \major
    \tag #'Normal { \time 3/4 }
    \tag #'Speed { \time 4/4 }
    \tempo 4=120-152
    c16 16 16 16  16 16 16 16  16 16 16 16 
        \tag #'Normal \relative c'' { | c4 r2 } 
        \tag #'Speed \relative c'' { c4 | R1 } |
    b16 16 16 16  16 16 16 16  16 16 16 16 
        \tag #'Normal \relative c'' { | b4 r2 } 
        \tag #'Speed \relative c'' { b4 | R1^"etc. ..." } |
    \tag #'Normal \relative c'' {  
        a16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        g16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        f16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        e16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        d16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        c16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        b16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        b16 c d e  f g a b  c4 | R2.

        c16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        d16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        e16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        f16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        g16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        a16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        b16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        c16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        d16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        e16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        f16 16 16 16  16 16 16 16  16 16 16 16 | \noBreak 4 r2 |
        e16 c a f  d b g e  c4 |
    }
    \bar "|."
}



articulationExerciseEight = \relative c'' {
    \key c \major
    \tag #'Normal { \time 3/4 }
    \tag #'Speed { \time 4/4 }
    \tempo 4=108-160
    c16 d16 e16 d16  c16 d16 e16 d16  c16 d16 e16 d16 
        \tag #'Normal \relative c'' { | c4 r2 } 
        \tag #'Speed \relative c'' { c4 | R1 } |
    
    b16 c16 d16 c16  b16 c16 d16 c16  b16 c16 d16 c16 
        \tag #'Normal \relative c'' { | b4 r2 } 
        \tag #'Speed \relative c'' { b4 | R1^"etc. ..." } |
    
    \tag #'Normal \relative c'' { 
        a16 b16 c16 b16  a16 b16 c16 b16  a16 b16 c16 b16 | \noBreak a4 r2 | 
        g16 a16 b16 a16  g16 a16 b16 a16  g16 a16 b16 a16 | \noBreak g4 r2 | 
        f16 g16 a16 g16  f16 g16 a16 g16  f16 g16 a16 g16 | \noBreak f4 r2 | 
        e16 f16 g16 f16  e16 f16 g16 f16  e16 f16 g16 f16 | \noBreak e4 r2 | 
        d16 e16 f16 e16  d16 e16 f16 e16  d16 e16 f16 e16 | \noBreak d4 r2 | 
        c16 d16 e16 d16  c16 d16 e16 d16  c16 d16 e16 d16 | \noBreak c4 r2 | 
        b16 c16 d16 c16  b16 c16 d16 c16  b16 c16 d16 c16 | \noBreak b4 r2 | 
        c16 f e d  a' g f b  c4 | R2.|

        c16 b16 a16 b16  c16 b16 a16 b16  c16 b16 a16 b16 | \noBreak c4 r2 | 
        d16 c16 b16 c16  d16 c16 b16 c16  d16 c16 b16 c16 | \noBreak d4 r2 | 
        e16 d16 c16 d16  e16 d16 c16 d16  e16 d16 c16 d16 | \noBreak e4 r2 | 
        f16 e16 d16 e16  f16 e16 d16 e16  f16 e16 d16 e16 | \noBreak f4 r2 | 
        g16 f16 e16 f16  g16 f16 e16 f16  g16 f16 e16 f16 | \noBreak g4 r2 | 
        a16 g16 f16 g16  a16 g16 f16 g16  a16 g16 f16 g16 | \noBreak a4 r2 | 
        b16 a16 g16 a16  b16 a16 g16 a16  b16 a16 g16 a16 | \noBreak b4 r2 | 
        c16 b16 a16 b16  c16 b16 a16 b16  c16 b16 a16 b16 | \noBreak c4 r2 | 
        d16 c16 b16 c16  d16 c16 b16 c16  d16 c16 b16 c16 | \noBreak d4 r2 | 
        e16 d16 c16 d16  e16 d16 c16 d16  e16 d16 c16 d16 | \noBreak e4 r2 | 
        f16 e16 d16 e16  f16 e16 d16 e16  f16 e16 d16 e16 | \noBreak f4 r2 | 
        e16 d c a  g f d c  b g f e  |
        c2. 
    } 
    \bar "|."
}



articulationExerciseNine = \relative c'' {
    \key c \major
    \tag #'Normal { \time 3/4 }
    \tag #'Speed { \time 4/4 }
    \tempo 4=120-152
    c16 e16 g16 e16  c16 e16 g16 e16  c16 e16 g16 e16 
        \tag #'Normal \relative c'' { | c4 r2 } 
        \tag #'Speed \relative c'' { c4 | R1 } |

    b16 d16 f16 d16  b16 d16 f16 d16  b16 d16 f16 d16
        \tag #'Normal \relative c'' { | b4 r2 } 
        \tag #'Speed \relative c'' { b4 | R1^"etc. ..." } |

    \tag #'Normal \relative c'' {
        a16 c16 e16 c16  a16 c16 e16 c16  a16 c16 e16 c16 | \noBreak a4 r2 |
        g16 b16 d16 b16  g16 b16 d16 b16  g16 b16 d16 b16 | \noBreak g4 r2 |
        f16 a16 c16 a16  f16 a16 c16 a16  f16 a16 c16 a16 | \noBreak f4 r2 |
        e16 g16 b16 g16  e16 g16 b16 g16  e16 g16 b16 g16 | \noBreak e4 r2 |
        d16 f16 a16 f16  d16 f16 a16 f16  d16 f16 a16 f16 | \noBreak d4 r2 |
        c16 e16 g16 e16  c16 e16 g16 e16  c16 e16 g16 e16 | \noBreak c4 r2 |
        b16 d16 f16 d16  b16 d16 f16 d16  b16 d16 f16 d16 | \noBreak b4 r2 |
        c16 e g e  f a c a  b d f d | c2. |  

        c16 a16 f16 a16  c16 a16 f16 a16  c16 a16 f16 a16 | \noBreak c4 r2 |
        d16 b16 g16 b16  d16 b16 g16 b16  d16 b16 g16 b16 | \noBreak d4 r2 |
        e16 c16 a16 c16  e16 c16 a16 c16  e16 c16 a16 c16 | \noBreak e4 r2 |
        f16 d16 b16 d16  f16 d16 b16 d16  f16 d16 b16 d16 | \noBreak f4 r2 |
        g16 e16 c16 e16  g16 e16 c16 e16  g16 e16 c16 e16 | \noBreak g4 r2 |
        a16 f16 d16 f16  a16 f16 d16 f16  a16 f16 d16 f16 | \noBreak a4 r2 |
        b16 g16 e16 g16  b16 g16 e16 g16  b16 g16 e16 g16 | \noBreak b4 r2 |
        c16 a16 f16 a16  c16 a16 f16 a16  c16 a16 f16 a16 | \noBreak c4 r2 |
        d16 b16 g16 b16  d16 b16 g16 b16  d16 b16 g16 b16 | \noBreak d4 r2 |
        e16 c16 a16 c16  e16 c16 a16 c16  e16 c16 a16 c16 | \noBreak e4 r2 |
        f16 d16 b16 d16  f16 d16 b16 d16  f16 d16 b16 d16 | \noBreak f4 r2 |
        e16 c a f  d b g e c4 |
    }     
    \bar "|."
}