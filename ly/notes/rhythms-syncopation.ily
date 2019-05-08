
aMinorRhythmsSyncopation = \relative c'' {
    \key a \minor
    a4 a' e8 c4. | r8 e,4 c'8 a2 | 
    r8 e4 c'8 e, c'4. | \break a8 8 r c8 4 a'4 |
    r8 g r g r e4. | r8 c r c a2 \bar "||"
}
fMajorRhythmsSyncopation = \relative c' {
    \key f \major
    f8 f g g a8 4 8 | bf8 a4 bf8 c2 | 
    r8 d8 c [ d ] r4 f4 | \break r8 f8 f, [ f' ] r d r d | 
    r8 bf a [ bf ] r g f4 | r8 c'' r c r a f4 \bar "||"
}
cMinorRhythmsSyncopation = \relative c'' {
    \key c \minor
    c4 d ef8 b4. ~ | 8 c4 d8 ef4 b8 g' ~ | 
    4 f ef d8 c ~ | \break 4. g8 c g af g |
    fs8 g4 af8 g8 ef4. | r8 d4. c8 8 r c \bar "||" 
}
dMinorRhythmsSyncopation = \relative c'' {
    \key d \minor 
    d4 r8 a8 d4 r8 a8 | bf a f4 r8 d r4 | 
    r8 d' r d, f4 r8 d'8 | \break r a cs4 r8 a bf4 | 
    a8 f' d4 r8 a4 f'8 ~ | 8 d4 bf8 ~ 8 a cs d \bar "||"
}
bMinorRhythmsSyncopation = \relative c' {
    \key b \minor 
    \tuplet 3/2 { fs8 b d } fs4 r \tuplet 3/2 { fs,8 b d } |
    g4 r \tuplet 3/2 { b,8 d fs } b4 |

    r8 as4. \tuplet 3/2 { g8 e cs } as4 |  \break
    r8 b r b r b, r b | 

    r b'' g4 fs8 d4 cs8 | 
    b4 r r8 fs8 b4 \bar "||"
}
dMajorRhythmsSyncopation = \relative c'' {
    \key d \major 
    r2 r8 cs8 r4 | d8 fs, r4 r8 fs' a,4 |
    r8 d r4 r a | \break r8 a' fs4 r r8 cs | 
    d4 r8 cs r e r a | r4 r8 fs e d r d \bar "||"
}
    
