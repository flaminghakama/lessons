
twoFiveOneMinorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d2:m7.5- g:7 | c1:m |
    d2:m7.5- g:7 | c1:m |
}
twoFiveOneMinorSevenChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d2:m7.5- g:7 | c1:m7 |
    d2:m7.5- g:7 | c1:m7 |
}
twoFiveOneMinorChordsTwo = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:m7.5- | g:7 | c1:m7.7+ | s |
    d1:m7.5- | g:7 | c1:m7.7+ | s |
}
twoFiveOneMinorChordsMajorSeven = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d2:m7.5- g:7 | c1:m7.7+ |
    d2:m7.5- g:7 | c1:m7.7+ |
}

twoFiveOneMinorOneNotes = \relative c' {
    \relative c' { 
        d8 f af c  g b d f | c ef g b c2 | 
    }
    \relative c''' { 
        d8 c af f  g f d b | c b g ef c2 | 
    }
}
twoFiveOneMinorOne = \relative c' {
    \key c \minor
    \twoFiveOneMinorOneNotes
    \bar "||"
}
twoFiveOneMinorTwoNotes = \relative c' {
    \relative c' { 
        \tuplet 3/2 4 { d8 f af  c d f  g f d  b g f  | ef c ef  g ef g } c2 | 
    }
    \relative c''' { 
        \tuplet 3/2 4 { d8 c af  f d c  g b d  f g b  | c g ef  c g ef } c2 | 
    }
}
twoFiveOneMinorTwo = \relative c' {
    \key c \minor
    \twoFiveOneMinorTwoNotes 
    \bar "||"
}
twoFiveOneMinorThreeNotes = \relative c' {
    \relative c' { 
        d8 f af c  b g f d | c ef g ef c2 | 
        f8 af c d  f d b g | c g ef g c2  | \break
        af8 c d f  g f d b | c ef g, b c2 |
        c8 d f af  b g f d | c ef g b c2 | \break
    }
    \relative c''' { 
        d8 c af f  d f g b | c b g ef c2 | 
        c'8 af f d  b d f g | c ef, g b c2 | \break
        af8 f d c  b d f g | ef c g ef c2 |  
        f'8 d c af  g b d f | g ef c g c'2
    }
}
twoFiveOneMinorThree = \relative c' {
    \key c \minor
    \twoFiveOneMinorThreeNotes 
    \bar "||"
}
twoFiveOneMinorFourNotes = \relative c' {
    \relative c' { 
        \tuplet 3/2 4 { 
            d8 c d  f d f  af f af  c af c | 
            g8 f g  b g b  d b d  f d f |
            c8 b c  ef c ef  g ef g  b g b | } 
        c1 | \break
    }
    \relative c''' { 
        \tuplet 3/2 4 { 
            d8 f d  c d c  af c af  f af f | 
            g8 b g  f g f  d f d  b d b |
            c8 ef c  b c b  g b g  ef g ef | }
        c1 
    }
}
twoFiveOneMinorFour = \relative c' {
    \key c \minor
    \twoFiveOneMinorFourNotes 
    \bar "||"
}


twoFiveOneMinorOneVersionTwo = \relative c' {
    \key c \minor
    \relative c' { 
        d8 f af c  g b d f | c, ef g b c2 | 
    }
    \relative c'' { 
        d8 c af f  g f d b | c' b g ef c2 | 
        \bar "||"
    }
}
twoFiveOneMinorOneVersionThree = \relative c {
    \key c \minor
    \relative c { 
        d8 f af c  g b d f | c ef g b c2 | 
    }
    \relative c'' { 
        d8 c af f  g f d b | c' b g ef c2 | 
        \bar "||"
    }
}
twoFiveOneMinorTwoVersionTwo = \relative c' {
    \key c \minor
    \relative c' { 
        \tuplet 3/2 4 { d8 f af  c d f  g f d  b g f  | ef c ef  g ef g } c2 | 
    }
    \relative c'' { 
        \tuplet 3/2 4 { d8 c af  f d c  g b d  f g b  | c g' ef  c g ef } c2 | 
        \bar "||"
    }
}
twoFiveOneMinorThreeVersionTwo = \relative c' {
    \key c \minor
    \relative c' { 
        d8 f af c  b g f d | c ef g ef c2 | 
        f8 af c d  f d b g | c g ef g c2 | \break
        af,8 c d f  g f d b | c ef g b c2  |
        c,8 d f af  b g f d | c ef c b c2 | \break
    }
    \relative c'' { 
        d8 c af f  d f g b | c b c ef c2 | 
        c8 af f d  b d f g | c b g ef c2 | \break
        af'8 f d c  b d f g | ef' c g ef c2 |  
        f'8 d c af  g b d f | g ef c g c2
        \bar "||"
    }
}
twoFiveOneMinorFourVersionTwo = \relative c' {
    \key c \minor
    \relative c' { 
        \tuplet 3/2 4 { 
            d8 c d  f d f  af f af  c af c | 
            g8 f g  b g b  d b d  f d f|
            c,8 b c  ef c ef  g ef g  b g b | } 
        c1 | \break
    }
    \relative c'' { 
        \tuplet 3/2 4 { 
            d8 f d  c d c  af c af  f af f | 
            g8 b g  f g f  d f d  b d b  |
            c'8 ef c  b c b  g b g  ef g ef  | } 
        c1 
        \bar "||"
    }
}


