
twoFiveOneMajorChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d2:m7 g:7 | c1 |
    d2:m7 g:7 | c1 |
}
twoFiveOneMajorChordsTwo = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d1:m7 | g:7 | c1:6 | s |
    d1:m7 | g:7 | c1:6 | s |
}
twoFiveOneMajorChordsSix = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    d2:m7 g:7 | c1:6 |
    d2:m7 g:7 | c1:6 |
}

twoFiveOneMajorOne = \relative c' {
    \key c \major
    \relative c' { 
        d8 f a c  g b d f | c e g a c2 | 
    }
    \relative c''' { 
        d8 c a f  g f d b | c a g e c2 | 
        \bar "||"
    }
}
twoFiveOneMajorTwo = \relative c' {
    \key c \major
    \relative c' { 
        \tuplet 3/2 4 { d8 f a  c d f  g f d  b g f  | e c e  g e g } c2 | 
    }
    \relative c''' { 
        \tuplet 3/2 4 { d8 c a  f d c  g b d  f g b  | c g e  c g e } c2 | 
        \bar "||"
    }
}
twoFiveOneMajorThree = \relative c' {
    \key c \major
    \relative c' { 
        d8 f a c  b g f d | c e g e c2 | 
        f8 a c d  f d b g | c g e g c2 | \break 
        a8 c d f  g f d b | c e g, a c2 | 
        c8 d f a  b g f d | c e g a c2 | \break
    }
    \relative c''' { 
        d8 c a f  d f g b | c a g e c2 | 
        c'8 a f d  b d f g | c e, g a c2 | \break
        a8 f d c  b d f g | e c g e c2 |  
        f'8 d c a  g b d f | g e c g c'2
        \bar "||"
    }
}
twoFiveOneMajorFour = \relative c' {
    \key c \major
    \relative c' { 
        \tuplet 3/2 4 { 
            d8 c d  f d f  a f a  c a c | 
            g8 f g  b g b  d b d  f d f |
            c8 a c  e c e  g e g  a g a | } 
        c1 | \break
    }
    \relative c''' { 
        \tuplet 3/2 4 { 
            d8 f d  c d c  a c a  f a f | 
            g8 b g  f g f  d f d  b d b |
            c8 e c  a c a  g a g  e g e | }
        c1 
        \bar "||"
    }
}



twoFiveOneMajorOneVersionTwo = \relative c' {
    \key c \major
    \relative c' { 
        d8 f a c  g b d f | c, e g a c2 | 
    }
    \relative c'' { 
        d8 c a f  g f d b | c' a g e c2 | 
        \bar "||"
    }
}
twoFiveOneMajorOneVersionThree = \relative c {
    \key c \major
    \relative c { 
        d8 f a c  g b d f | c e g a c2 | 
    }
    \relative c'' { 
        d8 c a f  g f d b | c' a g e c2 | 
        \bar "||"
    }
}
twoFiveOneMajorTwoVersionTwo = \relative c' {
    \key c \major
    \relative c' { 
        \tuplet 3/2 4 { d8 f a  c d f  g f d  b g f  | e c e  g e g } c2 | 
    }
    \relative c'' { 
        \tuplet 3/2 4 { d8 c a  f d c  g b d  f g b  | c g' e  c g e } c2 | 
        \bar "||"
    }
}
twoFiveOneMajorThreeVersionTwo = \relative c' {
    \key c \major
    \relative c' { 
        d8 f a c  b g f d | c e g e c2 | 
        f8 a c d  f d b g | c g e g c2  | \break
        a,8 c d f  g f d b | c e g a c2 |
        c,8 d f a  b g f d | c a' g e c2 | \break
    }
    \relative c'' { 
        d8 c a f  d f g b | c a c e c2  | 
        c8 a f d  b d f g | c a g e c2 | \break
        a'8 f d c  b d f g | e' c g e c2 |  
        f'8 d c a  g b d f | g e c g c,2
        \bar "||"
    }
}
twoFiveOneMajorFourVersionTwo = \relative c' {
    \key c \major
    \relative c' { 
        \tuplet 3/2 4 { 
            d8 c d  f d f  a f a  c a c | 
            g8 f g  b g b  d b d  f d f|
            c,8 a c  e c e  g e g  a g a | } 
        c1 | \break
    }
    \relative c'' { 
        \tuplet 3/2 4 { 
            d8 f d  c d c  a c a  f a f | 
            g8 b g  f g f  d f d  b d b  |
            c'8 e c  a c a  g a g  e g e  | } 
        c1 
        \bar "||"
    }
}


twoFiveOneMajorThreeVersionThree = \relative c' {
    \key c \major
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


twoFiveOneMajorFourVersionThree = \relative c' {
    \key c \major
    \relative c' { 
        \tuplet 3/2 4 { 
            d8 c d  f d f  a f a  c a c | 
            g8 f g  b g b  d b d  f d f|
            c8 a c  e c e  g e g  a g a | } 
        c1 | \break
    }
    \relative c'' { 
        \tuplet 3/2 4 { 
            d8 f d  c d c  a c a  f a f | 
            g'8 b g  f g f  d f d  b d b  |
            c8 e c  a c a  g a g  e g e  | } 
        c1 
        \bar "||"
    }
}

twoFiveOneMajorFourVersionFour = \relative c' {
    \key c \major
    \relative c' { 
        \tuplet 3/2 4 { 
            d8 c d  f d f  a f a  c a c | 
            g8 f g  b g b  d b d  f d f|
            c8 a c  e c e  g e g  a g a | } 
        c1 | \break
    }
    \relative c'' { 
        \tuplet 3/2 4 { 
            d8 f d  c d c  a c a  f a f | 
            g'8 b g  f g f  d f d  b d b  |
            c8 e c  a c a  g a g  e g e  | } 
        c1 
        \bar "||"
    }
}

twoFiveOneMajorFourVersionFive = \relative c' {
    \key c \major
    \relative c' { 
        \tuplet 3/2 4 { 
            d8 c d  f d f  a f a  c a c | 
            g,8 f g  b g b  d b d  f d f|
            c8 a c  e c e  g e g  a g a | } 
        c1 | \break
    }
    \relative c'' { 
        \tuplet 3/2 4 { 
            d8 f d  c d c  a c a  f a f | 
            g8 b g  f g f  d f d  b d b  |
            c'8 e c  a c a  g a g  e g e  | } 
        c1 
        \bar "||"
    }
}
