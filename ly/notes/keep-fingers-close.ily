keepFingersCloseStructure = \relative c' {
    s1*4 \bar "||"  
    s1*4 \bar "||" \break 
    s1*4 \bar "||" \break 
    s1*4 \bar "||" \break 
    s1*4 \bar "||" \break 
}

keepFingersCloseEF = \relative c' { 
    e1 ( | f | e | f2. ) r4 |
    e2 ( f | e f ) | e ( f | e ) r | 
    e4 ( f e f | e f e f ) | e ( f e f | e f e ) r |

    e8 ( f e f e f e f ) | e ( f e f e f e f ) | e ( f e f e f e f ) | e ( f e f e4) r |
    
    \tuplet 3/2 4 { e8 ( f e  f e f  e f e  f e f ) } | 
    \tuplet 3/2 4 { e8 ( f e  f e f  e f e  f e f ) } | 
    e16 ( f e f e f e f  e f e f e f e f ) | 
    e16 ( f e f e f e f  e4 ) r |
}

keepFingersCloseFE = \relative c' { 
    f1 ( | e | f | e2. ) r4 |
    f2 ( e | f e ) | f ( e | f ) r | 
    f4 ( e f e | f e f e ) | f ( e f e | f e f ) r |

    f8 ( e f e f e f e ) | f ( e f e f e f e ) | f ( e f e f e f e ) | f ( e f e f4 ) r |
    
    \tuplet 3/2 4 { f8 ( e f  e f e  f e f  e f e ) } | 
    \tuplet 3/2 4 { f8 ( e f  e f e  f e f  e f e ) } | 
    f16 ( e f e f e f e  f e f e f e f e ) | 
    f16 ( e f e f e f e  f4 ) r |
}

keepFingersCloseFsG = \transpose e fs \keepFingersCloseEF
keepFingersCloseGFs = \transpose e fs \keepFingersCloseFE

keepFingersCloseFGb = \transpose e f \keepFingersCloseEF
keepFingersCloseGbF = \transpose e f \keepFingersCloseFE


keepFingersCloseFFs = \relative c' { 
    f1 ( | fs | f | fs2. ) r4 |
    f2 ( fs | f fs ) | f ( fs | f ) r | 
    f4 ( fs f fs | f fs f fs ) | f ( fs f fs | f fs f ) r |

    f8 ( fs f fs f fs f fs ) | f ( fs f fs f fs f fs ) | f ( fs f fs f fs f fs ) | f ( fs f fs f4) r |
    
    \tuplet 3/2 4 { f8 ( fs f  fs f fs  f fs f  fs f fs ) } | 
    \tuplet 3/2 4 { f8 ( fs f  fs f fs  f fs f  fs f fs ) } | 
    f16 ( fs f fs f fs f fs  f fs f fs f fs f fs ) | 
    f16 ( fs f fs f fs f fs  f4 ) r |
}
keepFingersCloseFsF = \relative c' { 
    fs1 ( | f | fs | f2. ) r4 |
    fs2 ( f | fs f ) | fs ( f | fs ) r | 
    fs4 ( f fs f | fs f fs f ) | fs ( f fs f | fs f fs ) r |

    fs8 ( f fs f fs f fs f ) | fs ( f fs f fs f fs f ) | fs ( f fs f fs f fs f ) | fs ( f fs f fs4) r |
    
    \tuplet 3/2 4 { fs8 ( f fs  f fs f  fs f fs  f fs f ) } | 
    \tuplet 3/2 4 { fs8 ( f fs  f fs f  fs f fs  f fs f ) } | 
    fs16 ( f fs f fs f fs f  fs f fs f fs f fs f ) | 
    fs16 ( f fs f fs f fs f  f4 ) r |
}

keepFingersCloseDE = \relative c' { 
    d1 ( | e | d | e2. ) r4 |
    d2 ( e | d e ) | d ( e | d ) r | 
    d4 ( e d e | d e d e ) | d ( e d e | d e d ) r |

    d8 ( e d e d e d e ) | d ( e d e d e d e ) | d ( e d e d e d e ) | d ( e d e d4 ) r |
    
    \tuplet 3/2 4 { d8 ( e d  e d e  d e d  e d e ) } | 
    \tuplet 3/2 4 { d8 ( e d  e d e  d e d  e d e ) } | 
    d16 ( e d e d e d e  d e d e d e d e ) | 
    d16 ( e d e d e d e  d4 ) r |
}