twoFiveOneMinorThreeVersionThree = \relative c' {
    \key c \minor
    \relative c' { 
        d8 f a c  b g f d | c1 | 
        f,8 a c d  f d b g | c1 | 
        a8 c d f  g f d b | c1 | \break
        c8 d f a  b g f d | c1 |
    }
    \relative c'' { 
        d8 c a f  d f g b | c1 | 
        c8 a f d  b d f g | c1 | \break
        a8 f d c  b d f g | e' c g e c2 |  
        f'8 d c a  g b d f | g e c g c,2
        \bar "||"
    }
}
twoFiveOneMinorThreeVersionFour = \relative c' {
    \key c \minor
    \relative c' { 
        d8 f af c  b g f d | c ef g ef c2 | 
        f8 af c d  f d b g | c g ef g c2 | \break
        af8 c d f  g f d b | c ef g b c2  |
        c,8 d f af  b g f d | c ef c b c2 | \break
    }
    \relative c'' { 
        d8 c af f  d f g b | c b c ef c2 | 
        c8 af f d  b d f g | c b g ef c2 | \break
        af'8 f d c  b d f g | ef' c g ef c2 |  
        f'8 d c af  g b d f | g ef c g c2
        \bar "||"
    }
}


twoFiveOneMinorFourVersionThreeNotes = \relative c' {
    \relative c' { 
        \tuplet 3/2 4 { 
            d8 c d  f d f  af f af  c af c | 
            g8 f g  b g b  d b d  f d f|
            c8 b c  ef c ef  g ef g  b g b | } 
        c1 | \break
    }
    \relative c'' { 
        \tuplet 3/2 4 { 
            d8 f d  c d c  af c af  f af f | 
            g'8 b g  f g f  d f d  b d b  |
            c8 ef c  b c b  g b g  ef g ef  | } 
        c1 
    }
}
twoFiveOneMinorFourVersionThree = \relative c' {
    \key c \minor
    \twoFiveOneMinorFourVersionThreeNotes 
    \bar "||"
}

twoFiveOneMinorFourVersionFour = \relative c' {
    \key c \minor
    \relative c' { 
        \tuplet 3/2 4 { 
            d8 c d  f d f  af f af  c af c | 
            g8 f g  b g b  d b d  f d f|
            c8 b c  ef c ef  g ef g  b g b | } 
        c1 | \break
    }
    \relative c'' { 
        \tuplet 3/2 4 { 
            d8 f d  c d c  af c af  f af f | 
            g'8 b g  f g f  d f d  b d b  |
            c8 ef c  b c b  g b g  ef g ef  | } 
        c1 
        \bar "||"
    }
}

twoFiveOneMinorFourVersionFive = \relative c' {
    \key c \minor
    \relative c' { 
        \tuplet 3/2 4 { 
            d8 c d  f d f  af f af  c af c | 
            g,8 f g  b g b  d b d  f d f|
            c8 b c  ef c ef  g ef g  b g b | } 
        c1 | \break
    }
    \relative c'' { 
        \tuplet 3/2 4 { 
            d8 f d  c d c  af c af  f af f | 
            g8 b g  f g f  d f d  b d b  |
            c'8 ef c  b c b  g b g  ef g ef  | } 
        c1 
        \bar "||"
    }
}
