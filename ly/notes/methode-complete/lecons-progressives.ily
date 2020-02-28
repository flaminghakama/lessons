leconsProgressivesOneTop = \relative c'' { 
    \key c \major
    \time 2/2
    c2 d | e r | d e | f r | e d | c e | d1 | g,2 r | 
    \bar ":|][|:" \break
    
    g'2 b, | c r | f g | e r | e c | a d | b1 | c2 r | 
    \bar ":|]"
}
leconsProgressivesOneBottom = \relative c' { 
    \key c \major
    \time 2/2
    e4 g b, g' | c, e g c | b g c g | d' g, b d | c g f g | e g c, c' | b g a fs | g g g r ||
    r4 g f g | e g e c | a' c b d | c c, e g | c g e g | f d f f | g g f g | e g c, r ||
}

leconsProgressivesTwoTop = \relative c'' { 
    \key c \major
    \time 2/2
    c2 d4 4 | e2 r | d2 e4 4 | f2 r | e2 d4 4 | c2 e4 4 | d2 2 | g, r | 
    \bar ":|][|:" \break
    
    g'2 b,4 4 | c2 r | f g4 4 | e2 r | e c4 4 | a2 d4 4 | b1 | c2 r | 
    \bar ":|]"
}
leconsProgressivesTwoBottom = \relative c' { 
    \key c \major
    \time 2/2
    e2 b | c4 e g c | b2 c | d4 g, b d | c2 b | a c | b4 g a fs | g4 4 4 r ||
    b,4 d f2 | e4 g e c | a' d8 c b2 | c4 c, e g | c g e a8 g | f4 d8 e f4 fs | g d f2 | e4 g c, r ||
}

leconsProgressivesThreeTop = \relative c'' { 
    \key c \major
    \time 4/4
    c4 4 d4 4 | e2 r | d4 4 e4 4 | f2 r | e4 4 d4 4 | c4 4 e4 4 | d2 4 4 | g,2 r | 
    \bar ":|][|:" \break
    g'4 4 b,4 4 | c2 r | f4 4 g4 4 | e2 r | e4 4 d4 4 | a4 4 d4 4 | b2 4 4 | c2 r | 
    \bar ":|]"
}
leconsProgressivesThreeBottom = \relative c' { 
    \key c \major
    \time 4/4
    e2 b | c4 e g c | b2 c | d4 g, b d | c2 b | a c | b4 g e fs | g4 4 4 r ||
    r4 g4 4 f | e g c b | a d8 c b4 g | c4 c, e g | c2 e, | f2. 4 | g4 4 f2 | e2 r ||
}

leconsProgressivesFourTop = \relative c'' { 
    \key c \major
    \time 4/4
    c2. ( d4 | e2 ) r | d2. ( e4 | f2 ) r | 
    e2._> ( d4_> | c2. ) e4^!_> | d2._> ( fs,4 | g2_> ) r2 
    \bar ":|][|:" \break
    
    g'2. ( b,4 | c2 ) r | f2. ( g4 | e2 ) r | 
    e2._> ( c4_> | a2. ) d4_> | b2._> b4 | c2_> r2 
    \bar ":|]"
}
leconsProgressivesFourBottom = \relative c' { 
    \key c \major
    \time 4/4
    \marcato
    e4-. 4-. 4-. 4-. | g g e c | b b b c | d d' b g |
    c g g f | e e e c | b d c d | b2 r ||

    f'4 f f f | e g e c | b b b b | e e e g | 
    c4 r c, e | f r f f | g g g f | e2 r ||
}

leconsProgressivesFiveTop = \relative c'' { 
    \key c \major
    \time 4/4
    c4 ( b d c | e2 ) r | d4 ( cs e d | f2-^ ) r | 
    e4 ( g e d ) | c ( b c e ) | d1 ( | g,2 ) r 
    \bar ":|][|:" \break
    
    a'4 ( g b, d | c2 ) r | f4-^ ( d g f | e2 ) r | 
    e4 ( g ) c, ( e ) | a,4-. d ( f-^ d ) | c ( b a b ) | c2 r 
    \bar ":|][|:" \break
    
    \bar ":|]"
}
leconsProgressivesFiveBottom = \relative c' { 
    \key c \major
    \time 4/4
    c4 r r2 | r4 c e g | g r r2 | r4 g b d | 
    c4 r c ( b | a g fs2 ) | g4 d c2 | b4 d f r | 

    r2 f | e4 ( g e c ) | b1 | c4 c' g e | 
    c2 e | f4 r r f | g2 f | e r || 
}