keepFingersCloseED = \relative c' { 
    e1 ( | d | e | d2. ) r4 |
    e2 ( d | e d ) | e ( d | e ) r | 
    e4 ( d e d | e d e d ) | e ( d e d | e d e ) r |

    e8 ( d e d e d e d ) | e ( d e d e d e d ) | e ( d e d e d e d ) | e ( d e d e4) r |
    
    \tuplet 3/2 4 { e8 ( d e  d e d  e d e  d e d ) } | 
    \tuplet 3/2 4 { e8 ( d e  d e d  e d e  d e d ) } | 
    e16 ( d e d e d e d  e d e d e d e d ) | 
    e16 ( d e d e d e d  e4 ) r |
}

keepFingersCloseFG = \transpose e g \keepFingersCloseDE
keepFingersCloseGF = \transpose e g \keepFingersCloseED

keepFingersCloseEFs = \transpose d e \keepFingersCloseDE
keepFingersCloseFsE = \transpose d e \keepFingersCloseED

keepFingersCloseEG = \relative c' { 
    e1 ( | g | e | g2. ) r4 |
    e2 ( g | e g ) | e ( g | e ) r | 
    e4 ( g e g | e g e g ) | e ( g e g | e g e ) r |

    e8 ( g e g e g e g ) | e ( g e g e g e g ) | e ( g e g e g e g ) | e ( g e g e4 ) r |
    
    \tuplet 3/2 4 { e8 ( g e  g e g  e g e  g e g ) } | 
    \tuplet 3/2 4 { e8 ( g e  g e g  e g e  g e g ) } | 
    e16 ( g e g e g e g  e g e g e g e g ) | 
    e16 ( g e g e g e g  e4 ) r |
} 

keepFingersCloseGE = \relative c'' { 
    g1 ( | e | g | e2. ) r4 |
    g2 ( e | g e ) | g ( e | g ) r | 
    g4 ( e g e | g e g e ) | g ( e g e | g e g ) r |

    g8 ( e g e g e g e ) | g ( e g e g e g e ) | g ( e g e g e g e ) | g ( e g e g4 ) r |
    
    \tuplet 3/2 4 { g8 ( e g  e g e  g e g  e g e ) } | 
    \tuplet 3/2 4 { g8 ( e g  e g e  g e g  e g e ) } | 
    g16 ( e g e g e g e  g e g e g e g e ) | 
    g16 ( e g e g e g e  g4 ) r |
}

keepFingersCloseDF = \transpose e d \keepFingersCloseEG
keepFingersCloseFD = \transpose e d \keepFingersCloseGE

keepFingersCloseDFs = \relative c' { 
    d1 ( | fs | d | fs2. ) r4 |
    d2 ( fs | d fs ) | d ( fs | d ) r | 
    d4 ( fs d fs | d fs d fs ) | d ( fs d fs | d fs d ) r |

    d8 ( fs d fs d fs d fs ) | d ( fs d fs d fs d fs ) | d ( fs d fs d fs d fs ) | d ( fs d fs d4 ) r |
    
    \tuplet 3/2 4 { d8 ( fs d  fs d fs  d fs d  fs d fs ) } | 
    \tuplet 3/2 4 { d8 ( fs d  fs d fs  d fs d  fs d fs ) } | 
    d16 ( fs d fs d fs d fs  d fs d fs d fs d fs ) | 
    d16 ( fs d fs d fs d fs  d4 ) r |
}

keepFingersCloseFsD = \relative c' { 
    fs1 ( | d | fs | d2. ) r4 |
    fs2 ( d | fs d ) | fs ( d | fs ) r | 
    fs4 ( d fs d | fs d fs d ) | fs ( d fs d | fs d fs ) r |

    fs8 ( d fs d fs d fs d ) | fs ( d fs d fs d fs d ) | fs ( d fs d fs d fs d ) | fs ( d fs d fs4 ) r |
    
    \tuplet 3/2 4 { fs8 ( d fs  d fs d  fs d fs  d fs d ) } | 
    \tuplet 3/2 4 { fs8 ( d fs  d fs d  fs d fs  d fs d ) } | 
    fs16 ( d fs d fs d fs d  fs d fs d fs d fs d ) | 
    fs16 ( d fs d fs d fs d  fs4 ) r |
}

