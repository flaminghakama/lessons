\version "2.24.0"

#(ly:set-option 'relative-includes #t)

titleLeft = "Invention"
titleRight = "4."
titleFull = "Invention 4."
instrumentName = ""
composerName = "Johann Sebastian Bach (1685-1750)"
copyright = \markup { \tiny "public domain" }
arranger = "arranged by Elaine Alt"

\header {
  enteredby =   "Allen Garvin"
  maintainerEmail = "AGarvin@tribalddb.com"
  title =   "Invention 4"
  opus =    "BWV 775"
  style =   "Baroque"
  source =  "Bach-Gesellschaft"

  mutopiainstrument = "Harpsichord, Piano"
  mutopiatitle =      "Invention 4"
  mutopiacomposer =   "BachJS"
  mutopiaopus =       "BWV 775"
}

\include "../engraving/flaming-libs/flaming-standard.ily"
% #(set-default-paper-size "legal" 'landscape)

voiceone =  \relative c' {
    \accidentalStyle modern-cautionary
    \key d \minor
    \time 3/8

    % m1
    d16 e f g a bes | 
    cis, bes' a g f e | 
    f8 a d | 
    g, cis e | 

    % m5
    d16 e f g a bes | 
    cis, bes' a g f e | 
    f d e f g a | 
    bes, a' g f e d | 
    e c d e f g | 
    a, g' f e d c | 
    d e f d e f | 

    % m12
    g,8 r r | 
    c16 d e c d e | 
    f,8 r \tieUp bes ~ | 
    bes \tieNeutral a g | 
    c16 bes a g f e | 
    f g g8. f16 | 
    f8 c' c | 

    % m19
    c4.\prall ~ | 
    c ~ | 
    c ~ | 
    c16 bes a g f e | 

    % m23
    c' d, e fis g a | 
    bes a g f e d | 
    bes' c, d e f g | 
    a b c d e f | 
    gis, f' e d c b | 
    c b d c b a | 

    % m29
    gis a gis fis e d | 
    c d e fis gis a | 
    d, c' b a gis fis | 
    e fis gis a b c | 

    % m33
    fis, e' d c b a | 
    gis a b c d e | 
    a, f' e d c b | 
    a' gis fis e a8 ~ | 
    a16 d, b8. a16 | 
    a8. a16 bes c | 

    % m39
    d,8 fis a | 
    bes16 g a bes c d | 
    e, d' c bes a g | 
    a8 f'16 e f8 | 

    % m43
    g, e' r | 
    d16 e f g a bes | 
    cis, bes' a g f e | 

    % m46
    f8 d g, ~ | 
    g16 d' cis e a, cis | 
    d b cis8. d16 | 
    d c! bes! a g f | 
    bes cis, d e f g | 
    a d f,8 e16 d | 
    d4.\fermata \bar "|." 
}


voiceoneThreeFour =  \relative c' {
    \accidentalStyle modern-cautionary
    \key d \minor
    \time 3/4

    % m1
    d8 e f g a bes | 
    cis, bes' a g f e | 
    f4 a d | 
    g, cis e | 

    % m5
    d8 e f g a bes | 
    cis, bes' a g f e | 
    f d e f g a | 
    bes, a' g f e d | 
    e c d e f g | 
    a, g' f e d c | 
    d e f d e f | 

    % m12
    g,4 r r | 
    c8 d e c d e | 
    f,4 r \tieUp bes ~ | 
    bes \tieNeutral a g | 
    c8 bes a g f e | 
    f g g4. f8 | 
    f4 c' c | 

    % m19
    c2.\prall ~ | 
    c ~ | 
    c ~ | 
    c8 bes a g f e | 

    % m23
    c' d, e fis g a | 
    bes a g f e d | 
    bes' c, d e f g | 
    a b c d e f | 
    gis, f' e d c b | 
    c b d c b a | 

    % m29
    gis a gis fis e d | 
    c d e fis gis a | 
    d, c' b a gis fis | 
    e fis gis a b c | 

    % m33
    fis, e' d c b a | 
    gis a b c d e | 
    a, f' e d c b | 
    a' gis fis e a4 ~ | 
    a8 d, b4. a8 | 
    a4. a8 bes c | 

    % m39
    d,4 fis a | 
    bes8 g a bes c d | 
    e, d' c bes a g | 
    a4 f'8 e f4 | 

    % m43
    g, e' r | 
    d8 e f g a bes | 
    cis, bes' a g f e | 

    % m46
    f4 d g, ~ | 
    g8 d' cis e a, cis | 
    d b cis4. d8 | 
    d c! bes! a g f | 
    bes cis, d e f g | 
    a d f,4 e8 d | 
    d2.\fermata \bar "|." 
}


  
voicetwo =  \relative c {
    \accidentalStyle modern-cautionary
    \key d \minor
    \time 3/8

    % m1
    R4. | 
    R4. | 
    d16 e f g a bes | 
    cis, bes' a g f e | 
    
    % m5
    f8 a d | 
    e, g cis | 
    d, d' f, | 
    g a bes | 
    c, c' e, | 
    f g a | 
    bes16 g a bes c d | 
    
    % m12
    e, d' c bes a g | 
    a f g a bes c | 
    d, c' bes a g f | 
    e c d e f g |        
    a, g' f e d c | 
    d bes c8 c, |        
    f16 g a bes c d | 
    
    % m19
    e, d' c bes a g | 
    a bes c d e f | 
    g, f' e d c bes | 
    a bes c a bes c | 

    % m23
    fis,8 r r |
    g16 a bes g a bes | 
    e,8 r r |  
    f8 f' d |
    b gis e |
    a16 gis a b c d | 

    % m29
    e4.\prall ~ | 
    e ~ | 
    e ~ | 
    e ~ | 
    e ~ | 

    % m33
    e8 e' d |
    c b a | 
    d e f | 
    d e e, |
    a16 a, bes! c d ees | 
    fis, ees' d c bes a | 
    

    % m39
    g8. g16 a bes | 
    c,8 g' c | 
    f16 g a b cis d  |

    % m42
    e, d' cis b a g | 
    f8 a d |
    e, g cis |

    % m45 
    d,16 e f g a bes 
    cis, bes' a g f e | 
    f g a8 a, | 
    bes8. c16 bes a | 
    g bes' a g f e | 
    f g a8 a, | 
    d,4.\fermata \bar "|."                    
}