leconsProgressivesFiveTop = \relative c'' { 
    \key c \major
    \time 4/4
    c4 ( b d c | e2 ) r | d4 ( cs e d | f2-^ ) r | 
    e4 ( g e d ) | c ( b c e ) | d1 ( | g,2 ) r 
    \bar ":|][|:" \break
    
    a'4 ( g b, d | c2 ) r | f4-^ ( d g f | e2 ) r | 
    e4 ( g ) c, ( e ) | a,4-. d ( f-^ d ) | c ( b a b ) | c2 r 
    \bar ":|][|:" \break
    
    \bar ":|]"
}
leconsProgressivesFiveBottom = \relative c' { 
    \key c \major
    \time 4/4
    c4 r r2 | r4 c e g | g r r2 | r4 g b d | 
    c4 r c ( b | a g fs2 ) | g4 d c2 | b4 d f r | 

    r2 f | e4 ( g e c ) | b1 | c4 c' g e | 
    c2 e | f4 r r f | g2 f | e r || 
}

leconsProgressivesSixTop = \relative c'' { 
    \key c \major
    \time 4/4
    c4-! c2-> d4 | e2 r | d4-! d2-> e4 | f2 r | 
    e4 2_> d4_> ~ | 4 c2_> e4 | d1 ( | g,2 ) r | 
    \bar ":|][|:" \break
    
    g'4 b,2-> d4 | c2 r | f4-!-^ d2-> g4 | e2 r | 
    e4-! 2-> c4 ~ | 4 a2^> d4 ~ | 4 b2-> g'4 | c,2 r 
    \bar ":|]"
}
leconsProgressivesSixBottom = \relative c' { 
    \key c \major
    \time 4/4
    e2 g | c4 g e c | g'2 2 | 4 d' b g | c2 b | a c | b4 g d c | b2 r ||
    g'2 f | e4 g e c | b2 g' | c4 c, e g | c2 a | f d | g f | e r ||
}

leconsProgressivesSevenTop = \relative c'' { 
    \key c \major
    \time 4/4
    r4 c2 d4 ~ | 4 e2 c4 | r4 d2 e4 ~ | 4 f2-> d4 | 
    r4 e2 d4 ~ | 4 c2 e4 ~ | 4 d2 a'4 | g2 r | 
    \bar ":|][|:" \break
    
    r4 g2-> b,4 ~ | 4 c g r | r f'2 g4 ~ | 4 d e r | 
    r4 e2 c4 ~ | 4 a2 d4 ~ | 4 c2 b4 | c2 r ||
    \bar ":|]"
}
leconsProgressivesSevenBottom = \relative c' { 
    \key c \major
    \time 4/4
    e2 g | c e, | g c | d g, | c b | a c ~ | 4 4 4 4 | b2 r ||
    g2 r | e b4 c | a'2 b | c4 b c r | c,2 a' | f d | g f | e r ||
}


leconsProgressivesEightTop = \relative c'' { 
    \key c \major
    \time 4/4
    r8 c-. b-. [ c-. ] d4-. g, ~ | 4 e'2-> r4 | r8 d-. cs-. [ d-. ] e4 a, ~ | 4 f'2-> r4 | \break
    r4 e d8-. g-. f-.-^ d-. | c4 d e2 | r4 c8-. b-. a4 b8-. a-. | g2 r |
    \bar ":|][|:" 
    
    r4 g'_> ~ 8-. f-. e-. d-. | c4-. e-. g, r | \break r4 f'-> ~ 8 d-. g-. f-. | e2 r | 
    r4 e-> ~ 8 d-. c-. b-. | a4-. d-. r8 d-. e-. [ f-.-^ ] | b,4-. c-. d-. b-. | c2 r |
    \bar ":|]"
}
leconsProgressivesEightBottom = \relative c' { 
    \key c \major
    \time 4/4
    e4 d8 c b2 | bf'4-> a cs,8 e a g | f4 e8 d cs2 | d4 c b8 g' a b | 
    c2 b | a4 b c cs, | d r fs r | r8 g b, [ d ] g4 r ||

    b,2 d4 f | e g e d8 c | d2 g | c,4 e g c | 
    c,2 e | f2. e8 d | g2. f4 | e2 r ||
}