keepFingersCloseCD = \transpose d c \keepFingersCloseDE
keepFingersCloseDC = \transpose d c \keepFingersCloseED

keepFingersCloseDG = \relative c' { 
    d1 ( | g | d | g2. ) r4 |
    d2 ( g | d g ) | d ( g | d ) r | 
    d4 ( g d g | d g d g ) | d ( g d g | d g d ) r |

    d8 ( g d g d g d g ) | d ( g d g d g d g ) | d ( g d g d g d g ) | d ( g d g d4 ) r |
    
    \tuplet 3/2 4 { d8 ( g d  g d g  d g d  g d g ) } | 
    \tuplet 3/2 4 { d8 ( g d  g d g  d g d  g d g ) } | 
    d16 ( g d g d g d g  d g d g d g d g ) | 
    d16 ( g d g d g d g  d4 ) r |
}

keepFingersCloseGD = \relative c'' { 
    g1 ( | d | g | d2. ) r4 |
    g2 ( d | g d ) | g ( d | g ) r | 
    g4 ( d g d | g d g d ) | g ( d g d | g d g ) r |

    g8 ( d g d g d g d ) | g ( d g d g d g d ) | g ( d g d g d g d ) | g ( d g d g4 ) r |
    
    \tuplet 3/2 4 { g8 ( d g  d g d  g d g  d g d ) } | 
    \tuplet 3/2 4 { g8 ( d g  d g d  g d g  d g d ) } | 
    g16 ( d g d g d g d  g d g d g d g d ) | 
    g16 ( d g d g d g d  g4 ) r |
}

keepFingersCloseCE = \transpose d c \keepFingersCloseDFs
keepFingersCloseEC = \transpose d c \keepFingersCloseFsD

keepFingersCloseCF = \transpose d c \keepFingersCloseDG
keepFingersCloseFC = \transpose d c \keepFingersCloseGD

keepFingersCloseCFs = \relative c' { 
    c1 ( | fs | c | fs2. ) r4 |
    c2 ( fs | c fs ) | c ( fs | c ) r | 
    c4 ( fs c fs | c fs c fs ) | c ( fs c fs | c fs c ) r |

    c8 ( fs c fs c fs c fs ) | c ( fs c fs c fs c fs ) | c ( fs c fs c fs c fs ) | c ( fs c fs c4 ) r |
    
    \tuplet 3/2 4 { c8 ( fs c  fs c fs  c fs c  fs c fs ) } | 
    \tuplet 3/2 4 { c8 ( fs c  fs c fs  c fs c  fs c fs ) } | 
    c16 ( fs c fs c fs c fs  c fs c fs c fs c fs ) | 
    c16 ( fs c fs c fs c fs  c4 ) r |
}

keepFingersCloseFsC = \relative c' { 
    fs1 ( | c | fs | c2. ) r4 |
    fs2 ( c | fs c ) | fs ( c | fs ) r | 
    fs4 ( c fs c | fs c fs c ) | fs ( c fs c | fs c fs ) r |

    fs8 ( c fs c fs c fs c ) | fs ( c fs c fs c fs c ) | fs ( c fs c fs c fs c ) | fs ( c fs c fs4 ) r |
    
    \tuplet 3/2 4 { fs8 ( c fs  c fs c  fs c fs  c fs c ) } | 
    \tuplet 3/2 4 { fs8 ( c fs  c fs c  fs c fs  c fs c ) } | 
    fs16 ( c fs c fs c fs c  fs c fs c fs c fs c ) | 
    fs16 ( c fs c fs c fs c  fs4 ) r |
}

