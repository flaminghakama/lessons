titleLeft = "Mos Eisley"
titleRight = "Cantina"
title = "Mos Eisley Cantina"
composerName = "J. Williams"
lyricistName = ""

\include "../../../../scores/flaming-libs/flaming-paper.ily"
\include "../../../../scores/flaming-libs/flaming-markup.ily"
\include "../../../../scores/flaming-libs/flaming-chords.ily"
\include "../../../../scores/flaming-libs/flaming-dynamics.ily"

themeAForEb = \relative c'' { 
    \key b \minor
    \time 4/4

    fs4 b fs b | fs8 b4 fs8 ~ 8 es fs4 | fs8 e fs e  r cs e ef | d4. b8 ~ 4 r | 

    fs'4 b fs b | fs8 b4 fs8 ~ 8 es fs4 | e4 4 ~ 8 ds8 e4 | a8 g r fs r e4. |

    fs4 b fs b  | fs8 b4 fs8 ~ 8 es fs4 | a4 4 ~ 8 fs8 e4 | d4. b8 ~ 4 r | 

    b2 \grace { c16 ( cs } d2 ) \grace { e16 ( es } | fs2 ) \grace { g16 ( gs }  a2 ) | 
    c4 b es,8 fs4 d8 ~ | 2 r |
}

themeBForEb = \relative c'' { 
    r8 fs r d fs4 r | r8 fs r d fs4 r | r8 fs r d es fs r d ~ | 4. b8 ~ 4 r | 
    r8 fs' r d fs4 r | r8 fs r d fs4 r | r8 fs r d es fs r e ~ | 4. a8 ~ 4 r | 
    r8 fs r d fs4 r | r8 fs r d fs4 r | r8 fs r d es fs r d ~ | 4. b8 ~ 4 r |
    g8 b d4 gs,8 b d4 | es8 fs r b ~ 4 r | b,8 d fs b es, fs r d ~ | 2 r | 
}


{ 
    \themeAForEb
    \themeBForEb
}