
approachNoteChords = \chordmode { 
    \set chordChanges = ##f
    \set chordNameExceptions = #flamingChordExceptions
    \set noChordSymbol = ##f
    g1:maj7
}
scaleSingleChromaticAscendingCommon = \relative c' {
    \key g \major
    \time 4/4 
    \relative c'' {
        g8 fs e d  e fs g gs 
        a8 g fs e  fs g a as 
        b8 a g fs  g a bf b
        c8 b a g   a b c cs 

        d8 c b a  b c d ds 
        e8 d c b  c d e es 
        fs8 e d c  d e f fs 
        g2. r4 \break
    }
    \relative c''' { 
        g8 fs e d  c d e es 
        fs8 e d c  b c d ds 
        e8 d c b  a b c cs 
        d8 c b a  g a bf b 

        c8 b a g  fs g a as 
        b8 a g fs  e fs g gs
        a8 g fs e  d e f fs 
    }
}
scaleSingleChromaticAscendingFlats = \relative c' {
    \key g \major
    \time 4/4 
    \relative c'' {
        g8 fs e d  e fs g gs 
        a8 g fs e  fs g a as 
        b8 a g fs  g a as b
        c8 b a g   a b c cs 

        d8 c b a  b c d ef 
        e8 d c b  c d e es 
        fs8 e d c  d e es fs 
        g2. r4 \break
    }
    \relative c''' { 
        g8 fs e d  c d e es 
        fs8 e d c  b c d ds 
        e8 d c b  a b c cs 
        d8 c b a  g a as b 

        c8 b a g  fs g a as 
        b8 a g fs  e fs g gs
        a8 g fs e  d e es fs 
    }
}

scaleSingleChromaticAscendingOne = \relative c' {
    \scaleSingleChromaticAscendingCommon
    \relative c'' {
        \tuplet 3/2 2 { g4 b d g d b } 
        g1
    }
    \bar "||"
}
scaleSingleChromaticAscendingTwo = \relative c' {
    \scaleSingleChromaticAscendingFlats
    \relative c'' {
        \tuplet 3/2 2 { g4 b d g d b } 
        g1
    }
    \bar "||"
}

scaleSingleChromaticDescendingCommon = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e f  g f e ef
        d8 e f g  a g f ds
        e8 f g a  b a g gf
        f8 g a b  c b a af
        g8 a b c  d c b bf
        a8 b c d  e d c as
        b8 c d e  f e d df
        c2. r4 \break
    }
    \relative c'' { 
        c8 d e f  e d c as 
        b8 c d e  d c b bf
        a8 b c d  c b a af
        g8 a b c  b a g gf

        f8 g a b  a g f ds
        e8 f g a  g f e ef
        d8 e f g  f e d df 
    }
}

scaleSingleChromaticDescendingCommonSharps = \relative c' {
    \key c \major
    \time 4/4 
    \relative c' {
        c8 d e f  g f e ef
        d8 e f g  a g f ef
        e8 f g a  b a g gf
        f8 g a b  c b a af
        g8 a b c  d c b bf
        a8 b c d  e d c bf
        b8 c d e  f e d df
        c2. r4 \break
    }
    \relative c'' { 
        c8 d e f  e d c bf 
        b8 c d e  d c b bf
        a8 b c d  c b a af
        g8 a b c  b a g gf

        f8 g a b  a g f ef
        e8 f g a  g f e ef
        d8 e f g  f e d df 
    }
}

scaleSingleChromaticDescendingOne = \relative c' {
    \scaleSingleChromaticDescendingCommon
    \relative c' {
        \tuplet 3/2 2 { c4 c'' a  g e c  b g e } c2 
    }
    \bar "||"
}

scaleSingleChromaticDescendingTwo = \relative c' {
    \scaleSingleChromaticDescendingCommon
    \relative c' {
        \tuplet 3/2 2 { c4 e, g  c e g } c1 
    }
    \bar "||"
}

scaleSingleChromaticDescendingThree = \relative c' {
    \scaleSingleChromaticDescendingCommonSharps
    \relative c' {
        \tuplet 3/2 2 { c4 e, g  c e g } c1 
    }
    \bar "||"
}