keepFingersCloseCG = \relative c' { 
    c1 ( | g' | c, | g'2. ) r4 |
    c,2 ( g' | c, g' ) | c, ( g' | c, ) r | 
    c4 ( g' c, g' | c, g' c, g' ) | c, ( g' c, g' | c, g' c, ) r |

    c8 ( g' c, g' c, g' c, g' ) | c, ( g' c, g' c, g' c, g' ) | c, ( g' c, g' c, g' c, g' ) | c, ( g' c, g' c,4 ) r |
    
    \tuplet 3/2 4 { c8 ( g' c,  g' c, g'  c, g' c,  g' c, g' ) } | 
    \tuplet 3/2 4 { c,8 ( g' c,  g' c, g'  c, g' c,  g' c, g' ) } | 
    c,16 ( g' c, g' c, g' c, g'  c, g' c, g' c, g' c, g' ) | 
    c,16 ( g' c, g' c, g' c, g'  c,4 ) r |
}

keepFingersCloseGC = \relative c'' { 
    g1 ( | c, | g' | c,2. ) r4 |
    g'2 ( c, | g' c, ) | g' ( c, | g' ) r | 
    g4 ( c, g' c, | g' c, g' c, ) | g' ( c, g' c, | g' c, g' ) r |

    g8 ( c, g' c, g' c, g' c, ) | g' ( c, g' c, g' c, g' c, ) | g' ( c, g' c, g' c, g' c, ) | g' ( c, g' c, g'4 ) r |
    
    \tuplet 3/2 4 { g8 ( c, g'  c, g' c,  g' c, g'  c, g' c, ) } | 
    \tuplet 3/2 4 { g'8 ( c, g'  c, g' c,  g' c, g'  c, g' c, ) } | 
    g'16 ( c, g' c, g' c, g' c,  g' c, g' c, g' c, g' c, ) | 
    g'16 ( c, g' c, g' c, g' c,  g'4 ) r |
}


keepFingersCloseLeftHand = \relative c'' { 

    g8 ( f g e  g d g c,  | g' d g e  g f ) g4  |    

    g8 ( fs g e  g d g c,  | g' d g e  g fs ) g4  | \break   

    g8 ( fs g f  g e g d  | g c, g' d  g e g f? | g fs g a ) g2 | \break

    fs8 ( g fs e  fs d fs c  | fs d fs e  fs g fs a ) | g2 r  | \break 

    f8 ( g f fs  f e f d  | f c f d  f e f fs | f g f a ) g2 | \break

    e8 ( f e fs  e g e fs? | e f e d  e c e d | e a e g  e fs e f ) | e2 r | \break

    d8 ( e d f  d fs d g  | d a' d, c ) d2 | 

    c8 ( d c e  c f c fs  | c g' c, a'  g f e d ) | c2 r |
 
} 

keepFingersClose  = {

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseFG
    >>

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseGF
    >>

    \pageBreak

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseEF
    >>

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseFE
    >>

    \pageBreak

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseDE
    >>

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseED
    >>

    \pageBreak

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseCD
    >>

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseDC
    >>

    \pageBreak

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseEG
    >>

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseGE
    >>

    \pageBreak

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseDF
    >>

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseFD
    >>

    \pageBreak

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseCE
    >>

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseEC
    >>

    \pageBreak

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseDFs
    >>

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseFsD
    >>


    \pageBreak

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseEFs
    >>

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseFsE
    >>

    \pageBreak


    << 
        \keepFingersCloseStructure 
        \keepFingersCloseFsG
    >>

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseGFs
    >>

    \pageBreak


    << 
        \keepFingersCloseStructure 
        \keepFingersCloseDG
    >>

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseGD
    >>

    \pageBreak

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseCF
    >>

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseFC
    >>

    \pageBreak

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseCG
    >>

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseGC
    >>

    \pageBreak

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseFGb
    >>

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseGbF
    >>

    \pageBreak

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseCFs
    >>

    << 
        \keepFingersCloseStructure 
        \keepFingersCloseFsC
    >>

}


keepFingersCloseSequence  = \relative c' {

    \time 2/4 
    \tuplet 3/2 4 {

        f8 g f  g f g  
        e8 f e  f e f | 

        d8 e d  e d e 
        c8 d c  d c d  | \break

        e8 g e  g e g  
        d8 f d  f d f | 

        c8 e c  e c e
        d8 fs d  fs d fs | \break 

        e8 fs e  fs e fs 
        fs8 g fs  g fs g |

        d8 g d  g d g
        c,8 f c  f c f | 

        c8 g' c,  g' c, g' 
        f8 gf f  gf f gf |

        c,8 fs c  fs c fs 
    } g4  g, | 

    c2 \bar "||"

}