voicetwoForClarinet =  \relative c {
    \accidentalStyle modern-cautionary
    \key d \minor
    \time 3/8

    % m1
    R4. | 
    R4. | 
    d16 e f g a bes | 
    cis, bes' a g f e | 
    
    % m5
    f8 a d | 
    e, g cis | 
    d, d' f, | 
    g a bes | 
    c, c' e, | 
    f g a | 
    bes16 g a bes c d | 
    
    % m12
    e, d' c bes a g | 
    a f g a bes c | 
    d, c' bes a g f | 
    e c d e f g |        
    a, g' f e d c | 
    d bes c8 c' |        
    f,16 g, a bes c d | 
    
    % m19
    e d c bes a g | 
    a bes c d e f | 
    g, f' e d c bes | 
    a bes c a bes c | 

    % m23
    fis8 r r |
    g,16 a bes g a bes | 
    e8 r r |  
    f8 f' d |
    b gis e |
    a,16 gis a b c d | 

    % m29
    e4.\prall ~ | 
    e ~ | 
    e ~ | 
    e ~ | 
    e ~ | 

    % m33
    e8 e d |
    c b a | 
    d e f | 
    d e e' |
    a,16 a, bes! c d ees | 
    fis ees d c bes a | 
    

    % m39
    g8. g16 a bes | 
    c8 g c | 
    f16 g a b cis d  |

    % m42
    e, d' cis b a g | 
    f8 a d |
    e, g cis |

    % m45 
    d,16 e f g a bes 
    cis, bes' a g f e | 
    f g a8 a, | 
    bes8. c16 bes a | 
    g bes' a g f e | 
    f g a8 a, | 
    d4.\fermata \bar "|."                    
}

voicetwoForClarinetThreeFour =  \relative c {
    \accidentalStyle modern-cautionary
    \key d \minor
    \time 3/4

    % m1
    R2. | 
    R2. | 
    d8 e f g a bes | 
    cis, bes' a g f e | 
    
    % m5
    f4 a d | 
    e, g cis | 
    d, d' f, | 
    g a bes | 
    c, c' e, | 
    f g a | 
    bes8 g a bes c d | 
    
    % m12
    e, d' c bes a g | 
    a f g a bes c | 
    d, c' bes a g f | 
    e c d e f g |        
    a, g' f e d c | 
    d bes c4 c' |        
    f,8 g, a bes c d | 
    
    % m19
    e d c bes a g | 
    a bes c d e f | 
    g, f' e d c bes | 
    a bes c a bes c | 

    % m23
    fis4 r r |
    g,8 a bes g a bes | 
    e4 r r |  
    f4 f' d |
    b gis e |
    a,8 gis a b c d | 

    % m29
    e2.\prall ~ | 
    e ~ | 
    e ~ | 
    e ~ | 
    e ~ | 

    % m33
    e4 e d |
    c b a | 
    d e f | 
    d e e' |
    a,8 a, bes! c d ees | 
    fis ees d c bes a | 
    

    % m39
    g4. g8 a bes | 
    c4 g c | 
    f8 g a b cis d  |

    % m42
    e, d' cis b a g | 
    f4 a d |
    e, g cis |

    % m45 
    d,8 e f g a bes 
    cis, bes' a g f e | 
    f g a4 a, | 
    bes4. c8 bes a | 
    g bes' a g f e | 
    f g a4 a, | 
    d2.\fermata \bar "|."                    
}

\book {
    \bookOutputSuffix "piano"
    \score {
       \context GrandStaff << 
        \context Staff = "one" <<
          \voiceone
        >>
        \context Staff = "two" <<
          \clef "bass"
          \voicetwo
        >>
      >>
      \layout{ }
    }
}

\book {

    \bookOutputSuffix "for-violin-clarinet"

    \score {
     
        \transpose d a, << 
            \context Staff = "one" \with { instrumentName = "Violin" } <<
                \voiceone
            >>
            \context Staff = "two" \with { instrumentName = "Bb Clarinet" } <<
                \transpose bes,, c \voicetwoForClarinet
            >>
        >>
        \layout{ 
            indent = 3\cm
            short-indent = 0.5\cm
        }
      
    }
}
\book {

    \bookOutputSuffix "for-violin-clarinet-in-three-four"

    \score {
     
        \transpose d a, << 
            \context Staff = "one" \with { instrumentName = "Violin" } <<
                \voiceoneThreeFour
            >>
            \context Staff = "two" \with { instrumentName = "Bb Clarinet" } <<
                \transpose bes,, c \voicetwoForClarinetThreeFour
            >>
        >>
        \layout{ 
            indent = 3\cm
            short-indent = 0.5\cm
        }
      
    }
}