leconsProgressivesNineTop = \relative c'' { 
    \key c \major
    \time 4/4
    c2 e8 ( d c d | e2 ) r | d2 f8 ( e d e | f2 ) r | \break
    e2 d8 ( e f-^ d ) | c2 e8 ( g f e ) | d2 e8 ( d e d ) | g,2 r |
    \bar ":|][|:" 

    g'2 b,8 ( c d b ) | c2 r | \break f8 ( e f-^ d g2 ) | e r | 
    e2 c8 ( d e c ) | a2 d8 ( e f d ) | b2 c8 ( b a b ) | c2 r |    
    \bar ":|]"
}
leconsProgressivesNineBottom = \relative c' { 
    \key c \major
    \time 4/4
    r8 e ( c [ e ] ) g ( f e f ) | g g g g g ( e d c ) | 
    r8 b b [ b ] d ( c b c ) | d d d d d ( g a b ) | 
    c4 e, g2 | r8 e e ( [ g ] ) c ( e d c ) |
    b4 g fs d | r8 g b, [ d ] g4 r ||

    r2 g | e8 ( f g e ) c4 e | d2 b8 ( c d b ) | c4 4 e g |
    c4 c, r g'8 ( e ) | f4 4 r a8 ( f ) | d4 g2-> f4 | e2 r || 
}

leconsProgressivesTenTop = \relative c'' { 
    \key c \major
    \time 4/4
    c8 ( b c g d' cs d g, | e'2 ) r | d8 ( cs d g, e' ds e g, | f'2 ) r | \break
    e8 ( g f e ) d ( f-^ e d ) | c-! g ( c d e g fs e ) | d4 e8 ( d e d c a ) | g2 r |  
    \bar ":|][|:" 

    g'8 ( f e d c b a b | c2 ) r | \break f8 ( e f a g d g f | e2 ) r | 
    e8 ( g f e d c b c ) | a-! b ( c cs d e f-^ d ) | b4 4 c8 ( b a b ) | c2 r |
    \bar ":|]"
}
leconsProgressivesTenBottom = \relative c' { 
    \key c \major
    \time 4/4
    e2 b | c8 ( [ r c e ] g e d c ) | b2 c | d8 ( g b d c b a g ) | 
    c2 b, | c4 r r c'-> ~ | 4 g fs d | g g g r ||

    b,2 f' | e8 ( g f e d c b c ) | a'2 b | c8 ( c b a g f e d ) | 
    c2 e | f4 r r d8 ( f ) | g4 r g f | e2 r ||
}

leconsProgressivesElevenTop = \relative c'' { 
    \key c \major
    \time 4/4
    c2 ~ 8 b ( d c | e2 ) r | d2 ~ 8 cs ( e d | f2-^ ) r | 
    e2 ~ 8 g ( f-^ d ) | c2 ~ 8 g ( c e ) | d2 ~ 8 8 ( e d ) | g,2 r |
    \bar ":|][|:" 

    g'2 ~ 8 b, ( d g, ) | c2 r | f2 ~ 8 d ( g f ) | e2 r | 
    e2 ~ 8 d ( c e ) | a,2 ~ 8 d ( f-^ d ) | b2 \( ~ 8 ( g d' b ) | c2 \) r |
    \bar ":|]"
}
leconsProgressivesElevenBottom = \relative c' { 
    \key c \major
    \time 4/4
    r8 c ( e [ g ] ) c4 r | r8 c, ( e [ g ] f e d c ) | r8 c ( e [ g ] g4 ) r | r8 g ( b [ d ] c b a g ) |
    c2 g | a e | f fs | g4 4 r2 ||

    r8 b ( d [ g, ] f2 ) | r8 e ( c [ e ] g e c' g ) | r8 a ( d [ c ] ) b4 4 | c8 c ( b a ) g ( f e d ) |
    c8 ( d e c ) g'2 ( | f8 )( g a d,  f2 ~ ) | 8 ( d f af g4 ) f | e2 r || 
}

leconsProgressivesTwelveTop = \relative c'' { 
    \key c \major
    \time 4/4
    r8 c ( g [ c ] ) r d ( g, [ d' ] ) | r e ( c [ e ] ) g4 r | 
    r8 d ( g, [ d' ] ) r e ( g, [ e' ] ) | r f-^ ( c [ f-^ ] ) b,4 r | 
    r8 e ( g [ e ] ) r d ( g [ d ] ) | r c ( e [ g, ] ) r e' ( g [ c, ] ) | 
    r8 d ( cs [ e ] d g d b ) | g2 r |
    \bar ":|][|:" 

    r8 g' ( a [ g ] ) g4 ( b,  | c8 ) b ( c e  g4 ) r | 
    r8 f-^ ( d [ g ] f-^ d e f ) | e2 r | 
    r8 e ( g [ e ] ) r c ( e [ c ] ) | r a ( d [ a ] ) r d ( f-^ [ d ] ) |
    r8 g, ( a [ g ] c b e d ) | c2 r |
    \bar ":|]"
}
leconsProgressivesTwelveBottom = \relative c' { 
    \key c \major
    \time 4/4
    e8 r r4 b8 r r4 | c8 r r4 e8 r c r |  
    b8 r r4 c8 r r4 | g'8 r r4 g8 r g r |  
    c,8 r r4 b8 r r4 | c8 r r4 c8 r r4 |  
    b8 r r4 b8 r b r | b2 r ||  

    f'8 r r4 r8 f ( g [ f ] ) | e r r4 r8 g ( c, [ e ] ) |
    d4 r d b | r8 c ( e [ g ] c g b g ) | 
    c8 r r4 a8 r r4 | f8 r r4 f8 r r4 | 
    g8 r r4 r8 d ( g [ f ] ) | e2 r | 
}

leconsProgressivesThirteenTop = \relative c'' { 
    \key c \major
    \time 4/4
    r4 c-. r d-. | r e-. g-. r | r d-. r e-. | r d-. g,-. r | 
    r4 e'-. r d-. | r c-. r e-. | r d r d | g,2 r ||
    \bar ":|][|:" \break

    r4 g' r b, | r c r c | r f r g | r e r e | 
    r4 e r c | r a r d | r c r b | c2 r ||
    \bar ":|]"
}
leconsProgressivesThirteenBottom = \relative c' { 
    \key c \major
    \time 4/4
    c4-. e-. g-. b,-. | c-. g'-. e-. c-. | b-. g'-. c,-. g'-. | g-. g-. b,-. g'-. |
    c,4-. g'-. b,-. g'-. | a-. e-. a-. c-. | b-. g-. a-. fs-. | b,-. g'-. g-. r ||

    g4 b g f | e e c e | d b' b, d' | c, c' c, g' |
    c,4 g' a e | f d f a | g d g f | e2 r |
}


leconsProgressivesFourteenTop = \relative c'' { 
    \key c \major
    \time 4/4
    r4 \tuplet 3/2 { c8 ( g c ) } r4 \tuplet 3/2 { d8 ( g, d' ) } |
    r4 \tuplet 3/2 { e8 ( c e ) } r4 g |

    r4 \tuplet 3/2 { d8 ( g, d' ) } r4 \tuplet 3/2 { e8 ( g, e' ) } |
    r4 \tuplet 3/2 { f8-^ ( d f-^ ) } r4 b,4 |

    r4 \tuplet 3/2 { e8 ( g e ) } r4 \tuplet 3/2 { d8 ( f-^ d ) } | \break
    r4 \tuplet 3/2 { c8 ( e c ) } r4 \tuplet 3/2 { e8 ( g e ) } |

    r4 \tuplet 3/2 { d8 ( e d ) } r4 \tuplet 3/2 { d8 ( e d ) } |
    g,2 r 
    \bar ":|][|:" 

    r4 \tuplet 3/2 { g'8 ( a g ) } r4 \tuplet 3/2 { b,8 ( c b ) } |
    r4 \tuplet 3/2 { c8 ( d c ) } r4 \tuplet 3/2 { c8 ( d c ) } |

    r4 \tuplet 3/2 { f8 ( g f ) } r4 \tuplet 3/2 { g8 ( d g ) } | \break
    r4 \tuplet 3/2 { e8 ( f e ) } r4 \tuplet 3/2 { e8 ( f e ) } |

    r4 \tuplet 3/2 { e8 ( g e ) } r4 \tuplet 3/2 { c8 ( e c ) } |
    r4 \tuplet 3/2 { a8 ( f a ) } r4 \tuplet 3/2 { d8 ( f d ) } |

    r4 \tuplet 3/2 { b8 ( d b ) } r4 \tuplet 3/2 { g8 ( b g ) } |
    c2 r
    \bar ":|]"
}
leconsProgressivesFourteenBottom = \relative c' { 
    \key c \major
    \time 4/4
    e4 r b r | c g' e c | b r c r | b g' f d | 
    c4 r g' r | e r c r | d r c r | b2 r | 

    b4 r f' r | e r c r | d r b r | c r c' r | 
    c,4 r e r | f r f r | g r f r | e2 r |
}


leconsProgressivesFifteenTop = \relative c'' { 
    \key c \major
    \time 4/4
    c8 4-> b8-> ~ 8 d4-> c8-> ~ | 8 e4 d8 ~ 8 c4 b8-! |
    d8-! 4-> cs8 ~ 8 e4 d8 ~ | 8 f4-> e8 ~ 8 d4 ds8-! | \break
    e8 g4 e8 d f4-^ d8 | \noBreak c e4-> c8 e g,4 e'8 | \noBreak 
    d8 c4 d8 ~ 8 c4 a8 | \noBreak g8 4-> 8 4-> r | \noBreak
    \bar ":|][|:" 

    g'8 f4-^ d8 ~ 8 c4 b8-! | d-! c4 g8 ~ 8 c4 e8-! | \break
    f8-^ d4 f8 ~ 8 g4 f8 | e2 r | 
    e8-! g,4 e'8-! c-! c,4 c'8-! | a f4-> a8-> ~ 8 e'4-> d8 ~ | 
    d8 a4 g8 ~ 8 a4 b8 | c-! c,4 c'8-! c,4 r |
    \bar ":|]"
}
leconsProgressivesFifteenBottom = \relative c' { 
    \key c \major
    \time 4/4
    c8 r e r d r f r | e r c r b r c r | 
    b8 r f' r e r g r | f r d r b r g' r | 
    c,8 r e r g r gs r | a r a r c r c, r | 
    fs8 r d r fs r d r | g r g r g4 r | 

    g8 r b, r d r g r | e r g r e r c r | 
    b8 r d r g r b r | c r c r g r e r | 
    c8 r c r a' r a r | f r f r f r f r | 
    g8 r b, r d r f r | e r e r e4 r | 
}

leconsProgressivesSixteenTop = \relative c'' { 
    \key c \major
    \time 4/4
    
    c,4-.\f c'-. d,-. d'-. | e,-. e'-. r2 | d,4 d' e, e' | f, f' r2 |
    e,4 e' d, d' | c, c' e, e' | d,4 d'2 d,4 | g g' r2 |
    \bar ":|][|:" \break

    g4 g, b' b, | c' c, r2 | f,4 f' g, g' | e e, r2 | 
    e4 e' g c, | f, a' c f,, | g f' d g, | c c' r2 |
    \bar ":|]"
}
leconsProgressivesSixteenBottom = \relative c' { 
    \key c \major
    \time 4/4
    r4 e r g | r c-. c,-. c' | r b r c | r d-. g,-. b-. |
    r4 c r b | r a r g | r fs d c | b g' r2 |

    r4 b r g | r c, e g | r a r b | r c c, c' |
    r4 c r e, | r f f d | r d r f | e c r2 |
}

leconsProgressivesSeventeenTop = \relative c'' { 
    \key c \major
    \time 3/4

    c2 d4 | e r r | d2 e4 | f r r | 
    e2*1/2 s4\> d4 | c2*1/2\! s4\> e4 | d2\! fs,4 | g r r |  
    \bar ":|][|:" 

    g'2 b,4 | c r r | f2 g4 | e r r |
    e2 c4 | a2 d4 | b2. | c4 r r |    
    \bar ":|]"
}
leconsProgressivesSeventeenBottom = \relative c' { 
    \key c \major
    \time 3/4
    e4 g b, | c e g | b g c | d b g | 
    c4 c b | a a g | fs d c | b g' r |

    r4 g ( f ) | e g c | b a b | c c c | 
    r4 a c, | r f f | r8 g ( b, [ d ] g [ f ] ) | e4 r r |
}